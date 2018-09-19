BEGIN	{		
	#Save original filename
	ofn = FILENAME
	#switch to wordlist.txt
	FS = "|"	
	while((getline<"C:/sources/reactos/wordlist.txt") != 0){
		wordlist[$1] = $2
	}		

	#specify the seperator
	#english in the first column, afrikaans in the second
}
{	
	FS = " "
	#set back to original filename
	FILENAME = ofn
	OFS = " "
	#add the file path to the output file

	if (NR == 1){
		#overwrite af-ZA.rc
		print "LANGUAGE LANG_AFRIKAANS,SUBLANG_DEFAULT">"af-ZA.rc"
	}else{
		stest = $0
		if (index(stest,"\42") != 0)
		{
			#position of first quotation
			sstart = index(stest,"\42")
			#additional characters until second quotation
			send = index(substr(stest,sstart + 1),"\42")
			#look up word/phrase that starts after the first quote and ends before the second quote
			if (wordlist[substr(stest,sstart+1,(send - 1))] != "")
			{
				slookup = "\42" wordlist[substr(stest,sstart+1,(send - 1))]
			#if a lookup value was not found
			}else{
				#if there is no translation found for the field string
				slookup = substr(stest,sstart,send)
				#if the string is 2 or more characters
				if (length(slookup) >= 3){
					#write the string to missing.txt
					print substr(slookup, 2) "|">>"C://sources//reactos//missing.txt"
				}
			}
			sout = substr(stest,1,sstart - 1) slookup substr(stest,sstart + send)
			print sout>>"af-ZA.rc"
		}else{
			#Append to af-ZA.rc			
			print $0>>"af-ZA.rc"
		}		
	}

}
END{
}