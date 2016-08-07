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

//DRIVER CODE
console.log(longest_word(["0", "00", "000", "0000"]));

console.log(longest_word(["0000", "000", "00", "0"]));

console.log(longest_word(["00","0","0000", "000"]));