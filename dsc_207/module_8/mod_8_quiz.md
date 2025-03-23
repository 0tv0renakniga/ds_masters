# Module 8 Quiz: Machine Learning Fundamentals Part 2

## Question 1
**Match the following:**

⬜ Training data  
⬜ Validation data  
⬜ Test data  

⬜ Adjust Model parameters  
⬜ Estimate generalization performance  
⬜ Evaluate performance on new data  

<details>
<summary><strong>Correct Matches:</strong></summary>

✅ Training data → Adjust Model parameters  
✅ Validation data → Estimate generalization performance  
✅ Test data → Evaluate performance on new data  

<strong>Explanation:</strong>
These matches correctly identify the purpose of each dataset in the machine learning workflow:

- Training data: is used to fit the model and adjust its parameters during the learning process
- Validation data: helps estimate how well the model generalizes to unseen data and guides hyperparameter tuning
- Test data: provides a final, unbiased evaluation of model performance on completely new data that wasn't used in training or validation
</details>

## Question 2
**Least squares method helps find the best fitting line through the samples.**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ True  
⬜ False

<strong>Explanation:</strong>
This statement is true. The least squares method is a mathematical approach used in linear regression to find the line of best fit by minimizing the sum of squared differences between observed values and the values predicted by the linear model. It provides an optimal solution for finding the regression line that best represents the relationship between variables in the data.
</details>

## Question 3
**Match the following regarding Linear regression feature coefficients for Insurance charges (dataset discussed in the video).**

⬜ Positive coefficients  
⬜ Negative coefficients  
⬜ Close to Zero  

⬜ charges increase as feature value increases  
⬜ charges decreases as feature value increases  
⬜ there have little to no effect on charges  

<details>
<summary><strong>Correct Matches:</strong></summary>

✅ Positive coefficients → charges increase as feature value increases  
✅ Negative coefficients → charges decreases as feature value increases  
✅ Close to Zero → there have little to no effect on charges  

<strong>Explanation:</strong>
In linear regression, coefficients indicate the relationship between features and the target variable:

- Positive coefficients: mean that as the feature value increases, the predicted value (insurance charges in this case) also increases
- Negative coefficients: mean that as the feature value increases, the predicted value decreases
- Coefficients close to zero: indicate that the corresponding feature has minimal impact on the prediction, regardless of its value
</details>

## Question 4
**Which of these is not an example of a cluster analysis task?**

⬜ Segment customer base into groups  
⬜ Characterize different weather patterns for a region  
⬜ Predict stock price of a particular company  
⬜ Group News Articles into categories  
⬜ Discover crime hotspots  

<details>
<summary><strong>Correct Answer:</strong></summary>

⬜ Segment customer base into groups  
⬜ Characterize different weather patterns for a region  
✅ Predict stock price of a particular company  
⬜ Group News Articles into categories  
⬜ Discover crime hotspots  

<strong>Explanation:</strong>
Predicting stock prices is a regression task (predicting a continuous value), not a clustering task. Clustering is an unsupervised learning technique that groups similar data points together based on their features without predicting specific values. All the other options involve finding natural groupings in data, which is the essence of cluster analysis:

- Customer segmentation groups similar customers
- Weather pattern characterization identifies similar weather conditions
- News article grouping categorizes similar content
- Crime hotspot discovery identifies areas with similar crime patterns
</details>

## Question 5
**Which of the following are similarity metrics in cluster analysis? (select all that apply)**

⬜ Cosine Similarity  
⬜ Manhattan Distance  
⬜ Euclidian Distance  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ Cosine Similarity  
✅ Manhattan Distance  
✅ Euclidian Distance  

<strong>Explanation:</strong>
All three are valid similarity or distance metrics used in cluster analysis:

- Euclidean Distance: measures the straight-line distance between two points in Euclidean space
- Manhattan Distance: (also called taxicab or city block distance) measures distance along axes at right angles
- Cosine Similarity: measures the cosine of the angle between two vectors, focusing on orientation rather than magnitude

The choice of metric depends on the specific characteristics of the data and the clustering requirements.
</details>

## Question 6
**Whatever the choice of initial centroids is, the final clusters are always the same.**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

⬜ True  
✅ False

<strong>Explanation:</strong>
This statement is false. In centroid-based clustering algorithms like K-means, the initial placement of centroids can significantly impact the final cluster assignments. K-means is sensitive to initialization and can converge to different local optima depending on the starting positions of centroids. This is why techniques like K-means++ or running the algorithm multiple times with different initializations are often used to find more optimal clustering solutions.
</details>

## Question 7
**Match the following regarding cluster overlap based on silhouette score values:**

⬜ Positive score  
⬜ Near Zero  
⬜ Negative Score  

⬜ points are in small, tight and nicely separated clusters  
⬜ points are at the edges of 2 clusters  
⬜ points are misclassified  

<details>
<summary><strong>Correct Matches:</strong></summary>

✅ Positive score → points are in small, tight and nicely separated clusters  
✅ Near Zero → points are at the edges of 2 clusters  
✅ Negative Score → points are misclassified  

**Explanation:**
The silhouette score measures how well each data point fits within its assigned cluster compared to other clusters:

- **Positive scores (closer to 1)** indicate that points are well-clustered, with clear separation between clusters
- **Scores near zero** suggest that points lie at the boundary between two clusters, indicating potential overlap
- **Negative scores (closer to -1)** suggest that points may have been assigned to the wrong cluster, as they are closer to another cluster than their own

Silhouette scores provide a valuable metric for evaluating clustering quality without ground truth labels.
</details>

---

## Key Machine Learning Concepts:

1. **Data Splitting**: Understanding the distinct roles of training, validation, and test datasets in the model development process

2. **Linear Regression**:
   - Least squares method for finding optimal coefficients
   - Interpretation of coefficient values (positive, negative, near zero)

3. **Clustering Fundamentals**:
   - Appropriate use cases for cluster analysis
   - Distance and similarity metrics (Euclidean, Manhattan, Cosine)
   - Impact of centroid initialization on final results
   - Evaluation using silhouette scores

These concepts form the foundation for effective implementation and interpretation of basic machine learning models, particularly in regression and clustering applications.
