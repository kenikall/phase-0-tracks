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

function write_strings (how_long) //get number of words
{
	var rand_ary = []; //make empty array
	var possible = "abcdefghijklmnopqrstuvwxyz"; //possible chars in random string
	var letters = 0 //initalize random number of letters in word to 0

	for (var i = 0; i <= how_long; i++) //make array whose length is based on function input
	{
		string = "" //start with new string every time
		letters = Math.floor((Math.random() * 10) + 1); //randomize number of letters in word
		for( var k=0; k < letters; k++ ) //make word
  		{
        	string += possible.charAt(Math.floor(Math.random() * possible.length)); //make word have random letters and random length
   		}
		
		rand_ary.push(string); //put random word into array
	}
	return(rand_ary);
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
ary = write_strings(10);
console.log(ary);
console.log(longest_word(ary));
