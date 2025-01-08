// C Structs Cheat Sheet

// 1. Defining and Initializing Structs
// `struct` is used to define a collection of variables of different types.

struct Person {
    char name[50];
    int age;
};

struct Person person1 = {"John", 30};

// 2. Accessing Struct Members
// You can access struct members using the `.` operator.

printf("Name: %s\n", person1.name);  // Prints "John"
printf("Age: %d\n", person1.age);    // Prints 30

// 3. Pointers to Structs
// You can also have pointers to structs and use the `->` operator to access members.

struct Person *ptr = &person1;
printf("Name: %s\n", ptr->name);  // Prints "John"

// 4. Structs with Functions
// You can pass structs to functions just like any other variable.

void printPerson(struct Person p) {
    printf("Name: %s, Age: %d\n", p.name, p.age);
}

printPerson(person1);

// End of Structs Cheat Sheet
