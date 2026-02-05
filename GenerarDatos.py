import random

OUTPUT_FILE="datos.txt"
TOTAL= 30000000

def generar_datos(i):
    '''
    Aqui se generan los datos de las tuplas
    '''
    id_estudiante = i
    nombre = "nombre" +str(i)
    codigo_carrera=random.randint(0,100)
    edad=random.randint(18,40)
    indice=random.randint(0,10000)
    return (id_estudiante,nombre,codigo_carrera,edad,indice)

#Escribir en el archivo: 

with open(OUTPUT_FILE, "w") as archivo: 
    for i in range(1,TOTAL+1):
        datos_generados = generar_datos(i)
        for j, valor in enumerate(datos_generados):
            archivo.write(str(valor))
            archivo.write(",")
        archivo.write("\n")
