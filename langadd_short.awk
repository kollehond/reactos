BEGIN{
	LangInFile = "N"	
}
{
	if(NR == 1){
		print FILENAME
		while((getline<"C:/sources/reactos/translate.config") != 0){
			if(substr($0,1,15) == "#ifdef LANGUAGE"){
				langdef = $0
			}
			if(substr($0,1,8) == "LANGUAGE"){
				langheader = $0
			}else{ 
				if(substr($0,1,11) == "shortfile: "){
					#if (index(FILENAME,"En.rc") != 1){
						#outfilename = substr(FILENAME,1,index(FILENAME,"En.rc") - 1) substr($0,12)
				#	}else{
						outfilename = substr($0,12)
					#}
					print outfilename
				}
			}
		}
	}
	LangFileInclude = "    #include \42lang/" outfilename "\42"
	if (LangInFile != "Y")
	{
		if (substr($0,1) == langdef)
		{
			LangInFile = "Y"
		}else {
			if (substr($0,1,15) == "#ifdef LANGUAGE")
			{
				print langdef>>"tempfile.rc"
				print LangFileInclude>>"tempfile.rc"
				print "#endif">>"tempfile.rc"
				LangInFile = "Y"
			}
		}
	}
	print $0>>"tempfile.rc"
}