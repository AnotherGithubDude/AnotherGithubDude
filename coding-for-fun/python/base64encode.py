import base64
user_input    = input("Please input the string which shall be BASE64 encoded:\n\n")
message_bytes = user_input.encode('ascii')
encoded       = base64.b64encode(message_bytes)
print("\n\nencoded output:\n\n"+str(encoded))
