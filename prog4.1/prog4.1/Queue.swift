import Foundation

class Queue : LinkedList {
    //descr of queue
    override var description: String{
        return "(Queue)<--"+super.description+"<--"
    }
    
    //Puts an object at the end of the queue
    func put(object: Any){
        self.add(object: object);
    }
    
    //Gets an object from the start of the queue
    func get() -> Any? {
        if let n = head {
            self.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
