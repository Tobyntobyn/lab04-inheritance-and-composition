import Foundation

let str1: String = "Item V";
let str2: String = "Item E";
let str3: String = "Item S";
let str4: String = "Item M";

var list: LinkedList = LinkedList()
//print("\(list)")
//
list.add(object: str1)
list.add(object: str2)
list.add(object: str3)
list.add(object: str4)
print("\(list)")
//
//var queue: Queue = Queue(list: list)
//print("\n\(queue)")
//
//let item1 = queue.get()
//print("Got item: \(item1 as! String)")
//
//print("\(queue)")
//
//print("Putting item: \(str2)")
//queue.put(object: str2)
//print("\(queue)")
//
//var stack: Stack = Stack(list: list)
//print("\n\(stack)")
//
//if let item2 = stack.pop() {
//    print("Popped item: \(item2 as! String)")
//}
//print("\(stack)")
//
//print("Pushing item: \(str2)")
//stack.push(object: str2)
//print("\(stack)")

var array: Array = Array(list: list)
print("\n\(array.count)")

print("Setting array[2] to \(str1)")
array.add(object: str1)
print("\(array.count)")
for index in 0..<array.count {
    print("hello");
    print("array[\(index)]=\(array[index])")
    
}
