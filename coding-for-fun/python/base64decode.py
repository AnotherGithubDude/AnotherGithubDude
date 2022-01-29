import base64
user_input = str(input("Please provide the BASE64 encoded string:\n\n"))
encoded = base64.b64encode(b'data to be encoded')
#print(encoded)
print("Decoded:\n " + str(base64.b64decode(encoded)))
