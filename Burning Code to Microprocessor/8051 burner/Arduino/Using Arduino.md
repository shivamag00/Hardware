# ARDUINO UNO METHOD
### References
1. https://www.youtube.com/watch?v=8255_CHE5gE&t=97s
## Requirements
### Software
  1. Arduino IDE
  2. KeilUVision5
### Hardware
  1. AT89S52 IC
  2. Jumper Wires
  3. Breadboard
  4. 11.0592 Mhz Crystal Oscillator
  5. 2 * 22pF Capacitors
  6. Cable to  upload code to Arduino
  
## Method

Let's see how to burn the code using Arduino Uno
1. **_Download the setup of Arduino IDE_** from the official website. It is recommended to download the **windows installer setup** simply because we used it. We are not sure but other setups may create problem.
2. **_Install the Arduino IDE._**


3. **_Download and install KeilMicroVision5_** from the official website.
4. Now **_open KeilUVision5_**. The following window should appear.
![Image of Keil](https://user-images.githubusercontent.com/44562091/76737207-607c5780-678e-11ea-8756-a140b23c7959.JPG)


5. **_Click on Project->New Project. Save your project_**. A new window will open which looks like this.
![Image of Keil](https://user-images.githubusercontent.com/56953327/76738737-30828380-6791-11ea-84ed-0cb562d894fa.PNG)


6. In the search box, **type _AT89S52_ to select the chip.**
![Image of Keil](https://user-images.githubusercontent.com/56953327/76738995-9cfd8280-6791-11ea-8025-4998527ffce4.PNG)


7. **_Click OK_**. Following window appears. 
![Image of Keil](https://user-images.githubusercontent.com/56953327/76739010-a2f36380-6791-11ea-9241-4a57b680dee5.PNG)


8. **_Click NO._** This is an important step otherwise you may not be able to create the hex file of your asm code.
9. **_Go to File->Create New File_**. Type your code. Then Save the file with the extension **_'.asm'._**
![Image of Keil](https://user-images.githubusercontent.com/56953327/76739437-33ca3f00-6792-11ea-9efb-7e3b643ee14a.PNG)


10. Now in the project menu, **_right click on Source Group1 -> Add Existing Files to Source Group1._**
11. Now **_browse your asm file and click on add._**
12. Now in the project menu, **_right click on Target 1 -> Options for Target 'target 1...'_**. The following window appears.
![Image of Keil](https://user-images.githubusercontent.com/56953327/76740206-85bf9480-6793-11ea-9a41-43552ac27d6d.PNG)


13. **_Set the Xtal Mhz to 11.0592_**. Now **_go to Output tab_**. **_Select the check box to create Hex File_**. Now **_Click OK_**.
14. Now go to **_Project -> Build Target_**. Now go to **_Project -> Rebuild all target files._**
15. Ensure there are no errors while building.
16. Now open the folder in which you saved your project. Go to **_Objects folder_**. There you will see your hex file. 
17. Now **_open Arduino IDE_**. Go to **_File -> Example -> Arduino ISP -> ArduinoISP_**.
18. Now **_connect Arduino Board_** to your PC.
19. Now in Arduino IDE, go to **_Tools -> Boards_**. Make sure Arduino Uno is selected.
20. Go to **_Tools->Ports_**. Select the port to which Arduino IDE is connected. 
21. Now **download _AVR8051.conf_ from this repository**. Move this file to the location **_C:\ (i.e. Local Disk C)_** otherwise it won't work.
22. Now **_interface AT89S52 and Arduino Uno_** as per following.

![Image of Keil](https://user-images.githubusercontent.com/44562091/76745901-9e807800-679c-11ea-9685-356bcbd4c95f.jpg)

23. Now **_Upload this code to Arduino Uno_**.

24. Now **_open CMD_**. Type the following command. And Press Enter.


`"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avrdude.exe" -C C:/AVR8051.conf -c stk500v1 -P COM5(The port to which arduino is connected which can be seen by opening Arduino IDE->Tools->Port) -p 89s52 -b 19200 -U flash:w:"PATH_OF_YOUR_HEX_file":a`


![Image of Keil](https://user-images.githubusercontent.com/56953327/76742426-1481e080-6797-11ea-9923-981419279932.PNG)

25. Your hex code will be uploaded successfully if the output of the above cmd command is something like this
![Image of Keil](https://user-images.githubusercontent.com/56953327/76744876-ef8f6c80-679a-11ea-9ecd-08a3b88585ae.PNG)

Note:  If the output is not the same as above, then your code may not have been uploaded successfully. In that case, check all the connections. If this too does not help, check if all the hardware is damaged or not. 
