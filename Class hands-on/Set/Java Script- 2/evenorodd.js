function EvenOrOdd(num) {
    var sum = 0;
    while (num > 0) {
        sum += num % 10; 
        num = Math.floor(num / 10);
    }
    if (sum % 2 === 0) {
        console.log("sum  " + sum + " is even");
    } else {
        console.log("sum " + sum + " is Odd");
    }
}

EvenOrOdd(435723);
