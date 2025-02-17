function multiTable() {
    let num = 5;
    let limit = 10; 
    
    console.log(`Multiplication Table for ${num}:`);
    for (let i = 1; i <= limit; i++) {
        console.log(`${num} x ${i} = ${num * i}`);
    }
}

multiTable();
