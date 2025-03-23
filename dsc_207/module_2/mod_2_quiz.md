# Module 2 Quiz: NumPy Fundamentals

## Question 1
**Why do we use libraries? (Choose all that apply)**

⬜ Libraries are mandatory for writing code  
⬜ Libraries reduce programmer effort  
⬜ Libraries are often faster than manually written code  
⬜ Libraries are already heavily tested  

<details>
<summary><strong>Correct Answers:</strong></summary>

⬜ Libraries are mandatory for writing code  
✅ Libraries reduce programmer effort  
✅ Libraries are often faster than manually written code  
✅ Libraries are already heavily tested  

<strong>Explanation:</strong>
Libraries provide pre-written, optimized code that saves development time, improves performance, and has been thoroughly tested by the community. While libraries are extremely useful, they are not mandatory for writing code - you can write code without using libraries, though it would be inefficient for many tasks.
</details>

## Question 2
**Given the 2D array, `arr=np.array([[1,2,3],[4,5,6],[7,8,9]])`, which of the following commands would return `array([[ 2, 8, 14], [ 4, 10, 16], [ 6, 12, 18]])`?**

⬜ arr=np.matmul(arr,[2]) & arr=np.transpose(arr)  
⬜ arr=np.transpose(arr) & arr=arr*[2]  
⬜ arr=arr**[2] & arr=np.transpose(arr)  
⬜ arr=np.linalg.inv(arr)  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ arr=np.transpose(arr) & arr=arr*[2]  

</details>

## Question 3
**Which of the following gives the number of dimensions of the numpy array arr?**

⬜ arr.dim  
⬜ type(arr)  
⬜ arr.ndim  
⬜ arr.shape  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ arr.ndim

<strong>Explanation:</strong>
In NumPy, the `ndim` attribute returns the number of dimensions (or axes) of an array. The `shape` attribute returns a tuple with the size of each dimension, `type()` returns the data type of the object, and `dim` is not a valid NumPy array attribute.
</details>



## Question 4
**Given the following numpy array: `new_array = np.array([1,2,3], dtype=np.complex128)`, what will be the output of `new_array.itemsize`?**

⬜ 16  
⬜ 2  
⬜ 4  
⬜ 32  
⬜ 8  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ 16

<strong>Explanation:</strong>
The `itemsize` attribute returns the size in bytes of each element in the array. For `complex128` data type, each element consists of two 64-bit (8-byte) floating-point numbers (real and imaginary parts), totaling 16 bytes per element.
</details>

## Question 5
**Array Slicing: Given the numpy array `arr[1,2,3,4,5,6,7,8,9]`, which of the following ways gives us the last 4 elements? (Choose all that apply)**

⬜ arr[5::1]  
⬜ arr[6:9]  
⬜ arr[5,6,7,8]  
⬜ arr[5:9]  
⬜ arr[-4:]  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ arr[5::1]  
⬜ arr[6:9]  
⬜ arr[5,6,7,8]  
✅ arr[5:9]  
✅ arr[-4:]  

<strong>Explanation:</strong>

- `arr[5::1]` starts at index 5 and takes all elements with step 1, giving [6,7,8,9]
- `arr[5:9]` takes elements from index 5 up to (but not including) index 9, giving [6,7,8,9]
- `arr[-4:]` takes the last 4 elements, giving [6,7,8,9]
- `arr[6:9]` would give only [7,8,9] (3 elements)
- `arr[5,6,7,8]` is incorrect syntax for slicing; it would be used for multi-dimensional indexing
</details>

## Question 6
**Given a numpy array `arr = np.array([1,2.5,'three',np.nan])`, what is the result of `arr.dtype`?**

⬜ <U32 - String  
⬜ np.nan  
⬜ Float64  
⬜ Int32  
⬜ ndarray  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ <U32 - String

<strong>Explanation:</strong>
When a NumPy array contains mixed data types including strings, NumPy will convert all elements to strings to maintain homogeneity. The `<U32` data type indicates a 32-character Unicode string. The numeric values and `np.nan` are converted to their string representations.

</details>



## Question 7
**Reshape changes the dimensions of the original array, whereas resize does not.**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ False

<strong>Explanation:</strong>
This statement is false. Both `reshape` and `resize` change the dimensions of an array, but they work differently:
- `reshape` returns a new view of the array with the new shape (original array remains unchanged)
- `resize` modifies the array in-place, changing its shape and size (may add or remove elements)
</details>

## Question 8
**Which of the following arrays have shapes that allow broadcast (eg. a+b)? (Choose all the apply)**

⬜ (3,2) & (2,)  
⬜ (7,6) & (7,1)  
⬜ (3,2) & (3,)  
⬜ (4,4) & (4,2)  
⬜ (4,3) & (3,1)  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ (3,2) & (2,)  
✅ (7,6) & (7,1)  
⬜ (3,2) & (3,)  
⬜ (4,4) & (4,2)  
⬜ (4,3) & (3,1)  

<strong>Explanation:</strong>
NumPy broadcasting rules allow operations between arrays of different shapes when:
1. The arrays have the same number of dimensions and the length of each dimension is either the same or one of them is 1.
2. When the number of dimensions is different, the smaller array is "padded" with dimensions of size 1 on its leading (left) side.

- (3,2) & (2,): The (2,) array is broadcast across the second dimension of (3,2) ✓
- (7,6) & (7,1): The (7,1) array is broadcast across the second dimension of (7,6) ✓
- (3,2) & (3,): The shapes are incompatible because (3,) would be broadcast to (3,1) ✗
- (4,4) & (4,2): The shapes are incompatible (second dimensions don't match) ✗
- (4,3) & (3,1): The shapes are incompatible (first dimensions don't match) ✗
</details>

## Question 9
**Assume `import numpy as np`. Given a numpy dataset with temperature and rainfall columns, how can we determine the correlation between the two variables using numpy? (Enter answer without spaces)**

<details>
<summary><strong>Correct Answers:</strong></summary>
 
✅ np.corrcoef(rainfall,temperature)

<strong>Explanation:</strong>
The `np.corrcoef()` function computes the Pearson correlation coefficient matrix for given variables. Both answers are correct because the correlation between two variables is symmetric - the correlation of temperature with rainfall is the same as the correlation of rainfall with temperature.

</details>

## Question 10
**While a Python list can contain different data types within a single list, all of the elements in a NumPy array should be homogeneous.**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ True  
⬜ False

<strong>Explanation:</strong>
This statement is true. NumPy arrays are designed to be homogeneous, meaning all elements should be of the same data type. This homogeneity allows for efficient storage and vectorized operations. When you try to create a NumPy array with mixed types, NumPy will typically convert all elements to a common type that can represent all values (often strings or objects), which may not be optimal for numerical operations.
</details>

---

## Key NumPy Concepts:

1. **Libraries**: Provide pre-written, optimized, and tested code that reduces development effort
2. **Array Operations**: Support for efficient mathematical operations including matrix multiplication and broadcasting
3. **Array Attributes**: Properties like `ndim`, `shape`, `dtype`, and `itemsize` provide information about array structure
4. **Slicing**: Flexible syntax for accessing subsets of array elements
5. **Data Types**: NumPy arrays are homogeneous, with all elements sharing the same data type
6. **Reshaping**: Methods to change array dimensions while preserving the data
7. **Broadcasting**: Rules that allow operations between arrays of different shapes
8. **Statistical Functions**: Built-in methods for statistical analysis like correlation coefficients

Understanding these NumPy fundamentals provides a strong foundation for efficient numerical computing in Python.