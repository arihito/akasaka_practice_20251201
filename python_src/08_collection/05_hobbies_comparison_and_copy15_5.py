original_hobbies = ["Reading", "Traveling", "Gardening", "Cooking"]
copied_hobbies = original_hobbies.copy()
reference_hobbies = original_hobbies
print(original_hobbies == copied_hobbies)
print(original_hobbies == reference_hobbies)
print(id(original_hobbies))
print(id(copied_hobbies))
print(original_hobbies is copied_hobbies)
print(original_hobbies is reference_hobbies)
print(original_hobbies)
print(copied_hobbies)
print(reference_hobbies)
original_hobbies[2] = 'Hiking'
print(original_hobbies)
print(copied_hobbies)
print(reference_hobbies)
