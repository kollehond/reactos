BEGIN	{		
	#Save original filename
	print FILENAME
	ofn=FILENAME
	#switch to wordlist.txt
	FS = "|"	
	while((getline<"C:/sources/reactos/wordlist.txt") != 0){
		wordlist[$1] = $2
	}		
		
	#specify the seperator
	#english in the first column, afrikaans in the second
}
{	
	if(NR == 1){
	while((getline<"C:/sources/reactos/translate.config") != 0){
		if(substr($0,1,8) == "LANGUAGE"){
			langheader = $0
		}else{ 
			if(substr($0,1,11) == "shortfile: "){
				if (index(FILENAME,"En.rc") != 1){
					outfilename = substr(FILENAME,1,index(FILENAME,"En.rc") - 1) substr($0,12)
				}else{
					outfilename = substr($0,12)
				}
				print outfilename

			}
		}
	}
}
	FS = " "
	#set back to original filename
	OFS = " "
	#add the file path to the output file
	FILENAME = ofn
	
	if (substr($0,1,14) == "LANGUAGE LANG_"){
		#overwrite Af.rc
		print langheader>outfilename
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
			print sout>>outfilename
		}else{
			#Append to af-ZA.rc			
			if (outfilename != ""){
			print $0>>outfilename
			}
		}		
	}

}
END{
}