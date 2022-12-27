import sys
# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8
temperature = lambda celsius, fahrenheit : celsius + fahrenheit

if len(sys.argv) < 2:
  print("Usage: $ python3 lambda.py 20.0")
else:
 userinput = float(sys.argv[1])
 # Calling the lambda function and printing the Result
 print('\n' + str(userinput) + ' Celsius converted to Fahrenheit is: ', temperature((userinput * 1.8), 32))

