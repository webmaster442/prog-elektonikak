#!/usr/bin/env python

import MySQLdb
import sys

def rogzit():
	hiba = raw_input("Hiba leirasa (szoveg): ")
	tipus = raw_input("Hiba tipusa (szam): ")
	cur = con.cursor()
	cur.execute("INSERT INTO `Naplo` (`ID`, `tipus`, `leiras`) VALUES (NULL, %s, %s);",(tipus, hiba))
	con.commit()
	print("Adat beillesztve")

def listaz():
	cur = con.cursor()
	cur.execute("SELECT * FROM `Naplo`;")
	for row in cur.fetchall():
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
		print("MySQL demo fomenu")
		print("1:  Adat rogzitese")
		print("2:  Adatok listazas")
		print("[q/Q]: Kilepes")
		print("----------------------------------------")
		opciok = {"1": rogzit, "2": listaz, "q": kilep, "Q": kilep}
		valasz = raw_input("Kerem valasszon, majd nyomja meg az entert: ")
		funkcio = opciok.get(valasz, hiba)
		funkcio()

print("MySQL Demo alkalmazas");

try:
	print("Kapcsolat letesitese...")
	host = "db4free.net"
	user = "webmaster442"
	passwd = "v5D87bywEsvmPxZULVOS"
	db = "webmaster442test"
	con = MySQLdb.connect(host, user, passwd, db);
	print("Sikeres kapcsolat")
	cur = con.cursor()
	cur.execute("SELECT VERSION()")
	ver = cur.fetchone()
	print("Adatbazis verzio: ", ver)
	Fomenu()

except MySQLdb.Error as e:
	print("Hiba tortent. Reszletek: ")
	print(e)
