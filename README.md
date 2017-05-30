# Sequence Converter

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

## Get in touch

If you have any questions, drop me an email blob8129@gmail.com.
