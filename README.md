# Git_Demo_Project

## What's here:

- **lib** - support jar files needed to build and test the project
- **src** - sample Java source code and corresponding JUnit tests
- **build.xml** - Java ant version 4 build file
- **upload.bat** - script to upload the test results
- **README.md** - this readme file

## How to use this project:

- create or find an existing task or user story in the working project
- clone the repository using the Git-GUI or Git-Bash (locally or on the Cloud Portal Image both work)
- make any valid change to the source code. Some suggestions:
- add or remove a comment
    - remove the failing test case
    - "fix" the failing test case
    - commit the change to the master branch locally (optionally, you can include the task or user story id from step 1)
    - push the change to the main repository

Jenkins will observe the change within one minute and start the build job. The build job will:
        
- clone the repository's current / updated state
- clean any previous build artifacts in the workspace
- compile the source code
- compile and execute the included JUnit test cases
- package the program into a .jar file
- zip the test case results
- upload the zipped test case results to Codebeamer

You can show the following results in the Codebeamer GUI:

- Test cases are created or updated
- Test cases are linked to JUnit results
- The chosen Task or User Story can be traced to the source code commit

Enjoy!!
Thu Dec 19 11:45:59 EST 2024 - Added line to https://pp-1903220424pz.portal.ptc.io:9443/cb/git/Codebeamer_Overview_Demo_Repo/README.md for 12345

Thu Dec 19 10:50:58 CST 2024 - Added line to https://pp-1903220424pz.portal.ptc.io:9443/cb/git/Codebeamer_Overview_Demo_Repo/README.md for 8882

Thu Dec 19 10:51:44 CST 2024 - Added line to https://pp-1903220424pz.portal.ptc.io:9443/cb/git/Codebeamer_Overview_Demo_Repo/README.md for 8932

Thu Dec 19 11:31:40 CST 2024 - Added line to https://pp-1903220424pz.portal.ptc.io:9443/cb/git/Codebeamer_Overview_Demo_Repo/README.md for 8932

Fri Mar  7 09:49:42 CST 2025 - Added line to https://pp-1903220424pz.portal.ptc.io:9443/cb/git/Codebeamer_Overview_Demo_Repo/README.md for 8932

Fri Mar  7 10:16:34 CST 2025 - Added line to https://pp-1903220424pz.portal.ptc.io:9443/cb/git/Codebeamer_Overview_Demo_Repo/README.md for 8932

Fri Mar  7 11:30:10 CST 2025 - Added line to https://pp-1903220424pz.portal.ptc.io:9443/cb/git/Codebeamer_Overview_Demo_Repo/README.md for 8932
