#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void printIteration(int* array, int* length, int* iteration) {
    printf("%d, [", *iteration);
    for (int i = 0; i < *length; i++) {
        printf("%d", array[i]);
        if (i + 1 < *length) printf(", ");
    }
    printf("]\n");
}

int* generateRandomArray(int length) {
    srand (time(NULL));
    int* array = malloc(length * sizeof(int));
    for (int i = 0; i < length; i++) {
        array[i] = rand() % 200 - 100;
    }
    return array;
}

int isSorted(int* array, int* length) {
    for (int i = 1; i < *length; i++) {
        if (array[i - 1] > array[i]) 
            return 0;
    }
    return 1;
}

int* shuffle(int* array, int* length) {
    for (int i = 0; i < *length; i++) {
        int j = rand() % *length;
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}

void bogosort(int length, int printIterationsEvery) {
    int* array = generateRandomArray(length);
    int iteration = 0;
    printIteration(array, &length, &iteration);
    while (!isSorted(array, &length)) {
        iteration++;
        array = shuffle(array, &length);
        if (iteration % printIterationsEvery == 0)
            printIteration(array, &length, &iteration);
    }
    printf("Result:\n");
    printIteration(array, &length, &iteration);
    free(array);
}

int main()
{
    bogosort(8, 100);
    return 0;
}