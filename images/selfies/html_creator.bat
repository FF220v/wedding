@echo off
setlocal enabledelayedexpansion

set output_file=gallery_code.txt
set image_folder=images/selfies/
set count=1

echo Генерация HTML-кода для изображений... > %output_file%
echo. >> %output_file%

for %%f in (*.jpg *.jpeg *.png *.gif *.webp) do (
    echo ^<div class="gallery animate-box"^> >> %output_file%
    echo     ^<a class="gallery-img image-popup image-popup" href="%image_folder%!count!.jpg"^>^<img src="%image_folder%!count!.jpg" class="img-responsive"^>^</a^> >> %output_file%
    echo ^</div^> >> %output_file%
    echo. >> %output_file%
    set /a count+=1
)

echo Готово! Код сохранен в файл %output_file%
echo Всего обработано %count% файлов.
pause