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
	// setup lefut�sa ut�n nem t�rt�nik semmi.
}

void printDirectory(File dir)
{
	while(true)
	{
		File entry = dir.openNextFile();
		if (! entry)
		{
			// Nincs t�bb f�jl, vissza az els�re
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
			// f�jloknak van m�ret�k, k�nyvt�raknak nincs.
			Serial.print("\t\t");
			Serial.println(entry.size(), DEC);
		}
	}
}