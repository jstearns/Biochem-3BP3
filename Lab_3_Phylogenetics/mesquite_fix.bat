@echo off
rem The goal of this script is to correct a Mesquite bug
rem Specific directories are not found when running ClustalW
rem Script takes user input for the temp filename (ex. temp##########)
rem Directories are checked using %dir%\. and created if missing

set /p tempdir="Provide name of missing temporary file (ex. temp01354a497313): "

if not exist "%USERPROFILE%\Mesquite_Support_Files\." ( 
	echo "Creating '%USERPROFILE%\Mesquite_Support_Files'"
	mkdir "%USERPROFILE%\Mesquite_Support_Files"
	)

if not exist "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\." ( 
	echo "Creating '%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs'"
	mkdir "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs"
	)

if not exist "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp\." ( 
	echo "Creating '%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp'"
	mkdir "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp"
	)

if not exist "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp\%tempdir%\." ( 
	echo "Creating '%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp\%tempdir%'"
	mkdir "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp\%tempdir%"
	)

if not exist "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp\%tempdir%\ClustalAlign\." ( 
	echo "Creating '%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp\%tempdir%\ClustalAlign'"
	mkdir "%USERPROFILE%\Mesquite_Support_Files\Mesquite_Prefs\temp\%tempdir%\ClustalAlign"
	)
	
echo "All directories found/created!"