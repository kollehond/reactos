BEGIN{
	LangInFile = "N"
}
{
	if (LangInFile != "Y")
	{
		if (substr($0,1) == "#ifdef LANGUAGE_AF_ZA")
		{
			LangInFile = "Y"
		}else {
			if (substr($0,1,15) == "#ifdef LANGUAGE")
			{
				print "#ifdef LANGUAGE_AF_ZA">>"tempfile.rc"
				print "    #include \42lang/af-ZA.rc\42">>"tempfile.rc"
				print "#endif">>"tempfile.rc"
				LangInFile = "Y"
			}
		}
	}
	print $0>>"tempfile.rc"
}