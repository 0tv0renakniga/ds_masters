## Environment Setup
#### make venv for project
1. create virtual environment for project
- `python3 -m venv` my_venv
2. activate your virtual environment
- `source my_venv/bin/activate`
- note: to deactivate virtual environment 
    - `deactivate`
#### install extra libraries for project
1. install python libraries via pip
- `pip install`  my_cool_python_lib
2. once done save environment dependencies 
- `pip freeze > requirements.txt`
- note: to install dependencies given requirements.txt
    - `pip install -r /{PATH_TO}/requirements.txt`
#### add venv to vs code
1. search for python interpreters 
- `ctrl+shift+p`
- search python interpreters
- select *Python: Select Interpreter* 
- select *Enter interpreter path..*
    - enter absolute path to virtual environment python
        - ex: */home/usr/my_venv/bin/python3*
#### [markdown pro-tips](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)