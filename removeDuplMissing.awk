BEGIN{
	FS = "|"
}
{
	if (Translation[$1] != 1)
		{
			print $0>>"Missing1.txt"
			Translation[$1] = 1
		}	
}