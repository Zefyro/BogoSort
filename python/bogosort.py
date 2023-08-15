import random as rnd

def shuffle(list):
    i: int = len(list) - 1
    for num in range(0, i):
        idx: int = rnd.randint(0, i)
        list[num], list[idx] = list[idx], list[num]
    return list

def isSorted(list):
    i: int = len(list)
    for num in range(1, i):
        if list[num - 1] > list[num]:
            return False
    return True

def bogosort(list, printIterationsEvery: int):
    iterations: int = 0
    printIteration(list, iterations)
    while not isSorted(list):
        shuffle(list)
        iterations += 1
        if iterations % printIterationsEvery == 0:
            printIteration(list, iterations)
    print("Result:")
    printIteration(list, iterations)

def printIteration(list, iterations: int):
    print("{}, {}".format(iterations, list))

def generateRandomList(length: int):
    list = []
    for num in range(0, length):
        list.append(rnd.randint(-100, 100))
    return list

bogosort(generateRandomList(8), 100)