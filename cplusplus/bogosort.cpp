#include <algorithm>
#include <array>
#include <iostream>
#include <ctime>

template<template<class, size_t> class Array, class Element, size_t Length>
void printIteration(const Array<Element, Length>& array, size_t iteration) {
    using namespace std;

    cout << iteration << ", [";
    for (int i = 0; i < array.size(); i++) {
        cout << array[i];
        if (i + 1 < array.size()) printf(", ");
    }
    cout << "]\n";
}

template<class Element, size_t Length>
std::array<Element, Length> generateRandomArray() {
    constexpr int MaxNum = 100, MinNum = -100;
    
    srand (time(NULL));

    std::array<Element, Length> array;
    for (auto& i : array) {
        i = (rand() % (MaxNum - MinNum + 1)) + MinNum;
    }

    return array;
}

template<template<class, size_t> class Array, class Element, size_t Length>
bool isSorted(const Array<Element, Length>& array) {
    for (int i = 1; i < array.size(); i++) {
        if (array[i - 1] > array[i]) 
            return false;
    }
    return true;
}

template<template<class, size_t> class Array, class Element, size_t Length>
void shuffle(Array<Element, Length>& array) {
    for (auto& i : array) {
        size_t j = rand() % array.size();
        std::swap(i, array[j]);
    }
}

template<class Element, size_t Length, size_t PrintIterationEvery>
void bogosort() {
    auto array = generateRandomArray<Element, Length>();
    size_t iteration = 0;
    printIteration(array, iteration);
    while (!isSorted(array)) {
        iteration++;
        shuffle(array);
        if (iteration % PrintIterationEvery == 0)
            printIteration(array, iteration);
    }
    printf("Result:\n");
    printIteration(array, iteration);
}

int main() {
    constexpr size_t DesiredLength = 8;
    constexpr size_t PrintIterationEvery = 100;
    bogosort<int, DesiredLength, PrintIterationEvery>();
    return 0;
}