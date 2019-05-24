git checkout --track -b Dev origin/Dev
if %errorlevel% neq 128 exit /b %errorlevel%
git checkout Dev
if %errorlevel% neq 0 exit /b %errorlevel%
git checkout --track -b QA origin/QA
if %errorlevel% neq 128 exit /b %errorlevel%
git checkout QA 
if %errorlevel% neq 0 exit /b %errorlevel%
git merge Dev
if %errorlevel% neq 0 exit /b %errorlevel%
git push origin QA