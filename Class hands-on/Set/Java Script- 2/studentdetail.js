const student = {
    id: 101,
    name: "Subha Mansha",
    department: "Computer Science",
    college: "PIT College",
    email: "subhamansha@example.com",
    address: {
        doorNo: "32",
        street: "Main St",
        area: "town",
        pincode: "165432"
    },
  
    displayAllDetails: function() {
        console.log(`ID: ${this.id}`);
        console.log(`Name: ${this.name}`);
        console.log(`Department: ${this.department}`);
        console.log(`College: ${this.college}`);
        console.log(`Email: ${this.email}`);
        console.log(`Address: ${this.address.doorNo}, ${this.address.street}, ${this.address.area}, ${this.address.pincode}`);
    },
   
    displayBasicDetails: function() {
        console.log(`ID: ${this.id}`);
        console.log(`Name: ${this.name}`);
        console.log(`Email: ${this.email}`);
    },
   
    displayDetailsWithAddress: function() {
        console.log(`ID: ${this.id}`);
        console.log(`Name: ${this.name}`);
        console.log(`Email: ${this.email}`);
        console.log(`Address: ${this.address.doorNo}, ${this.address.street}, ${this.address.area}, ${this.address.pincode}`);
    }
};

student.displayAllDetails();

student.displayBasicDetails();

student.displayDetailsWithAddress();

delete student.email;
delete student.displayBasicDetails;

student.displayAllDetails();
student.displayDetailsWithAddress();
