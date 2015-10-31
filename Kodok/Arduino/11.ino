extern "C" 
{
	#include <context.h>
	#include <os.h>
	#include <os_internal.h>
}

spinlock_t testLock;
int state1, state2;

void setup()
{
	os_init();
	pinMode(10, OUTPUT);
	pinMode(13, OUTPUT);
	state1 = 0;
	state2 = 0;
}

void Task1(void *arg)
{
	while(1)
	{
		if (state1 == 0) state1 = 1;
		else state1 = 0;
		spinlock_acquire(&testLock);
		digitalWrite(10, state1);
		spinlock_release(&testLock);
		os_sleep(1000);
	}
}

void Task2(void *arg)
{
	while(1)
	{
		if (state2 == 0) state2 = 1;
		else state2 = 0;
		spinlock_acquire(&testLock);
		digitalWrite(13, state2);
		spinlock_release(&testLock);
		os_sleep(250);
	}
}

void loop()
{
	spinlock_init(&testLock);
	os_schedule_task(Task1, NULL, 0);
	os_schedule_task(Task2, NULL, 0);
	os_loop();
}