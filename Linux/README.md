
<em><h1 align=center> Flutter Automation Script </h1></em>

<p align=center>
A script for automating the tasks of creating and uploading a flutter project to github.
<br/>
Made with Batch Scripts and Python❤
<br/>
<br/>
<img alt="License" src="https://img.shields.io/github/license/Tushar-OP/The_Food_Story?logo=github&style=for-the-badge&labelColor=blackcolor=brightgreen" />
<img alt="Contribution" src="https://img.shields.io/static/v1?style=for-the-badge&logo=github&labelColor=black&label=CONTRIBUTION&message=WELCOME&color=brightgreen" />
<br/>
<img alt="Twitter" src="https://img.shields.io/twitter/follow/Tushar_OP?style=for-the-badge&color=09f&labelColor=black&logo=twitter&label=@Tushar_OP" />
<br/>
<br/>
<br/>
Here it is, the Linux version of the Script!
<br/>
A big shout to <a href="https://github.com/Singh-Shivani">Shivani Singh</a> for letting me borrow her system for developing and testing the script!<br/> 
   Do check her Github profile and follow.
</p>

## What does it do?
<br/>

- Creates a flutter project
- Uploades it to your github
- Finally, opens with either Android studio or VSCode the choice is yours.

## How to use?
<br/>

1. Pre-requisite<br/>
   - Check if python is installed<br/>
   - Check if git is installed<br/>
   - Check if flutter is in .bashrc, so that we can create a project from terminal, if not follow this:<br/>
     - Find where you installed flutter, copy the path.<br/>
     - Go to your .bashrc file, you can find it in home directory.<br/>
     - Go to end and type(remember to put yor path instead of PATH_TO_FLUTTER_GIT_DIRECTORY)<br/>
       ```
       export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"
       ```
   - Install PyGithub by using ```pip install PyGithub``` or run pre-requisite.sh

2. Move the upload.py & create.sh to a location you'll not change or modify, like in home, under a folder(e.g /home/(your username)/scripts/) <br/>
   - Structure will be like
     - home -> (your folder name) -> (upload.py and create.sh)
      
3. Fill in the _ _ _ _ _: <sub>(hint: blanks XD)</sub>
```
  -> You need to make changes in 3 files
  
    1. upload.py
        - Add your github username and password in line number 11
        - If you have not done default installation of android studio, i.e you have installed it in a different 
        directory then head over to line number 34 and change it to the path to your directory where you'll find 
        studio.sh file.(usually it's android-studio/bin/studio.sh)
        
    2. create.sh
        - The default location for project creation is desktop, if you wish to change it so that you don't have 
        to give custom path everytime go to line number 43, and paste your desired location inside the double quotes, 
        do not touch anything else.
        - Also the default application to open the project is Android Studio, if you wish to change that too then go 
        to line number 38 and change "as" to "code"
        
    3. .bashrc
       - Add the given function to the end and change the location to the scripts
       
       function create() {
            cd /home/{your user name}/scripts && ./create.sh "$@" && exit
        }
```
If you find it useful, please star it!

Any feedback is welcome

Cheers!✨

