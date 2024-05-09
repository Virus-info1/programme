set /a compteur=0
:1
if not !compteur! == 2 (
  set /a compteur=%compteur%+1
  cd C:/000
  git init
  git lfs install
  git pull origin main --allow-unrelated-histories
  git lfs track "VI/*"
  git add .
  git commit -m "Add VI folder with large files using Git LFS"
  git remote add origin https://github.com/Virus-info1/programme.git
  git branch -M main
  git pull origin main --allow-unrelated-histories
  git merge origin/main --allow-unrelated-histories
  git push -u origin main
 goto 1
) else (
pause
exit

)