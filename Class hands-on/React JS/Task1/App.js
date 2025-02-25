import React, { useState } from "react";

function App() {
  const [num, setNum] = useState("");
  const [str, setStr] = useState("");
  const [arr, setArr] = useState("");
  const [flower, setFlower] = useState("");

  // 1️⃣ Check divisibility by 13
  const isDivisibleBy13 = num % 13 === 0;
  const divisibilityMessage =
    num !== "" ? (isDivisibleBy13 ? `${num} is divisible by 13` : `${num} is not divisible by 13`) : "";

  // 2️⃣ Check string length even or odd
  const isLengthEven = str.length % 2 === 0;
  const lengthMessage =
    str !== "" ? `The length of "${str}" is ${isLengthEven ? "even" : "odd"}.` : "";

  // 3️⃣ Check array length multiple of 3
  const arrayElements = arr.split(",").filter((el) => el.trim() !== "");
  const isArrayMultipleOf3 = arrayElements.length % 3 === 0;
  const arrayMessage =
    arr !== "" ? `The array length is ${isArrayMultipleOf3 ? "a multiple" : "not a multiple"} of 3.` : "";

  // 4️⃣ Check vowel presence
  const hasVowel = /[aeiouAEIOU]/.test(str);
  const vowelMessage = str !== "" ? `The string "${str}" ${hasVowel ? "contains" : "does not contain"} vowels.` : "";

  // 5️⃣ Check if input is a flower
  const flowers = ["Rose", "Jasmine", "Lotus"];
  const isFlower = flowers.includes(flower);
  const flowerMessage = flower !== "" ? `${flower} is ${isFlower ? "" : "not "}a flower.` : "";

  return (
    <div style={{ padding: "20px", fontFamily: "Arial, sans-serif" }}>
      <h2>React Conditional Checks</h2>

      {/* 1️⃣ Check divisibility by 13 */}
      <label>Enter a number: </label>
      <input type="number" value={num} onChange={(e) => setNum(e.target.value)} />
      <p>{divisibilityMessage}</p>

      {/* 2️⃣ Check string length even or odd */}
      <label>Enter a string: </label>
      <input type="text" value={str} onChange={(e) => setStr(e.target.value)} />
      <p>{lengthMessage}</p>

      {/* 3️⃣ Check array length multiple of 3 */}
      <label>Enter an array (comma-separated): </label>
      <input type="text" value={arr} onChange={(e) => setArr(e.target.value)} />
      <p>{arrayMessage}</p>

      {/* 4️⃣ Check if string contains vowels */}
      <p>{vowelMessage}</p>

      {/* 5️⃣ Check if input is a flower */}
      <label>Enter a word: </label>
      <input type="text" value={flower} onChange={(e) => setFlower(e.target.value)} />
      <p>{flowerMessage}</p>
    </div>
  );
}

export default App;
