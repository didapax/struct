@echo off
set /p project_name="Introduce el nombre de tu proyecto: "

echo Creando estructura para: %project_name%
mkdir %project_name%
cd %project_name%

:: Crear estructura de carpetas
mkdir bin config public\assets\css public\assets\js public\assets\img src\Controllers src\Models src\Services src\Utils templates tests

:: Crear archivos base
echo. > public\index.php
echo. > .env
echo. > .gitignore
echo # %project_name% > README.md

:: Crear un archivo composer.json basico
(
echo {
echo     "name": "mi-proyecto/%project_name%",
echo     "description": "Proyecto PHP",
echo     "autoload": {
echo         "psr-4": {
echo             "App\\": "src/"
echo         }
echo     },
echo     "require": {}
echo }
) > composer.json

:: Configurar .gitignore basico
(
echo /vendor/
echo .env
) > .gitignore

echo ---------------------------------------
echo Estructura creada con exito.
echo ¡No olvides ejecutar 'composer install' si tienes Composer instalado!
pause