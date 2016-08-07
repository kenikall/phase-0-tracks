function longest_word(ary)//take in array
{
	longest = ""; //initialize a baseline length of 0
	for (var i = 0; i <= ary.length-1; i++) //loop through the array starting at the beginging
	{	
		if(ary[i].length > longest.length) //compare the length of current element to baseline
		{
			longest = ary[i]; //if the length of the current elemement is longer than the baseline make the current element the baseline 
		}
	}
	return(longest);//after looping through the array return baseline
}

function key_value_check (test1, test2) //take in 2 objects
{
	var test1_keys = Object.keys(test1); //make an array of the keys in the first argument
	var test2_keys = Object.keys(test2); //make an array of the keys in the second argument

	for (var i = 0; i <= test1_keys.length-1; i++) //loop throught the properties of the first object
	{
		for (var k = 0; k <= test2_keys.length-1; k++) //loop through the properties of the second object
		{
			if (test1_keys[i] == test2_keys[k]) //test to see if the keys match
			{
				if (test1[test1_keys[i]] == test2[test2_keys[k]])//test to see if the values match
				{
					return(true); //if there is a match return true
				}
			}	
		}
	}
	return(false); //if you are done looping and there are no matches return false
}

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. 
// So if we ran your function with an argument of 3, we would get an array of 3 random words back 
// (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly 
// varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, 
// 	that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word"
// function, and prints the result.

functon write_strings(how_long)
{
	//make empty array
	//loop based on function input
	//create random word
	//put random word into array

	//return array
}



//DRIVER CODE
console.log(longest_word(["0", "00", "000", "0000"]));

console.log(longest_word(["0000", "000", "00", "0"]));

console.log(longest_word(["00","0","0000", "000"]));

var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};

console.log(key_value_check (object1, object2))

var object1 = {name: "Steven", age: 50};
var object2 = {name: "Tamir", age: 54};

console.log(key_value_check (object1, object2))

var object1 = {job: "Teacher", location: "Maui"};
var object2 = {name: "Tamir", age: 54};

console.log(key_value_check (object1, object2))

var object1 = {friend: "Tamir", age: 30};
var object2 = {name: "Tamir", age: 54};

console.log(key_value_check (object1, object2))