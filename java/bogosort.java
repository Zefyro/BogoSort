public static class Program {
    static void bogoSort(int[] array, int printIterationsEvery) {
        int iteration = 0;
        printIteration(array, iteration);
        while (!isSorted(array)) {
            iteration++;
            array = shuffle(array);
            if (iteration % printIterationsEvery == 0) 
                printIteration(array, iteration);
        }
        System.out.println("Result:");
        printIteration(array, iteration);
    }
    static int[] shuffle(int[] array) {
        for (int i = 0; i < array.length; i++) {
            int j = (int)(Math.random() * (i + 1));
            int temp = array[i];
            array[i] = array[j];
            array[j] = temp;
        }
        return array;
    }
    static boolean isSorted(int[] array) {
        for (int i = 1; i < array.length; i++) {
            if (array[i - 1] > array[i]) return false;
        }
        return true;
    }
    static int[] generateRandomArray(int length) {
        int[] array = new int[length];
        for (int i = 0; i < length; i++) {
            array[i] = -100 + (int)(Math.random() * 201)
        }
        return array;
    }
    static void printIteration(int[] array, int iteration) {
        String arrayText = "";
        for (int i = 0; i < array.length; i++){
            arrayText += array[i];
            if (i != array.length - 1) arrayText += ", ";
        }
        System.out.println(String.format("%d, [%s]", iteration, arrayText));
    }
    public static void main(String[] args) {
        bogoSort(generateRandomArray(8), 100);
    }
}