#8-Bit Show And Tell - Episode 5

***

[Video](https://www.youtube.com/watch?v=-ADjfx79wNg, "8-Bit Show and Tell")

***

this will generate 65535 random values and store them at XXXX in ram
this REQUIRES an REU unit for bank 0

in the video the bank was initally filled using the commands
**\*R0** to switch to the REU and then
**F 0 FFFF BB** on the super snapshot in monitor mode

in basic ENABLE osciallator 3 with the following pokes
**poke 54286, 255**
**poke 54287, 255**
**poke 54290, 128**

check that it worked with to ensure you're getting random numbers
**print peek(54299)**

run the code with SYS 49152

NOTE FOR VICE USERS WITH SUPER SNAPSHOT
**SHIFT+F7** is how you enter the Monitor

THIS IS AN UNOFFICIAL RECREATION OF THE CODE
By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell

***