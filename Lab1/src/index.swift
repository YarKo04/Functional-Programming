//singleton
func singleton(arg: Any) -> [Any] {
    var array = [arg]
    return array
}

var arr = singleton(arg: "Element1")

print(arr)

//null
func null(array: [Any]) -> Bool {
    if(array.isEmpty) {
        return true
    } else {
        return false
    }
}

print(null(array: arr))

//snoc
func snoc(array: [Any], arg: Any) -> [Any] {
    return (array + [arg])
}

print(snoc(array: arr, arg: "Element2"))

//length
func length(array: [Any]) -> Int {
    var count = 0
    for el in array {
        if(el == nil){
            return count
        }else {
            count += 1
            }
    }
    return count
    }

print(arr)
print(length(array: arr))

var archik = [2, 4, 5]
print(archik)
print(length(array: archik))
