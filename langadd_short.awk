BEGIN{
	LangInFile = "N"
		while((getline<"C:/sources/reactos/translate.config") != 0){
		if(substr($0,1,11) == "shortfile: "){
			if (index(FILENAME,"En.rc") != 1){
			outfilename = substr(FILENAME,1,index(FILENAME,"En.rc")) + substr($0,12)
		}else{
			outfilename = substr($0,12)
		}
	}
		}
	
}
{
	if (LangInFile != "Y")
	{
		if (substr($0,1) == langdef)
		{
			LangInFile = "Y"
		}else {
			if (substr($0,1,15) == "#ifdef LANGUAGE")
			{
				print langdef>>"tempfile.rc"
				print "    #include \42lang/" + outfilename + "\42">>"tempfile.rc"
				print "#endif">>"tempfile.rc"
				LangInFile = "Y"
			}
		}
	}
	print $0>>"tempfile.rc"
}