using System;
static class Program {
	static Random rnd = new Random();
	static void Main(string[] args) {
		BogoSort(GenerateRandomArray(8), 100);
	}
	static void BogoSort(int[] array, int printIterationsEvery) 
	{
		int iteration = 0;
		PrintIteration(array);
		while (!IsSorted(array)) 
		{
			iteration++;
			array = Shuffle(array);
			if (iteration % printIterationsEvery == 0)
				PrintIteration(array, iteration);
		}
		Console.WriteLine("Result:");
		PrintIteration(array, iteration);
	}
	static int[] Shuffle(int[] array) 
	{
		for (int i = 0; i < array.Length; i++) {
			int j = rnd.Next(0, i);
			int temp = array[i];
			array[i] = array[j];
			array[j] = temp;
		}
		return array;
	}
	static bool IsSorted(int[] array) 
	{
		for (int i = 1; i < array.Length; i++)
		{
			if (array[i - 1] > array[i])
				return false;
		}
		return true;
	}
	static int[] GenerateRandomArray(int length)
	{
		int[] array = new int[length];
		for (int i = 0; i < length; i++)
			array[i] = rnd.Next(-100, 100);
		return array;
	}
	static void PrintIteration(int[] array, int iteration = 0) 
	{
		string arrayText = "";
		for (int i = 0; i < array.Length; i++)
		{
			arrayText += array[i];
			if (i != array.Length - 1) arrayText += ", ";
		}
		Console.WriteLine($"{iteration}, [{arrayText}]");
	}
}