with open('requirements.txt', 'r') as file:
    L = file.read().replace('\n', '')
file1 = open("myfile.txt", "w")
file1.writelines(L)
file1.close()
file1 = open("myfile.txt", "a")
data_to_write = [
  "\n",
  "logging",
]
for line in data_to_write:
  file1.write(line)
file1 = open("myfile.txt", "r")
print("Output of Readlines after appending")
print(file1.read())
print()
file1.close()
L.close()
