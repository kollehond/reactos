Translate.bat
Written by Janno Brits 2018-2019

Legal
	Free, so do with it as you please.
	No need for recognition in full or partial copies.
	The original author is not liable for any damages resulting from this software/code, or any part thereof.

About
	The translate.bat file is still in beta, so it does not support all files that need translations yet.
	It is also important to note, that the default target is Afrikaans (af-ZA), so when modifying it for other translations, at least one function relies on the translation being the first specified in the resource .rc files.

Updates
	27/03/2019:
	The program is more complex now, in order to handle non-standard named .rc files
	most (if not all) translation files in the source code that end with .rc are now processed (no support for .h yet) - this still depends on the hard-coded list

Requirements:
	AWK or GAWK installed, and awk.exe should be in a folder specified by your path (command line)

Files Needed to run:
	langadd.awk
		This awk program relates to the translation specification in a program's .rc file
		It looks for the first line that includes "#ifdef LANGUAGE".  If that line's full value is not "#ifdef LANGUAGE_AF_ZA", it will put the three needed lines in to specify the location of the language file.
		usage: awk -f langadd.awk rsrc.rc
		
	langadd_short.awk
		TODO: document this file
	
	translate.config
		This has 4 lines that are used to create the specific translation (this is to make other translations than afrikaans possible)
		line1: The replacement header for en-US.rc style files
		line2: "file: " and the name that will replace "en-US.rc"
		line3: The replacement line for defining the language for the specific module
		line4: "shortfile: " and the translation language replacement for "En.rc"
	
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
		It reads the content of wordlist.txt into a searchible array, with each english value (as a string, instead of a number in the array) being set to its translated value.
		For the specified input file, it replaces line 1 of the file with "LANGUAGE LANG_AFRIKAANS,SUBLANG_DEFAULT".
		Then, on the rest of the lines, it starts looking for quotation marks (").
		It reads the value between two quotation marks in a line, then looks it up in the wordlist array.
		If there is a translation, it writes the translation to the output.
		If not, it writes the original value to the output and also writes the value that needs translation to missing.txt with a pipe (|) already attached.
		It will not write values of less than two characters to missing.txt
		standard input is en-US.rc and standard output is af-ZA.rc
		Usage: awk -f translate2.awk en-US.rc
	
	translate3.awk
		like translate2.awk but for differently named files
		TODO: document this file
	
	Translate.bat
		This is the file that you run.
		It has everything specified under c:/sources/reactos/ so if your source code is not there, you need to run a find and replace.
		It does one translation at a time in the following order:
			1) Go to the directory of the .rc file
			For translations with standard naming "en-US.rc"
			:lang_add <file 1> <file 2>
				2) Run langadd.awk on <file 2>
				3) delete <file 2>
				4) rename tempfile.rc to the former <file 2> name
				5) Go to subdirectory "lang"
				6) run translate2.awk on <file 1>
			For translations not named "en-US.rc"
			**Note that the file names are reversed compared to the process for "en-US.rc" files
			:lang_add_short <file 1> <file 2>
				2) Go to subdirectory "lang"
				3) run translate3.awk on <file 2>
				4) move temp.name to the parent directory
				5) Go to parent directory
				6) Run langadd_short.awk on <file 1>
				7) Delete <file 1>
				8) Delete temp.name
				9) Rename tempfile.rc to the former <file 1> name
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
	6) Run Translate.bat
	7) Repeat from step 1

TODO
	Things I still need to address (no guarantee that any of them will ever be done):
	- In- and Output for files not named in the normal en-US.rc convention
	- Translation of multi-line strings
	- Translating multiple values between quotes in the same row
	- Better way to check if a language has already been specified in a .rc file
	- Easier way to change the input and output languages
	
Contact:
	I probably won't respond, but you can send me(kolle_hond) a pm on the ReactOS.org forum, or email me at kolle.hond@gmail.com if you have any questions
