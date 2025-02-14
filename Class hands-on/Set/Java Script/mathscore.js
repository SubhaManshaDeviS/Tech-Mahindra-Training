var mathscore= prompt("Enter the marks of the student: ");
mathscore = Number(mathscore);
if(mathscore == 100){
    console.log("Phenomenal!!!");
}else if(mathscore>85){
    console.log("Excellant!");
}else if (mathsScore >= 71 && mathsScore <= 85) {
    console.log("Good work!");
} else if (mathsScore >= 51 && mathsScore <= 70) {
    console.log("Practice well!");
} else {
    console.log("Hard work is needed");
}
