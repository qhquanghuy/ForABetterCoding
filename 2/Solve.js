function solve(arr) {
	return arr.map(element => Math.max(...element))
}


console.log(solve([[1,2,3], [4,2,-2], [0,1,99]]))
