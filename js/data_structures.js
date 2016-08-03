var colors = ["pink", "orange", "brown", "green"];
var horses = ["Mr. Ed", "Lightning", "Secretariat", "George"];

colors.push("red");
horses.push("Bill");

console.log (colors);
console.log (horses);

var ourHorses = {};

for (var i = 0; i < colors.length; i++)
{
  ourHorses[horses[i]] = colors[i];
}

console.log(ourHorses);


function Car(year, make, color)
    {
      this.year = year;
      this.make = make;
      this.color = color;
      
      this.drive = function() 
      {
        console.log("Vroom, vroom!");
      };
    }
      
var saab = new Car(2013, "sedan", "black");

console.log(saab);
saab.drive();

var ford = new Car(2015, "pick up", "red");

var subaru = new Car(2000, "hatchback", "white");

var mazda = new Car(2016, "sports car", "blue");

console.log(saab+"\n")
console.log(ford, subaru, mazda);
mazda.drive();

for(var i in saab) 
{
  console.log( i + ": " + saab[i] + "\b");
}

for(var i in saab) 
{
  console.log( i + ": " + saab[i] + "\n");
}


console.log(Object.keys(saab));
console.log(saab[Object.keys(saab)[0]]);
console.log(saab[Object.keys(saab)[1]]);
console.log(saab[Object.keys(saab)[2]]);
console.log(saab[Object.keys(saab)[3]]);

 console.log(Object.entries(saab));
