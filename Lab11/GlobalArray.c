#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#define ARRAY_SIZE 10
int array[ARRAY_SIZE];
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
void* sort_array(void* arg) {
    // Lock the mutex to ensure exclusive access to the array
    pthread_mutex_lock(&mutex);

    // Sort the array using any sorting algorithm, e.g., bubble sort
    for (int i = 0; i < ARRAY_SIZE - 1; i++) {
        for (int j = 0; j < ARRAY_SIZE - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }

    // Unlock the mutex
    pthread_mutex_unlock(&mutex);

    return NULL;
}
int main() {
    pthread_t thread;

    // Input elements into the array
    printf("Enter %d elements: ", ARRAY_SIZE);
    for (int i = 0; i < ARRAY_SIZE; i++) {
        scanf("%d", &array[i]);
    }

    // Create a thread to sort the array
    if (pthread_create(&thread, NULL, sort_array, NULL) != 0) {
        printf("Error creating thread\n");
        return 1;
    }

    // Wait for the thread to finish sorting
    pthread_join(thread, NULL);

    // Display the sorted elements
    printf("Sorted array: ");
    for (int i = 0; i < ARRAY_SIZE; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");

    return 0;
}

