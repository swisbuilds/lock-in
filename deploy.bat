@echo off
echo Setting up Lock In landing page on GitHub...
echo.

git init
git add .
git commit -m "Launch Lock In landing page"
git branch -M main
git remote add origin https://github.com/swisbuilds/lock-in.git
git push -u origin main

echo.
echo Done! Visit https://github.com/swisbuilds/lock-in
echo Then go to Settings -> Pages -> main branch to enable GitHub Pages.
echo Your site will be live at https://swisbuilds.github.io/lock-in
pause
