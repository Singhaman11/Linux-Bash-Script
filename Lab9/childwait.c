#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    int i;
    printf("Parent --> PID = %d\n", getpid());
    for (i = 0; i < 5; i++) {
        if (fork() == 0) {
            printf("Child [%d] --> PID = %d, PPID = %d\n", i + 1, getpid(), getppid());
            exit(0); // Exit the child process after printing
        }
    }
    // Parent process waits for all child processes to finish
    for (i = 0; i < 5; i++) {
        wait(NULL); // Wait for any child process to finish
    }
    return 0;
}
