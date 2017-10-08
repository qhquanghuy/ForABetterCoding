func solve<T: Comparable>(arr: [[T]]) -> [T] {
	return arr.flatMap { $0.max() }
}


print(solve(arr: [ [1,2,3], [4,2,-2], [0,1,99] ]))
