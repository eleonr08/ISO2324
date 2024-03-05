import os.path
import shutil

ficheros = []
directorios = []

rutas = open("rutas.txt", mode="r")
li=rutas.readlines()
print(li)
for i in li:
    r=i.strip()
    fich = os.path.isfile(r)
    direc = os.path.isdir(r)
    if fich == True:
        print(r+ " es un fichero")
        ficheros.append(r)
    if direc == True:
        print(r+ " es un directorio")
        directorios.append(r)
    if fich == False and direc == False:
        print(r+ " no existe")

op = "Z"

while op != "E":
    print("A- Pedir nombre de fichero")
    print("B- Pedir nombre de directorio y mostrar su información")
    print("C- Pedir nombre de fichero y nombre de destino")
    print("D- Mostrar lista elegida por el usuario")
    print("E- Salir")
    op = input("Diga una opcion: ")
    match op:
        case "A":
            print("Ha seleccionado la opción A")
            nombreFichero = input("Introduzca el nombre de un fichero: ")
            if os.path.isfile(nombreFichero):
                os.system("rm " + nombreFichero)
                borrado = os.path.isfile(nombreFichero)
                if borrado == False:
                    print("El fichero se ha borrado")
            else:
                print("El fichero introducido no existe")
        case "B":
            print("Ha seleccionado la opción B")
            nombreDirectorio = input("Introduzca el nombre de un directorio: ")
            if os.path.isdir(nombreDirectorio):
                info = os.listdir(nombreDirectorio)
                print(info)
            else:
                print("El directorio introducido no existe")
        case "C":
            print("Ha seleccionado la opción C")
            nombreFichero2 = input("Introduzca el nombre de un fichero: ")
            if os.path.isdir(nombreFichero2):
                nombreDirectorio2 = input("Introduzca el nombre de un directorio: ")
                if os.path.isdir(nombreDirectorio2):
                    copiar = shutil.copy(nombreFichero2, nombreDirectorio2)
                else:
                    print("El directorio introducido no existe")
            else:
                print("El fichero introducido no existe")
        case "D":
            print("Ha seleccionado la opción D")
            lista = input("Seleccione una lista (ficheros o directorios): ")
            match lista:
                case "ficheros":
                    print(ficheros)
                case "directorios":
                    print(directorios)
                case _:
                    print("Selecciona una lista válida")
        case "E":
            print("Ha seleccionado la opción E")
            print("Saliendo ...")
            exit()
        case _:
            print("Error")
