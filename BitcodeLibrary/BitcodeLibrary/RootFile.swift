//
//  RootFile.swift
//  BitcodeLibrary
//
//  Created by Igor Fereira on 04/08/2016.
//  Copyright © 2016 Igor Fereira. All rights reserved.
//

import Foundation

public enum RootEnum {
    case Right
    case Left
}

private struct RootStruct {
    let message:String
    let alignment:RootEnum
}

public class Printer {
    private var stack = [RootStruct]()
    
    public init() {}
    
    private lazy var formatter:NSDateFormatter = {
        let dateFormatter = NSDateFormatter()
        dateFormatter.calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
        dateFormatter.locale = NSLocale.autoupdatingCurrentLocale()
        dateFormatter.timeZone = NSTimeZone.defaultTimeZone()
        dateFormatter.dateFormat = "dd/MM/yyyy'~'hh:mm:ss"
        return dateFormatter
    }()
    
    public func printMessage(message:String, aligment:RootEnum) {
        let rootStruct = RootStruct(message: message, alignment: aligment)
        stack.append(rootStruct)
        printElement(rootStruct)
    }
    
    public func printStack() {
        stack.forEach { [weak self] element in
            self?.printElement(element)
        }
    }
    
    private func printElement(element:RootStruct) {
        let date = NSDate()
        let dateString = formatter.stringFromDate(date)
        let elementCompleteString:String
        
        switch element.alignment {
        case .Right:
            elementCompleteString = "\(dateString): \(element.message)"
        case .Left:
            elementCompleteString = "\(element) - at \(dateString)"
        }
        
        print(elementCompleteString)
    }
}
