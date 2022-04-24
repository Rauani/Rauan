
/*
 Задание 1:
 */

var a = [Int]()
var n = 100
for i in 2...n{
    var k = 0
    for j in 1...i{
        if(i%j == 0){
        k += 1
        }

    }
    if(k == 2){
        a.append(i)
    }
}
print(a)

print("--------------------------------------------------------------------------------------")
/*
 Задание 2:
 */

var array = [0, 6, 2, 0, 0, 4, 5, 3, 3, 6, 0, 7, 9, 4, 5, 0, 5, 7, 0, 0]
var index = array.count - 1


var array2 = [Int]()

for i in 0...index{
    array2.append(array[index-i])
}
print(array2)


print("--------------------------------------------------------------------------------------")
/*
 Задание 3:
 */

var count = 0
for i in 0...index{
    if(array[i] != 0){
        array[count] = array[i]
        count += 1
    }
}
while count < index{
    array[count] = 0
    count += 1
}
print(array)

print("--------------------------------------------------------------------------------------")
/*
 Задание 4:
 */
var map: [Int: Int] = [:]
for i in array {
    if (map[i] == nil) {
        map[i] = 1
    }
    else {
        map[i] = map[i]! + 1
    }
}

let sortedDictionary = map.sorted() { $0.1 < $1.1 }

for (key, value) in sortedDictionary{
    print("Элемент \(key) повторяется : \(value) раз")
}


