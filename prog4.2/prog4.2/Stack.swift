import Foundation
/**
 A stack of objects
 
 */
class Stack {
    
    /**
     Stack desription - adds a string indicating the
     container is a queue before invoking super's description
     
     - returns: String String representation of the queue
     */
    
    var list: LinkedList
    init(list: LinkedList) {
        self.list = list
    }
    
    
    /**
     Puts an an object at the start of the queue
     
     - parameter object: Object to put in the queue.
     */
    func push(object: Any) {
        // Use inherited method to add object
        // to the list
        list.add(object: object)
    }
    
    /**
     Gets an an object from the start of the stack
     
     - returns: Any? Object removed from the start of the queue,
     nil if queue is empy.
     */
    func pop() -> Any? {
        // If head points to a non-nil node,
        // remove that node and return its
        // object
        if let n = list.tail {
            //Use inherited method to remove
            //node from the list
            list.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
