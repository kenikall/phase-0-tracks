// In phase-0-tracks/js, create a file called explore.js.
// Ruby has lots of handy functions like .reverse, but in JavaScript, 
// we mostly have to write our own. In comments, pseudocode a function 
// that takes a string as a parameter and reverses the string. reverse("hello"), 
//for example, should return "olleh". This isn't a task specific to JavaScript -- your 
//pseudocode should be in plain English and use phrases like "for each" instead of 
// JavaScript-specific terms. Remember that you can add strings in JavaScript, so '' + 'a' 
// would result in the string 'a'. Take your time. This is the most valuable skill in programming: 
// being able to think through a problem logically.

// Under your commented pseudocode, implement your function in JavaScript. Test it with driver 
//code if you like. Anytime you'd like to run your code, you can run node explore.js from the j
// Add driver code that calls the function in order to reverse a string of your choice 
//(as long as it's not a palindrome!), and stores the result of the function in a variable.
// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.

function reverse(string) //take string into function
{
	var rev_string = ""; //create empty string that will hold the reversed word

	for (var i = string.length-1; i >= 0; i--) //start a loop at the end of the string, loop for every character in the string, move backwards through the string  
	{
		rev_string += (string[i]); //add letters to the reversed word in reverse order
	}

	return(rev_string); //print reversed string
}

//DRIVER CODE
new_str = reverse("Welcome to JS");

if (5<6)
{
	console.log(new_str)
}