import os
def root():
    comprobar=os.getuid()
    if comprobar!=0:
        exit(0)
root()

r = open("/etc/passwd", "r")
import cpuinfo as c
enc=False

print("1- Muestra info del SSOO y de la CPU")
print("2 Info de los usuarios")
print("3 Digamos un directorio")
print("4 Salir")



while True:
    opcion = int(input("Ingresa una opcion"))
    if(opcion == 1):
        print(os.uname().sysname)
        print(c.get_cpu_info()["brand_raw"])
        break

    if(opcion == 2):
        usuario = input("Dime un usuario: ")
        lines=r.readlines()
        for i in lines:
            if usuario in i:
                enc=True
        if enc==True:
            print("El usuario "+usuario+" ya existe")
        else:
            os.system("useradd -m "+usuario)
        r.close()

    if(opcion == 3):
        dir = input("Escriba la carpeta: ")
        valor = os.path.exists(dir)
        if valor == True:
            print("El directorio que ha introducido existe")
        elif valor == False:
            os.mkdir(dir)
            print("EL directorio que ha introducido se ha creado correctamente")
        print()

    if(opcion == 4):
        break;
