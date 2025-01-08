// C Arrays Cheat Sheet

// 1. Declaring Arrays
// Arrays are collections of elements of the same type.

int arr[5] = {1, 2, 3, 4, 5};

// 2. Accessing Array Elements
// You can access array elements using the index, starting from 0.

printf("%d\n", arr[0]);  // Prints 1
printf("%d\n", arr[4]);  // Prints 5

// 3. Multidimensional Arrays
// Arrays can have more than one dimension, like matrices.

int matrix[2][3] = {
    {1, 2, 3},
    {4, 5, 6}
};
printf("%d\n", matrix[1][2]);  // Prints 6

// 4. Array of Pointers
// You can create arrays of pointers.

int *arrOfPtrs[5];
arrOfPtrs[0] = &arr[0];

// End of Arrays Cheat Sheet
