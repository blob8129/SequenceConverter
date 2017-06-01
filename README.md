# Sequence Converter

[![Version](https://img.shields.io/cocoapods/v/SequenceConverter.svg?style=flat)](http://cocoapods.org/pods/SequenceConverter)
[![License](https://img.shields.io/cocoapods/l/SequenceConverter.svg?style=flat)](http://cocoapods.org/pods/SequenceConverter)
[![Platform](https://img.shields.io/cocoapods/p/SequenceConverter.svg?style=flat)](http://cocoapods.org/pods/SequenceConverter)

A library containing the extension to the sequence protocol where an element conform to the 
CustomStringConvertible protocol (could be optional). Also, contains a helper structure with the convenience
methods to convert sequences

## Features

- Converts sequences to strings 
- Removes empty elements 
- Removes nil elements 
- Correctly puts separators before, after and between the elements 

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


The classic example is resolving correct string with a punctuation from a first name, middle name and last
name in the case when it is possible for each element to be empty or nil.     

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
