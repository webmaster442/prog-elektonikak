#!/usr/bin/env python

import sqlite3
import sys

def rogzit():
	hiba = raw_input("Hiba leirasa (szoveg): ")
	tipus = raw_input("Hiba tipusa (szam): ")
	cur = con.cursor()
	cur.execute("INSERT INTO Naplo (tipus, leiras) VALUES(?, ?);", (hiba, tipus))
	con.commit()
	print("Adat beillesztve")

def listaz():
	cur = con.cursor()
	for row in cur.execute("SELECT * FROM Naplo;"):
		print row

def hiba():
	print("Hibas valasztas")

def kilep():
	con.commit()
	con.close()
	exit()
	
def Fomenu():
	while True:
		print("----------------------------------------")
		print("SQLite demo fomenu")
		print("1:  Adat rogzitese")
		print("2:  Adatok listazas")
		print("[q/Q]: Kilepes")
		print("----------------------------------------")
		opciok = {"1": rogzit, "2": listaz, "q": kilep, "Q": kilep}
		valasz = raw_input("Kerem valasszon, majd nyomja meg az entert: ")
		funkcio = opciok.get(valasz, hiba)
		funkcio()

print("SQLite Demo alkalmazas");
print("SQLite Verzio: "+ sqlite3.version)

try:
	con = sqlite3.connect('test.db')
	cursor = con.cursor()
	cursor.execute("CREATE TABLE IF NOT EXISTS Naplo(id INTEGER PRIMARY KEY AUTOINCREMENT, tipus INTEGER, leiras TEXT);")
	con.commit()
	Fomenu()

except sqlite3.Error as e:
	print("Hiba tortent. Reszletek: ")
	print(e)
