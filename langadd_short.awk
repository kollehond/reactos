BEGIN{
	LangInFile = "N"	
}
{
	templine = $0
	if(NR == 1){
		while((getline<"C:/sources/reactos/translate.config") != 0){
			if(substr($0,1,15) == "#ifdef LANGUAGE"){
				langdef = $0
			}
			if(substr($0,1,8) == "LANGUAGE"){
				langheader = $0
			}
		}
		while((getline<"temp.name") != 0){	
			outfilename = $0
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
	print templine>>"tempfile.rc"
}