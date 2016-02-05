//
//  Document.swift
//  ES6 REPL
//
//  Created by Priit Haamer on 05.02.16.
//  Copyright © 2016 Priit Haamer. All rights reserved.
//

import Cocoa

class Document: NSDocument {

    override init() {
        super.init()
        // Add your subclass-specific initialization here.
    }

    override func windowControllerDidLoadNib(aController: NSWindowController) {
        super.windowControllerDidLoadNib(aController)
        // Add any code here that needs to be executed once the windowController has loaded the document's window.
    }

    override class func autosavesInPlace() -> Bool {
        return true
    }

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let windowController = storyboard.instantiateControllerWithIdentifier("Document Window Controller") as! NSWindowController
        self.addWindowController(windowController)
    }

    override func fileWrapperOfType(typeName: String) throws -> NSFileWrapper {
        let data = ""
        
        return NSFileWrapper(regularFileWithContents: data.dataUsingEncoding(NSUTF8StringEncoding)!)
    }
    
    override func readFromFileWrapper(fileWrapper: NSFileWrapper, ofType typeName: String) throws {
//        if let data = fileWrapper.regularFileContents {
//            var jsonerror: NSError?
//            
//            let json = (try! NSJSONSerialization.JSONObjectWithData(data, options: [])) as! NSDictionary
//            
//            if json["html"] is String {
//                html = json["html"] as! String
//            }
//            
//            if json["css"] is String {
//                css = json["css"] as! String
//            }
//            
//            if json["javascript"] is String {
//                javascript = json["javascript"] as! String
//            }
//            
//            return
//        } else {
//            throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
//        }
        return
    }
}

