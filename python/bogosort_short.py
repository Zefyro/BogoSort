import random as rnd

# Yes I know you can do this in fewer lines...

def bogoSort(list, printIterationsEvery: int):
    iterations: int = 0;
    print("{}, {}".format(iterations, list))
    while (sorted(list) != list):
        iterations += 1
        rnd.shuffle(list)
        if (iterations % printIterationsEvery == 0):
            print("{}, {}".format(iterations, list))
    print("Result:\n{}, {}".format(iterations, list))
    

def generateRandomList(length: int):
    list = []
    for num in range(0, length):
        list.append(rnd.randint(-100, 100))
    return list

bogoSort(generateRandomList(6), 100)