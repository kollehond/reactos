Translate.bat
Written by Janno Brits 2018

Legal
	Free, so do with it as you please.
	No need for recognition in full or partial copies.
	The original author is not liable for any damages resulting from this software/code, or any part thereof.

About
	The traslate.bat file is still in beta, so it does not support all files that need translations yet.
	It is also important to note, that the default target is Afrikaans (af-ZA), so when modifying it for other translations, at least one function relies on the translation being the first specified in the resource .rc files.

Requirements:
	AWK or GAWK installed, and awk.exe should be in a folder specified by your path (command line)

Files Needed:
	langadd.awk
		This awk program relates to the translation specification in a program's .rc file
		It looks for the first line that includes "#ifdef LANGUAGE".  If that line's full value is not "#ifdef LANGUAGE_AF_ZA", it will put the three needed lines in to specify the location of the language file.
		usage: awk -f langadd.awk rsrc.rc
		
	removeDuplMissing.awk
		This is a simple program to just remove duplicate records from the missing.txt output file at the end
		usage: awk -f removeDuplMissing.awk missing.txt
		
	wordlist.txt	
		This is the list of translations
		It is written in the format <english value>|<translated value>
		Don't leave any translations blank (rather leave them out), as it will be written as a blank value
		Any translations not yet in this file, gets written to missing.txt, where you can just add the translation and copy the line to this file.
		The order of the translations don't matter (it does not have to be alphabetical)
		Don't leave any blank lines
		Make sure to save the file in UTF-8 format
		
	translate2.awk
		This is the program that does the most complex work.  
		It reads the content of wordlist.txt into a searchible array, with each english value (as a string, instead of a number in the array) being set to its translated value.
		For the specified input file, it replaces line 1 of the file with "LANGUAGE LANG_AFRIKAANS,SUBLANG_DEFAULT".
		Then, on the rest of the lines, it starts looking for quotation marks (").
		It reads the value between two quotation marks in a line, then looks it up in the wordlist array.
		If there is a translation, it writes the translation to the output.
		If not, it writes the original value to the output and also writes the value that needs translation to missing.txt with a pipe (|) already attached.
		It will not write values of less than two characters to missing.txt
		standard input is en-US.rc and standard output is af-ZA.rc
		Usage: awk -f translate2.awk en-US.rc
	
	Translate.bat
		This is the file that you run.
		It has everything specified under c:/sources/reactos/ so if your source code is not there, you need to run a find and replace.
		It does one translation at a time in the following order:
			1) Go to the directory of the .rc file
			2) Run langadd.awk on the .rc file
			3) delete the old .rc file
			4) rename the generated .rc file to the correct name
			5) Go to subdirectory "lang"
			6) run translate2.awk on en-US.rc
		This is currently only done for all the source files where the translation file is specifically named "en-US.rc"
		All directories that have a "lang" subdirectory can be found in the seperate file "directorylist_for_bat_file.txt"
		I used excel to concatinate strings for the .bat file, and I have marked the ones that are incorrect in red, in the file "Lang_files_bat.xlsx"
		The last thing the .bat file does is run the removeDuplMissing.awk on missing.txt, then just replace missing.txt with the updated version.
		
Other Files:
	missing.txt
		Gets generated on run, contains values that still need translation
		*NOTE* Delete this file before running Translate.bat, otherwise the old values will remain.
	
	directorylist_for_bat_file.txt
		My original compiled list of "lang" directories in the ReactOS source code.
		"en-US.rc" was added to the end of each line, but is not relevant anymore.
		This list might be missing one or two entries, as well as any new entries resulting from source code updates.
	
	Lang_files_bat.xlsx
		This is a file where "directorylist_for_bat_file.txt" gets combined in sequence with all the other commands for the .bat file.
		I have also marked items that are currently excluded because of their naming in red, for reference
		All lines marked as yellow have been corrected, and work properly in the .bat file

How to use Translate.bat:
	1) Open wordlist.txt and missing.txt (if missing.txt is not available, go to step 7)
	2) Add the translation directly after the pipe (|) for something in missing.txt
	3) Cut/copy the row (that now has a translation) to anywhere in wordlist.txt
	4) Do this for any number of rows
	5) Save wordlist.txt
	6) Delete missing.txt
	7) Run Translate.bat
	8) Repeat from step 1

TODO
	Things I still need to address (no guarantee that any of them will ever be done):
	- In- and Output for files not named in the normal en-US.rc convention
	- Translation of multi-line strings
	- Translating multiple values between quotes in the same row
	- Better way to check if a language has already been specified in a .rc file
	- Easier way to change the input and output languages
	
Contact:
	I probably won't respond, but you can send me(kolle_hond) a pm on the ReactOS.org forum, or email me at kolle.hond@gmail.com if you have any questions
