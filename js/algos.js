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

// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
// (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) 
// If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, 
// because at least one key-value pair matches between the two objects. If no pairs match 
// (and keep in mind that the two objects may not even have any of the same keys), the function should return false. 
// To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). 
// Those can be considered equivalent. Again, try to reason through the problem using the basics you've already learned, 
// rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!

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