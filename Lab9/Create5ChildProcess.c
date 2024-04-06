/*Use fork() to create 5 child processes from one parent process (P1->{P2,P3,P4,P5,P6} and display the PID and PPID. Execute them - 
    i) Without wait() function
    ii) With wait() function
*/

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

void withoutWaitFunction()
{
	for(int i = 0; i < 5; i++)
	{
		if(fork() == 0)
		{
			printf("Child[%d] --> PID = %d, PPID = %d\n", i+1, getpid(), getppid());
			exit(0);
		}
	}
	printf("Parent --> PID = %d", getpid());
}

void withWaitFunction()
{
        for(int i = 0; i < 5; i++)
        {
                if(fork() == 0)
                {
                        printf("Child[%d] --> PID = %d, PPID = %d\n", i+1, getpid(), getppid());
                        exit(0);
                }
        }
	wait(NULL);
        printf("Parent --> PID = %d", getpid());
}

void main()
{
	withoutWaitFunction();
	withWaitFunction();
}
