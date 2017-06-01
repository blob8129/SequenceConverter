# Sequence Converter

[![Version](https://img.shields.io/cocoapods/v/SequenceConverter.svg?style=flat)](http://cocoapods.org/pods/SequenceConverter)
[![License](https://img.shields.io/cocoapods/l/SequenceConverter.svg?style=flat)](http://cocoapods.org/pods/SequenceConverter)
[![Platform](https://img.shields.io/cocoapods/p/SequenceConverter.svg?style=flat)](http://cocoapods.org/pods/SequenceConverter)

Library containing extension to the sequence protocol where element is conforms
to the CustomStringConvertible protocol (could be an optional).
Also contains a helper structure with the convinients methods to convert sequences

## Features

- Converts sequences to strings 
- Removes empty elements 
- Removes nil elements 
- Correctly puts seperators before, after and between the elements 

## Pros 

- Small 
- 100% unit tested 

## Installation

NumeralEndings is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SequenceConverter"
```

## Why would I need it?

Classic example is resolving correct string with a punctuation from a firstname, middlename and lastname in the case when it is possible
for each element to be empty or nil.    

### Solution

```swift
let formatted = SequenceConverter.middleSpaceFormat("Ivanov", "Ivan", "Ivanovich" )
// "Ivanov Ivan Ivanovich"

let formatted = SequenceConverter.middleSpaceFormat("Ivanov", "Ivan" )
// "Ivanov Ivan"
	    
// Custom separators 
["1", "", nil, "", "4", "5"].toStringWithSeparators(before: "<-", between: "|", after: "->")
//"<-1|4|5->"

```
## Author

Andrey Volobyev blob8129@gmail.com

## Get in touch

If you have any questions, drop me an email.
