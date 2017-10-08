func longestSotred<V: Comparable>(arr: [V]) -> [(position: Int, length: Int)] {
	func _longestSorted<V: Comparable>(_ stortedArr: [V], 
									   _ arr: [V],
									   _ idx: Int, 
									   _ result: [(position: Int, length: Int)]) -> [(position: Int, length: Int)] {
		guard let firstElement = arr.first else { 
			return result + [(idx,stortedArr.count)]
		}
		let lastElement = stortedArr.last!
		if lastElement <= firstElement {
			return _longestSorted(stortedArr + [firstElement],Array(arr.dropFirst()),idx,result)
		} else {
			return _longestSorted([firstElement],Array(arr.dropFirst()),idx + stortedArr.count,result + [(idx,stortedArr.count)])
		}
	}
	guard let firstElement = arr.first else { return [] }
	let allSorted =  _longestSorted([firstElement],Array(arr.dropFirst()),0,[])
	
	return allSorted.reduce([]) { acc, ele in
		guard let first = acc.first else { return [ele] }
		return first.length < ele.length ? [ele] : first.length == ele.length ? acc + [ele] : acc
	}
} 
print(longestSotred(arr: [1,2,3,4,5,1,2,3,1,2,3,4,5,6,1,2,3,4,5,6,3,1,2]))






