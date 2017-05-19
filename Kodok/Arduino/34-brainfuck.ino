#define SIZE 1000
#define RAM 256

byte data[RAM];
byte dp = 0;
char prog[SIZE];
int pp = 0;
byte mode = 1;

void(* reset) (void) = 0;

inline void println(char *text)
{
	Serial.println(text);
}

inline void die(char *text)
{
	Serial.println("\n-------------------");
	Serial.println(text);
	for (int i=5; i>=0; i--)
	{
		Serial.print("Will restart in ");
		Serial.print(i);
		Serial.println(" seconds");
		delay(1000);
		}
	reset();
}

inline void check()
{
	if (pp > SIZE) die("Program pointer overflow.");
	if (pp < 0) die("Program pointer underflow.");
	if (dp > RAM) die("Data (RAM) pointer overflow.");
	if (dp < 0) die("Data (RAM) pointer underflow.");
}
inline void Eval()
{
	int bal;
	while ((pp < SIZE))
	{
		if (prog[pp] == '&') die("Program complete");
		switch (prog[pp])
		{
			case '>':
				dp++;
				break;
			case '<':
				dp--;
				break;
			case '+':
				data[dp]++;
				break;
			case '-':
				data[dp]--;
				break;
			case '[':
				bal = 1;
				if (data[dp] == '\0')
				{
					do
					{
						pp++;
						if (prog[pp] == '[') bal++;
						else if (prog[pp] == ']') bal--;
					}
					while ( bal != 0 );
				}
				break;
			case ']':
				bal = 0;
				do
				{
					if (prog[pp] == '[') bal++;
					else if (prog[pp] == ']') bal--;
					pp--;
				}
				while ( bal != 0 );
				break;
			case '.':
				Serial.print((char)data[dp]);
				break;
			case ',':
				die("The ',' command is unsupported");
				break;
		}
		pp++;
                check();
	}
}

void setup()
{
	Serial.begin(9600);
	println("\n----------------------------------------------------");
	println("Brainfuck Interpreter @ Arduino");
	println("Enter brainfuck program.");
	println("Program end symbol: &");
	println("User input not supported, the ',' symbol is disabled");
	println("----------------------------------------------------");
}

void loop()
{
	if (mode == 1)
	{
		println("\nPlease input program....\n");
		int temp;
		
		while (1)
		{
			if (Serial.available() > 0)
			{
				temp = Serial.read();
				if (temp > 0)
				{
					prog[pp] = (char)temp;
					if (prog[pp] == '&')
					{
						mode = 0;
						println("Starting Program....");
						pp = 0;
						return;
					}
					pp++;
					check();
				}
			}
		 }
	}
	else Eval();
}
