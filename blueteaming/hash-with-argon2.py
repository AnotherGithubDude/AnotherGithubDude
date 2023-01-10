# author: https://github.com/AnotherGithubDude, 2023
# tested with: Python 3.10.8

from argon2 import PasswordHasher
# Get User Input
password = input('Enter a password: ')
parallelism_factor = int(input('Enter parallelism factor: '))
memory_cost = int(input('Enter memory cost: '))
iterations = int(input('Enter iterations: '))
hash_length = int(input('Enter hash length: '))

# Hash with Argon2
hash_string = PasswordHasher(parallelism=parallelism_factor, memory_cost=memory_cost, time_cost=iterations, hash_len=hash_length)
hashed_password = hash_string.hash(password)

print('Hashed using Argon2:')
print(hashed_password)
