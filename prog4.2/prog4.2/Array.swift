import Foundation
 
/**
 Extending the node class to provide it with a method
 for swapping objects between nodes
 */
extension Node {
    
    /**
     Swaps objects between self and another node nodes - useful for
     sorting - instead of swapping and relinking the nodes, it's easier
     to leave the nodes where they are, and just swap their
     objects
     
     - parameter n Node to swap objects with
     */
    func swapObjectsWith(n: Node) {
        let temp: Any = self.object
        self.object = n.object
        n.object = temp
    }
}

/**
 Indexed array of objects
 
 */
 class Array {
 
 // STORED PROPERTIES
 
  var _count: Int    // Stored property that counts elements in the array
    var list: LinkedList    // Stored property of linkedList
 
    // COMPUTED PROPERTIES
 
     /**
     Computed property that returns the number of elements in the array - overrides
     LinkedList property to return stored _count property rather than traversing
     the list and coutning the elements.
     
     - returns: Int Number of items in the array
     */
     var count: Int {
        return self._count
     }
    
     // INITIALISERS
    
     /**
     Designated initialiser for Array - overrides LinkedList initialiser
     in order to initialise the _count stored property
     
     - parameter list: LinkedList to initialise array with (nil by default)
     */
     init(list: LinkedList? = nil) {
        self.list = list!
        self._count = list!.count
    }
    
     // METHODS
    
     func add(object: Any) {
        list.add(object: object)
        self._count += 1
     }
    
     func remove(node: Node) -> Bool {
        let nodeRemoved: Bool = list.remove(node: node)
        if nodeRemoved {
            self._count -= 1
        }
        return nodeRemoved
    }
    
    func get(index: Int) -> Any {
        assert(index < self._count && index >= 0, "Index out of bounds")
        return getNodeAtIndex(index: index)!.object
    }
    //IMPLEMENT
    func set(object: Any, at: Int) {
        print(at)
        print(self._count)
        assert(at < self._count && at >= 0, "Index out of bounds")
        let temp: Node = getNodeAtIndex(index: at)!
        temp.object = object
    }
    
    subscript(index: Int) -> Any {
        get {
            return self.get(index: index)
        }
        set(newObject) {
            self.set(object: newObject, at: index)
        }
    }
    
    func getNodeAtIndex(index: Int) -> Node? {
        var node: Node? = list.head;
        // Walk through the list until the
        // specified index
        if index > 0 {
            for _ in 1...index {
                if let n = node {
                    node = n.next;
                } else {
                    // Exit early if index
                    // exceeds number of
                    // items on the list
                    return nil;
                }
            }
        }
        return node;
    }
    
    func sort(isObject: (Any, Any) -> Bool) {
        
        while true {
            var swap: Bool = false;
            
            var nodeLeft: Node? = list.head
            
            // Walk through the nodes in the list
            while let nLeft = nodeLeft  {
                // Get the next node in the list
                if let nRight = nLeft.next {
                    // Invoked the function that got passed
                    // in as a parameter to check if the
                    // object that follows the current one
                    // on the list is smaller - if yes,
                    // then swap the object of the two nodes
                    if(isObject(nRight.object, nLeft.object)) {
                        nLeft.swapObjectsWith(n: nRight)
                        swap = true
                    }
                }
                nodeLeft = nLeft.next
            }
            
            // Check if anything got swapped in this
            // pass through the entire list - if not,
            // then the entire list has been completely
            // sorted
            if !swap {
                break;
            }
        }
    }
}

