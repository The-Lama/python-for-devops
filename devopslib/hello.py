from random import choices

def get_random_fruit():
    fruits = ["apple", "banana"]
    return choices(fruits)[0]
