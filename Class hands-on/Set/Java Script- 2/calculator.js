const chooseOperation = () => {
    const operation = prompt("Choose operation: add, subtract, multiply, divide  :::::::::");

    const add = (a, b) => a + b;
    const subtract = (a, b) => a - b;
    const multiply = (a, b) => a * b;
    const divide = (a, b) => {
        return {
            quotient: a / b,
            remainder: a % b
        };
    };

    const a = parseFloat(prompt("Enter first number:"));
    const b = parseFloat(prompt("Enter second number:"));

    switch (operation) {
        case "add":
            alert("Sum: " + add(a, b));
            break;
        case "subtract":
            alert("Difference: " + subtract(a, b));
            break;
        case "multiply":
            alert("Product: " + multiply(a, b));
            break;
        case "divide":
            const result = divide(a, b);
            alert("Quotient: " + result.quotient + ", Remainder: " + result.remainder);
            break;
        default:
            alert("Invalid operation");
    }
};

chooseOperation();
