import random
import csv

with open("Datos_tabla.csv", "w", encoding="utf-8") as f:
    for i in range(1, 30000000 + 1):
        nombre = f"Estudiante_{i}"
        codigo_carrera = random.randint(0, 100)
        edad = random.randint(18, 40)
        indice = random.randint(0, 10000)

        f.write(f"{nombre},{codigo_carrera},{edad},{indice}\n")