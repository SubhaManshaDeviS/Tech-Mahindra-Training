 let tomatoPrices = [45, 50, 60, 55, 40, 65, 75]; 
let sum = 0;
for (let price of tomatoPrices) {
    sum += price; 
}

let averagePrice = sum / tomatoPrices.length;
console.log(Average tomato price: Rs.${averagePrice.toFixed(2)});

if (averagePrice > 50) {
    console.log("Tomato has given good profit.");
} else {
    console.log("No profit from tomato.");
}
