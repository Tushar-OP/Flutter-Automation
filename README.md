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
I have seen a lot of scripts for Linux and Mac but not for Windows, so here it is!
</p>

<p align=center><b>🎥In Action:</b><br><br><img src="script.gif"/></p>


What does it do?
<br>
- Creates a flutter project
- Uploades it to your github
- Finally, opens with either Android studio or VSCode the choice is yours.

How to use?
```
> git clone https://github.com/Tushar-OP/Flutter-Automation

> run pre-requisite.bat or Install the dependencies in pre-requisite.txt

> Open upload.py with your editor of choice, and add your github username and password, save it.
(NOTE: If you have android studio located not in the defaut location, you need to change that too in the python file)

> Move your folder to some location that you'll not change or delete, for e.g I keep mine 
in C:\ (top-level, not within any folders)

> Add the path to batch script to the environment variables, follow this; search for 'system' -> Advance System settings ->
Environment Variable -> Under system variable double click PATH -> New -> 
Paste the location to your batch script(for e.g C:\Flutter-Automation\Windows)

> Done, it's ready for use!

> Usage: create [project_name] [/ide (as: Android Studio or code: VSCode)] [/path custom_path_to_create_project]
> e.g create new_proj /ide as /path C:\users\tushar\Desktop\Flutter Projects


> EXTRAS

> Default location is desktop and default IDE is Android Studio, you can change this too,
open create.bat for editing, <br> head to line 52, change SET ide="as" to SET ide="code" 
and change SET pt="C:\Users\%USERNAME%\Desktop\" to whatever location you want.
```

I will be creating the same for Linux and Mac.

If you find it useful, please star it!

Any feedback is welcome

Cheers!✨
