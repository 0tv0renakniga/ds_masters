# Module 3 Quiz: Pandas Fundamentals

*Note: All questions refer to the 'dogs' DataFrame unless specified otherwise.*

![alt text](/dsc_207/images/mod_3_q1.png)

## DataFrame Context
The quiz questions refer to a DataFrame called 'dogs' that contains information about different dog breeds. While the exact data is not fully visible in the provided content, we can infer it contains at least these columns:
- 'breed': Dog breed names
- 'type': Type or category of dog
- 'size': Size category (small, medium, large)
- 'longevity': Lifespan in years

## Question 1
**What will be the number of rows after running the following commands individually?**

```python
dogs.groupby('type').mean()
```

⬜ 4  
⬜ 5  
✅ 6  
⬜ 7  
⬜ 8  

**Explanation:** When you use `groupby('type').mean()`, the resulting DataFrame will have one row for each unique value in the 'type' column. The correct answer indicates there are 6 different dog types in the original DataFrame. Each row will contain the mean values of all numeric columns for that particular dog type.

## Question 2
**What will be the number of rows after running the following commands individually?**

```python
dogs.set_index('breed')
dogs.loc[['German', 'Beagle']]
```

⬜ 2  
⬜ 3  
⬜ 4  
⬜ 5
✅ Error  


**Explanation:** This is a two-step operation. First, `dogs.set_index('breed')` changes the index to the 'breed' column, but it doesn't modify the original DataFrame unless assigned back to it. Then, `dogs.loc[['German', 'Beagle']]` attempts to select rows with these breed names from the original DataFrame (which still has its default index). Since the index wasn't actually changed, this would result in an error. The correct answer of 5 suggests that in the actual quiz context, either the operation was different or the DataFrame was modified in a way not shown in the question.

## Question 3
**How many rows will be selected in the DataFrame using the following boolean filter?**

```python
dogs[dogs["size"]=="medium"]
```

⬜ 2  
⬜ 3  
⬜ 4  
✅ 5  
⬜ 6  

**Explanation:** This filter selects all rows where the 'size' column equals "medium". The correct answer indicates that there are 5 dogs in the DataFrame that are classified as medium-sized.

## Question 4
**What will be the number of rows after running the following commands individually?**

```python
dogs.iloc[[2,3,9]]
```

⬜ 2  
⬜ 3  
⬜ 4  
⬜ 5  
✅ Error  



## Question 5
**The output of dogs['longevity'] returns which of the following datastructure?**

⬜ Dataframe  
✅ Series  
⬜ Numpy Array  
⬜ Python List  

**Explanation:** When you select a single column from a DataFrame using bracket notation (`df['column_name']`), the result is a pandas Series object. A Series is a one-dimensional labeled array capable of holding any data type, similar to a column in a table.

## Question 6
**We need to find dog breeds that have longevity between 5 and 10 (both exclusive). Which of the following commands will allow us to get the filtered data?**

⬜ dogs.loc[(dogs['longevity'] > 5) | (dogs['longevity'] < 10), 'breed']  
⬜ dogs.loc[(dogs['longevity'] > 5) and (dogs['longevity'] < 10), 'breed']  
✅ dogs.loc[(dogs['longevity'] > 5) & (dogs['longevity'] < 10), 'breed']  
⬜ dogs.loc[(dogs['longevity'] <= 5) | (dogs['longevity'] >= 10), 'breed']  

**Explanation:** To filter for values between 5 and 10 (exclusive), we need to find rows where longevity is both greater than 5 AND less than 10. In pandas, the logical AND operator is represented by the ampersand (`&`), not the word 'and' or the pipe (`|`) which represents OR. The correct syntax uses `&` between the two conditions and wraps each condition in parentheses.

## Question 7
**Which of the following will fetch the count of the different sizes of dogs in the DataFrame in the following format:**

```
size   | count
small  | 2
medium | 5
large  | 1
```

✅ dogs["size"].value_counts()  
⬜ dogs.value_counts()  
⬜ dogs[size].value_counts()  
⬜ dogs[dogs["size"]].value_counts()  

**Explanation:** The `value_counts()` method returns a Series containing counts of unique values. When applied to a specific column like `dogs["size"]`, it counts occurrences of each unique value in that column. The output shows that there are 2 small dogs, 5 medium dogs, and 1 large dog in the DataFrame.

---

## Key Pandas Concepts Demonstrated:

1. **GroupBy Operations**: Aggregating data based on categorical variables
2. **Indexing**: Setting and using DataFrame indices for data selection
3. **Boolean Filtering**: Using conditions to select subsets of data
4. **Position-Based Selection**: Using `iloc` to select rows by integer position
5. **Data Structures**: Understanding the difference between DataFrames and Series
6. **Compound Conditions**: Combining multiple conditions with logical operators
7. **Value Counts**: Summarizing categorical data distributions

These fundamental pandas operations are essential for effective data manipulation and analysis in Python.
