# JPetStore_tests
This repository contains automatic tests with Python Robotframework

# How to run it

## Windows users

1. Download and install python:

  https://www.python.org

2. Add python to your PATH:

      Right-clicking This PC and going to Properties.

      Clicking on the Advanced system settings in the menu on the left.

      Clicking on the Environment Variables button on the bottom right.

      In the System variables section, selecting the Path variable and clicking on Edit. The next screen will show all the directories that are currently a part of the PATH variable.

      Clicking on New and entering Python’s install directory.

3. Open command prompt as administrator and type:

      pip3 install robotframework

      pip3 install robotframework-seleniumlibrary

4. Download Selenium Browserdriver for the browsers. Use specify Selenium drivers version to your browser version:

      https://pypi.org/project/selenium/

5. Unzip and add Selenium Browserdriver to you PATH:

      Same steps as with add python to your PATH, choose selenium webridvers folder as PATH
      
6. Best way to run tests is open my project on pycharm and using Terminal type:

      robot -d {PATH_TO_RESULTS} {PATH_TO_TEST.robot}
     
      For example:
      
      robot -d /Results/Search/Correct_search_by_name_everything Tests/Search/Correct_search_by_name_everything.robot

## Linux users

1. APT udpate and install python

      sudo apt-get update

      sudo apt-get install python3.6
  
2. Install robotframework and selenium
  
      pip install robotframework

      pip install -U selenium
  
3. Download specify webdrivers for specify webbrowser version

      For example:

      Geckodrivers for firefox:

      https://github.com/mozilla/geckodriver/releases

      Copy the extracted file ‘geckodriver’ to /usr/bin:

      sudo cp path_to_geckdriver /usr/bin


# Results

  Each test contains a testrail test case, screenshots, log and report files.

