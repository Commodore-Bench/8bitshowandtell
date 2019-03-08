# 8-Bit Show And Tell - Episode 5

***

[Video](https://www.youtube.com/watch?v=-ADjfx79wNg, "8-Bit Show and Tell")

***

this will generate 65535 random values and store them in the REU<br />
this REQUIRES an REU unit for bank 0<br />
<br />
in the video the bank was initally filled using the commands<br />
**\*R0** to switch to the REU and then<br />
**F 0 FFFF BB** on the super snapshot in monitor mode<br />
<br />
in basic ENABLE osciallator 3 with the following pokes<br />
**poke 54286, 255**<br />
**poke 54287, 255**<br />
**poke 54290, 128**<br />
<br />
check that it worked with to ensure you're getting random numbers<br />
**print peek(54299)**<br />
<br />
run the code with SYS 49152<br />
<br />
NOTE FOR VICE USERS WITH SUPER SNAPSHOT<br />
**SHIFT+F7** is how you enter the Monitor<br />
<br />
THIS IS AN UNOFFICIAL RECREATION OF THE CODE<br />
By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell<br />

***