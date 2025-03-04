document.getElementById("enrollment-form").addEventListener("submit", function(event) {
    event.preventDefault();
    const name = document.getElementById("name").value;
    const age = document.getElementById("age").value;
    const phone = document.getElementById("phone").value;
    const email = document.getElementById("email").value;
    const course = document.getElementById("course").value;
    
    alert(`Successfully Submitted!\nName: ${name}\nAge: ${age}\nPhone: ${phone}\nEmail: ${email}\nCourse: ${course}`);
});