@echo off
setlocal enabledelayedexpansion

set count=1

for %%f in (*.jpg) do (
    if not "%%f"=="%~nx0" (
        ren "%%f" "!count!%%~xf"
        set /a count+=1
    )
)

echo Готово! Переименовано %count% файлов.
pause
