// C Pointers Cheat Sheet

// 1. Declaring and Initializing Pointers
// Pointers store the memory address of a variable.

int x = 5;
int *ptr = &x;  // ptr now holds the address of x

// 2. Dereferencing Pointers
// Dereferencing a pointer gives access to the value stored at that address.

printf("Value of x: %d\n", *ptr);  // Prints 5

// 3. Pointer Arithmetic
// You can perform arithmetic operations on pointers to move to different memory locations.

int arr[] = {10, 20, 30};
int *p = arr;
printf("%d\n", *p);  // Prints 10
p++;
printf("%d\n", *p);  // Prints 20

// 4. Dynamic Memory Allocation
// You can dynamically allocate memory using `malloc` and free it using `free`.

int *arr = (int *)malloc(3 * sizeof(int));
arr[0] = 10;
arr[1] = 20;
arr[2] = 30;
free(arr);  // Don't forget to free dynamically allocated memory!

// End of Pointers Cheat Sheet
