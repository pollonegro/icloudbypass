# icloudbypass
iCloud Bypass script for 12.5.5 iOS



Realizar Jailbreak al dispositivo usando checkn1x (checkra1n boot):

https://github.com/asineth0/checkn1x


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


