let year = Number(prompt("Enter the year:"));
let month = Number(prompt("Enter the month (1-12):"));
function isLeapYear(y) {
    return (y % 4 == 0 && y % 100 !== 0) || (y % 400 == 0);
}
if (isLeapYear(year)) {
    if (month == 2) {
        console.log("The year is a leap year and the month is February with 29 days.");
    } else {
        console.log("The year is a leap year and the month is not February.");
    }
} else {
    console.log("The given year is not a leap year.");
}
