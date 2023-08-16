import 'dart:math';

void main() {
    BogoSort(GenerateRandomList(8), 100);
}

void BogoSort(List list, int printIterationsEvery) {
    int iterations = 0;
    PrintIteration(list, iterations);
    while (!IsSorted(list)) {
        iterations++;
        list = Shuffle(list);
        if (iterations % printIterationsEvery == 0) {
            PrintIteration(list, iterations);
        }
    }
    print("Result:");
    PrintIteration(list, iterations);
}

List Shuffle(List list) {
    Random rng = Random();
    for (int i = 0; i < list.length; i++)
    {
        int j = rng.nextInt(i + 1);
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
    }
    return list;
}

bool IsSorted(List list) {
    for (int i = 1; i < list.length; i++) {
        if (list[i - 1] > list[i]) {
            return false;
        }
    }
    return true;
}

List GenerateRandomList(length) {
    Random rng = Random();
    List list = List<int>.filled(length, 0);
    for (int i = 0; i < length; i++) {
        list[i] = rng.nextInt(200) - 100;
    }
    return list;
}

void PrintIteration(List list, int iteration) {
    print("$iteration, $list");
}