# icloudbypass
iCloud Bypass script iOS12.2 up to iOS13.2.3


----- EDUCATIONAL PURPOSES ONLY -----
----- SOLO FINES EDUCATIVOS -----



![blocked ipad](https://raw.githubusercontent.com/pollonegro/icloudbypass/main/blocked.png)



Realizar Jailbreak al dispositivo usando checkn1x (checkra1n boot):

https://github.com/asineth0/checkn1x

![checkn1x image](https://raw.githubusercontent.com/pollonegro/icloudbypass/main/checkn1x.png)


Jailbreaked:

![jailbreak](https://raw.githubusercontent.com/pollonegro/icloudbypass/main/jailbreak.png)




Comandos:

![comandos](https://raw.githubusercontent.com/pollonegro/icloudbypass/main/commands.png)

En terminal 1:

sudo apt install libusbmuxd-tool

iproxy 2022 44


En terminal 2:

ssh root@localhost -p 2022                   (pass:) alpine

mount -o rw,union,update /

echo “” >> /.mount_rw

mv /Applications/Setup.app/Setup /Applications/Setup.app/Setup.backup

uicache -a

killall backboardd




Listo:

![free](https://raw.githubusercontent.com/pollonegro/icloudbypass/main/free.png)




