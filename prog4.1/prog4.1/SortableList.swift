/**
 Extending the node class to provide it with a method
 for swapping objects between nodes
 */
import Foundation

class SortableList : LinkedList {
    
    /**
     Get the Nth node from the LinkedList
     
     - parameter index: Index of the node to Get
     - returns: Node? The node at the specified index, or nil
     if index exceeds list count
     */
    func getNodeAtIndex(index: Int) -> Node? {
        var node: Node? = head;
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
    
    /**
     Sort the list using the provided compare function
     
     - parameter isObject: A function that compares two objects and
     returns true if the first one is smaller than the second one
     
     */
    func sort(isObject: (Any, Any) -> Bool) {
        
        while true {
            var swap: Bool = false;
            
            var nodeLeft: Node? = head
            
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
