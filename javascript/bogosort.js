
BogoSort(GenerateRandomArray(8), 100);

function BogoSort(array, printIterationsEvery) {
    var iteration = 0;
    PrintIteration(array);
    while (!IsSorted(array)) {
        iteration++;
        array = Shuffle(array);
        if (iteration % printIterationsEvery == 0) { 
            PrintIteration(array, iteration);
        }
    }
    console.log("Result:");
    PrintIteration(array, iteration);
}
function Shuffle(array) {
    var c = array.length, i, temp;
    while (c > 0) {
        i = Math.floor(Math.random() * c);
        c--;
        temp = array[c];
        array[c] = array[i];
        array[i] = temp;
    }
    return array;
}
function IsSorted(array) {
    for (i = 1; i < array.length; i++)
    {
        if (array[i - 1] > array[i]) { return false; }
    }
    return true;
}
function GenerateRandomArray(length) {
    return Array.from({length: length}, () => -100 + Math.floor(Math.random() * 201));
}
function PrintIteration(array, iteration = 0) {
    console.log(`${iteration}, [${array}]`);
}