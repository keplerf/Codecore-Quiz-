
var firstEven = function(num){
var evenNumbers = [];
  for(var i = num ; i > 0 ; i --){
    if(i % 2 == 0){
      console.log("First even number is " + i);
      evenNumbers.push(i);
    }
  }
  return evenNumbers.join(', '); // returns as String
};

firstEven(13);
