# Python and Robotframework installation

This guide assumes you have already installed the IDE of your choice. Preferably either Visual Studio Code or Pycharm, but

there are other options as well. This guide has been written with Visual Studio Code in mind, meaning there might be some

different extensions or commands when using a different IDE.

 

# Check the version of Python and create a virtual environment

(when talking about a terminal it usually doesn't matter if it's a Powershell or CMD terminal.

 Just in case, use the Powershell)

 

    1.  Open a terminal and execute command "Py --version". Make sure python is at least version 3.9, preferably the newest version.

        If you need to upgrade, download the installer from https://www.python.org/downloads/windows/

        Delete the old installation either with Chocolaty or by deleting the Python files from your %APPDATA% directory

 

    2.  To make sure we don't polute our main python installation, we make use of a virtual environment. This links our packages

        to this repository specifically. Use command:

        "python -m venv venv"

 

        This creates a new directory in the repository named "venv". This is where the scripts and libraries will be stored.

        Activate the environment with ".\venv\scripts\activate"

        Verify the activation with "pip -V". This should show the repository directory and not the main "Program Files" directory.

        Example:

                (venv) PS C:\Playground\Repositories\Regressiontest_RF> pip -V

                pip 22.3.1 from C:\Playground\Repositories\Regressiontest_RF\venv\lib\site-packages\pip (python 3.9)

       

        For the rest of this readme it is assumed that the virtual environment is ACTIVE.

 

# Setup your IDE for RobotFrameWork

    1.  Open your IDE of your choice and open a new terminal session

    2.  Run command "pip install robotframework" to install the latest version of RobotFrameWork.

        Verify the installation by running the command "robot --version"

        Example:

                (venv) PS C:\Playground\Repositories\Regressiontest_RF> robot --version

                Robot Framework 6.0.2 (Python 3.9.13 on win32)

 

    3.  In the IDE itself, install the extensions "Python" and "Robot Framework Language Server"

    4.  Verify that RobotFramework is working correctly by creating a new file called "test.robot",

        paste the following code into it and run the test:

 

*** Test Cases ***

This is my testcase

    log  hello world

 

    If the file "test.robot" already exists, it does not need to be recreated.

 

    1.  After execution a "log.html" should be created. Open this file in a browser and verify the result.

 

# Installing dependencies

For this project it is needed to have "Node.JS" and the RF browser library to be installed.

Extra information https://robotframework-browser.org/#installation

 

    1.  Install "Node.JS" by downloading and installing the latest LTS version from https://nodejs.org/en/download/

    2.  Install the other dependencies by executing command "pip install -r Requirements.txt"

    3.  Run the command "rfbrowser init" to initialise the browser library for use