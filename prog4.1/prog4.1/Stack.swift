import Foundation

class Stack : LinkedList {
    //descr of stack
    override var description: String{
        return "(Stack)<--"+super.description+"<--"
    }
    
    //Puts an object at the end of the queue
    func push(object: Any){
        self.add(object: object);
    }
    
    //Gets an object from the start of the queue
    func pop() -> Any? {
        if let n = tail {
            self.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
