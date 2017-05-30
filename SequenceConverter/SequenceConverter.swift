//
//  CustomFormatter.swift
//  Ralli
//
//  Created by Andrey Volobuev on 29/05/2017.
//  Copyright © 2017 Andrey Volobuev. All rights reserved.
//

import Foundation

/// Helper structure with the convinients methods to convert sequences
public struct SequenceConverter {
    /// Separators before: ", ", between: ", ", after: ""
    public static func commaSpaceBeforeMiddleFormat(_ items: CustomStringConvertible?...) -> String {
        return items.toStringWithSeparators(before: ", ", between: ", ", after: "")
    }
    /// Separators before: "", between: " ", after: ""
    public static func middleSpaceFormat(_ items: CustomStringConvertible?...) -> String {
        return items.toStringWithSeparators(before: "", between: " ", after: "")
    }
}

/// Extension to the sequence protocol where element is conforms
/// to the CustomStringConvertible protocol (could be an optional).
extension Sequence where Iterator.Element == Optional<CustomStringConvertible>  {
    
    public func toStringWithSeparators(before: CustomStringConvertible,
                                between: CustomStringConvertible,
                                after: CustomStringConvertible) -> String {
        
        let filtred = flatMap { $0 }.filter { $0.description.isEmpty == false }
        let middleSparators = Array<CustomStringConvertible>(repeating: between, count: filtred.count)
        let mergedMiddle = zip(filtred, middleSparators)
            .enumerated()
            .flatMap { offset, element in
                offset != filtred.count - 1 ? [element.0, element.1] : [element.0]
        }
        
        let mergedMiddleStr = mergedMiddle.reduce("") { result, element in
            return "\(result)\(element)"
        }
        return mergedMiddleStr.isEmpty == false ? "\(before)\(mergedMiddleStr)\(after)" : ""
    }
}
