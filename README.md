# morsecode
International Morse Code console - sound generator

This is a simple Morse code app that beeps the Morse code after you enter the text. The app is a bash script with Zenity GUI, and it depends on Sox and Zenity. It works on Ubuntu and is very simple and fun tool for learning Morse code. You can easily edit beep speed, pause, and tone in the script.

Installation

To install the Morse code app, follow these steps:

    Install Sox and Zenity by running the following command in the terminal:

    sudo apt-get install sox zenity

Download the morse.sh script from this repository.
Make the script executable by running the following command in the terminal:

chmod +x morse.sh

Usage

To use the Morse code app, follow these steps:

    Click on the script file, or navigate to the directory in terminal where the morse.sh script is located.
    Run the script by typing the following command in the terminal:

    ./morse_code_app.sh

    The Zenity GUI will appear. Enter the text that you want to convert to Morse code in the text field.
    Click the "OK" button to convert the text to Morse code.
    The Morse code will be played as a series of beeps. You can adjust the beep speed, pause, and tone by editing the script and changing these values:

    #Tone configuration:
    short=0.08   #in seconds
    long=0.18  #in seconds
    tune=880   #in Hertzs
    pause=0.5   #between characters, in seconds


License

This Morse code app is licensed under the MIT License.

Acknowledgments

Thank you to the following resources for their help in creating this Morse code app:

    SOX Documentation
    Zenity Documentation
    Bash Guide for Beginners

Feel free to contribute to this project by submitting pull requests or issues.
