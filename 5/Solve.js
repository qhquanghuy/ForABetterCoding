
function steamrollArray(arr) {
  // I'm a steamroller, baby
  return flatterned(arr,[]);
}

function flatterned(arr,res) {  
  return arr.reduce((acc,e) => Array.isArray(e) ? flatterned(e,acc) : acc.concat(e),res);
}

steamrollArray([1, [2], [3, [[4]]]]);