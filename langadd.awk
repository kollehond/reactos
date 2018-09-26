BEGIN{
	LangInFile = "N"
		while((getline<"C:/sources/reactos/translate.config") != 0){
		if(substr($0,1,6) == "file: "){
			outfilename = substr($0,7)
		}else if(substr($0,1,15) == "#ifdef LANGUAGE"){
		langdef = $0
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