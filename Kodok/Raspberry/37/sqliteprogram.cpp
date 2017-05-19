#include <iostream> 
#include <cstdlib>
#include <cstdio>
#include <sqlite3.h>

using namespace std;

int AdatBeker(char validkeys[], int validkeyscount);
void Rogzit();
void Fomenu();
void Leker();
int callback(void *NotUsed, int argc, char **argv, char **azColName);

//sqlite3 adatbazis pointer
sqlite3 *db; 
//hibauzenet pointere
char *error = 0;
//eredmeny tarolasa hibakezeleshez
int result = 0;

int AdatBeker(char validkeys[], int validkeyscount)
{
	int key = 0;
	while (1)
	{
		cout << "Kerem nyomjon le egy gombot: [";
		for (int i=0; i<validkeyscount; i++)
		{
			cout << validkeys[i] << " , ";
		}
		cout << "]" << endl;
		key = -1;
		fflush(stdin);
		char c = getchar();
		for (int i=0; i<validkeyscount; i++)
		{
			if (validkeys[i] == c)
			{
				key = c;
				break;
			}
		}
		if (key != -1) return key;
		cout << "Hibas gomb" << endl;
	}
}

void Fomenu()
{
	cout << "SQLite demo fomenu" << endl;
	cout << "1:  Adat rogzitese" << endl;
	cout << "2:  Adatok listazas" << endl;
	cout << "[q/Q]: Kilepes" << endl;
	
	char valasztek[] = { '1', '2', 'q', 'Q' };
	char valasztas = AdatBeker(valasztek, 4);
	
	switch (valasztas)
	{
		case '1':
			Rogzit();
			break;
		case '2':
			Leker();
			break;
		case 'q':
		case 'Q':
			cout << "Viszlat" << endl;
			break;
	}
	
}

void Rogzit()
{
	cout << "Hiba leirasa (szoveg): ";
	char hiba[255];
	cin >> hiba;
	cout << "Hiba tipusa (szam): ";
	int tipus;
	cin >> tipus;
	char sql[500];
	sprintf(sql, "INSERT INTO Naplo (tipus, leiras) VALUES(%d, '%s');", tipus, hiba);
	
	result = sqlite3_exec(db, sql, 0, 0, &error);
	
	if (result != SQLITE_OK )
	{
		cerr << "SQL muvelet hiba tortent" << endl;
		cerr << error << endl;
		sqlite3_free(error);        
        sqlite3_close(db);
        exit(2); 
	}
	else cout << "Adat beillesztve" << endl;
	cout << "nyomjon le egy gombot a fomenube valo visszatereshez" << endl;
	cout << "\n\n\n";
	Fomenu();
}

void Leker()
{
	char sql[] = "SELECT * FROM Naplo";
	result = sqlite3_exec(db, sql, callback, 0, &error);
	if (result != SQLITE_OK )
	{
		cerr << "SQL muvelet hiba tortent" << endl;
		cerr << error << endl;
		sqlite3_free(error);        
        sqlite3_close(db);
        exit(2);
	}
	cout << "nyomjon le egy gombot a fomenube valo visszatereshez" << endl;
	cout << "\n\n\n";
	Fomenu();
}

int callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	NotUsed = 0;
    for (int i = 0; i < argc; i++)
    {
        printf("%s = %s\t", azColName[i], argv[i] ? argv[i] : "NULL");
    }
    printf("\n");
    return 0;
}

int main()
{
	system("clear");
	cout << "SQLite Demo alkalmazas" << endl;
	cout << "SQLite Verzio: " << sqlite3_libversion() << endl;
	
	//adatbazis megnyitasa
	result = sqlite3_open("test.db", &db);
	
	if (result != SQLITE_OK)
	{
		cerr << "Adatbazis fajl megnyitasi/olvasasi hiba tortent" << endl;
		sqlite3_close(db);
		return 1;
	}
	
	//adatbazis muvelet definialasa
	char sql[] = "CREATE TABLE IF NOT EXISTS Naplo(id INTEGER PRIMARY KEY AUTOINCREMENT, tipus INTEGER, leiras TEXT);";
	
	sqlite3_exec(db, sql, 0, 0, &error);
	
	if (result != SQLITE_OK )
	{
		cerr << "Tabla letrehozasi SQL muvelet hiba tortent" << endl;
		cerr << error << endl;
		sqlite3_free(error);        
        sqlite3_close(db);
        return 2; 
	}
	else cout << "Tabla letrehozva vagy inicializalva" << endl;
	
	Fomenu();
	
	sqlite3_close(db);
	
	return 0;
}
 
