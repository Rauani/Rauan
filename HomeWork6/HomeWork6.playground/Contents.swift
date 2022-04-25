
/*
 1 task:
 */

var list = [3, 4, nil, 5, 7, nil, 8, 5, 3, 3, nil, 2, 2, 2, 5]
let result = list.compactMap{$0}

print(result)

print("------------------------------------------------------------------------")

/*
 2 Task:
 */
let unique = result
    .enumerated()
    .filter{ result.firstIndex(of: $0.1) == $0.0 }
    .map{ $0.1 }
print(unique)

print("------------------------------------------------------------------------")

/*
 3 Task:
 */


print(unique.count)


print("------------------------------------------------------------------------")
/*
 Task 4
 */
let a: [Any] = [3, [4, 5], [7, [8, 5]], [3, [3, [2, [2], 2], 5]]]
func line<T>(a: [Any]) -> [T] {
  var b: [T] = []
  a.forEach {
    if $0 is Array<Any> {
      b += line(a: $0 as! [Any])
    } else {
      if let n = $0 as? T {
        b.append(n)
      }
    }
  }
  return b
}

let b: [Int] = line(a: a)
print(b)


