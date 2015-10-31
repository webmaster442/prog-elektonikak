#include <SD.h>

File root;

void setup()
{
	Serial.begin(9600);
	pinMode(10, OUTPUT);
	SD.begin(10);

	root = SD.open("/");
	printDirectory(root);
	Serial.println("done!");
}

void loop()
{
	// setup lefutása után nem történik semmi.
}

void printDirectory(File dir)
{
	while(true)
	{
		File entry = dir.openNextFile();
		if (! entry)
		{
			// Nincs több fájl, vissza az elsõre
			dir.rewindDirectory();
			break;
		}
		for (unsigned int i=0; i<numTabs; i++)
		{
			Serial.print('\t');
		}
		Serial.print(entry.name());
		if (entry.isDirectory())
		{
			Serial.println("/");
			printDirectory(entry, numTabs+1);
		}
		else
		{
			// fájloknak van méretük, könyvtáraknak nincs.
			Serial.print("\t\t");
			Serial.println(entry.size(), DEC);
		}
	}
}