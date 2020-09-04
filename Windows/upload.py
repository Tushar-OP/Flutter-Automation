import sys
import os
from github import Github

foldername = str(sys.argv[1])
path = str(sys.argv[2])
ide = str(sys.argv[3]).lower()

g = Github("username", "password")
user = g.get_user()
login = user.login
repo = user.create_repo(foldername)

commands = [f'echo "# {repo.name}" >> README.md',
            'git init',
            f'git remote add origin https://github.com/{login}/{foldername}.git',
            'git add .',
            'git commit -m "Initial commit"',
            'git push -u origin master']

try:
    os.chdir(path)

    for c in commands:
        os.system(c)

    print('Uploaded Successfully!')

    if ide == '' or ide == 'as':
        os.system(
            f'start "" "C:/Program Files/Android/Android Studio/bin/studio64.exe" {path}')
    else:
        os.system('code .')

except:
    print('Can\'t upload, something happened')
