a = Array.new(10).map(){rand(10)}

#Дан целочисленный массив. Необходимо переставить в обратном порядке элементы массива, расположенные между его минимальным и максимальным элементами.

a = [7, 2, 7, 1, 6, 3, 2, 9, 8]
s = a.index(a.min)
d = a.index(a.max)
a[s+1..d-1].reverse
#=> [2, 3, 6]

#Дан целочисленный массив. Необходимо разместить элементы, расположенные до минимального, в конце массива.

a = [7, 6, 1, 9, 2, 8, 7, 8, 2, 7]
b = a.index(a.min)
a.rotate(b)
#=> [1, 9, 2, 8, 7, 8, 2, 7, 7, 6]

#Дан целочисленный массив и интервал a..b. Необходимо найти количество элементов в этом интервале.

a = [6, 5, 3, 3, 4, 0, 1, 6, 4, 6]
b = a[2..6]
b.size
#=> 5

#Дан целочисленный массив и натуральный индекс (число, меньшее размера массива). Необходимо определить является ли элемент по указанному индексу локальным минимумом.

a = [5, 0, 9, 1, 1, 9, 6, 8, 1, 4]
i = a.index(6)
a.min == i
#=> false

#Дан целочисленный массив. Необходимо найти элементы, расположенные между первым и вторым максимальным.

a = [3, 2, 8, 6, 1, 4, 2, 8, 8, 1]
b = a[(a.index(a.max) + 1)..-1]
b[0..b.index(b.max)-1]
#=> [6, 1, 4, 2]

#Дан целочисленный массив. Необходимо поменять местами минимальный и максимальный элементы массива.

a = [2, 8, 8, 0, 7, 3, 2, 4, 7, 3]
b = a.index(a.min)
f = a.index(a.max)
c = a.max
a[f] = a[b]
a[b] = c
#=> [2, 0, 8, 8, 7, 3, 2, 4, 7, 3]

#Даны два массива. Необходимо найти количество не совпадающих по значению элементов.

a = [1, 4, 1, 4, 0]
b = [0, 2, 1, 1, 1]
(a | b).size - (a&b).size
#=> 2

