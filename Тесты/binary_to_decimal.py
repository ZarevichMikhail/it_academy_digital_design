# Число в двоичной системе счисления
binary_number = 0b0101
# print переведёт его в десятичную
print(binary_number)


# Выведет двоичное число в виде строки с 0b в начале
print(bin(binary_number))

# Добавит в начало строки нули, чтобы строка была нужной длины
tetrade = f"{binary_number:04b}"
print(tetrade)

# Автоматический перевод из двоичной в десятичную
auto_converted = int(tetrade, 2)
print(auto_converted)


# Правило перевода из двоичной системы счисления в десятичную
# 0b1011
# 3210 - разряды
# 1011 - цифры числа
# 1*2^3 + 0*2^2 + 1*2^1 + 1*2^0 = 8+2+1 = 11

number_to_convert = f"{0b1011:04b}"
inverted_string = number_to_convert[::-1] 
manually_converted = 0

for i in range(len(number_to_convert)):
    manually_converted += int(inverted_string[i])* 2**i

print(manually_converted)


# Проверка с помощью встроенной функции 
auto_converted = int(number_to_convert, 2)

print(manually_converted == auto_converted)
