@echo off
setlocal enabledelayedexpansion

:: Obtém o nome de usuário da máquina
for /f "tokens=*" %%a in ('whoami') do set "USERNAME=%%a"

:: Define o diretório da pasta padrão com base no nome de usuário
set "default_folder=C:\Users\%USERNAME%"\

:: Cria e ativa um ambiente virtual (virtualenv) para Python
python -m venv venv
call venv\Scripts\activate

:: Instala as dependências do projeto a partir do arquivo requirements.txt
pip install -r requirements.txt

:: Exibe mensagem de conclusão
echo Ambiente virtual Python criado e ativado em "%default_folder%\project_temp\venv"

::Abre vscode
code .

::exit
exit /b 0
