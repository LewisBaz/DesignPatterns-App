//
//  DePaDescriptions.swift
//  Design Patterns
//
//  Created by Lewis on 09.04.2024.
//

extension DePaType.Behavioral {
    
    var description: String {
        switch self {
        case .command:
            return """
        The Command pattern is a design pattern that turns a request into a stand-alone object. This object contains all the information about the request. This transformation lets you pass requests as a method argument, delay or queue a request's execution, and support undoable operations.
        
        The pattern involves four roles: Command, Receiver, Invoker, and Client. The Command object knows about the Receiver and invokes a method of the Receiver. The values for the parameters of the Receiver method are stored in the Command.
        
        The Invoker knows how to execute a command and can also keep a history of executed commands. It is not aware of the specifics of any command; it only knows about the command interface.
        
        Both the Invoker object and several Command objects are held by a Client object. The Client decides which command to execute at which point. To execute a command, it passes the command object to the Invoker.
        
        This pattern simplifies the creation of general components by allowing them to delegate or make method calls without knowing the class of the method or the method parameters. It also allows for the tracking of executed commands, which can be useful for implementing undo and redo features.
        """
        default:
            return "-"
        }
    }
}

extension DePaType.Creational {
    
    var description: String {
        return "-"
    }
}

extension DePaType.Structural {
    
    var description: String {
        return "-"
    }
}
