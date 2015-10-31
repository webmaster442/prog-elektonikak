//compile with: g++ -lpthread AckermannTest.cpp -o AckermanTest
#include <iostream>
#include <ctime>
#include <pthread.h>
#include <unistd.h>

using namespace std;

unsigned long Ack(int m, int n)
{
	while (m != 0)
	{
		if (n == 0) n = 1;
		else n = Ack(m, n-1);
		m = m -1;
	}
	return n+1;
}

static void * Thread1(void* params)
{
	time_t start, finish;
	start = time(NULL);
	for (int m=0; m<5; m++)
	{
		for (int n=0; n<4; n++)
		{
			if (m == 4 && n > 1) break;
			Ack(m, n);
		}
	}
	finish = time(NULL);
	long t = finish – start;
	cout << "Test runtime: " << t << " second(s)" << endl;
	return NULL;
}

static void * Thread2(void* params)
{
	unsigned long elapsed = 0;
	while (1)
	{
		cout << "Elapsed time: " << elapsed << " sec." << endl;
		elapsed += 5;
		sleep(5);
	}
	return NULL;
}

int main()
{
	cout << "-------------------------------------------" << endl;
	cout << "Ackermann CPU Speed test" << endl;
	cout << "Aprox. Runtime: 400 seconds" << endl;
	cout << "-------------------------------------------" << endl;
	cout << endl;
	cout << endl;

	pthread_t thread1, thread2;
	pthread_create( &thread1, NULL, Thread1, (void*)0);
	pthread_create( &thread2, NULL, Thread2, (void*)0);

	pthread_join(thread1, NULL);
	pthread_cancel(thread2);

	return 0;
}