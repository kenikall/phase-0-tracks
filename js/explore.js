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