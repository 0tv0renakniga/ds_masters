# Module 7 Quiz: Machine Learning Fundamentals

## Question 1
**Match the following:**
⬜ Sub-field that assists the learning process of AI  
⬜ Study inspired by the network of neurons in the brain  
⬜ Activities related to finding patterns in databases in data warehouses  
⬜ Analyzing data to predict future outcomes  
⬜ Process of processing and analyzing data to extract meaning  

⬜ Machine learning  
⬜ Deep Learning 
⬜ Data Mining 
⬜ Predictive Analytics  
⬜ Data Science 
<details>
<summary><strong>Correct Matches:</strong></summary>

✅ Machine learning → Sub-field that assists the learning process of AI  
✅ Deep Learning → Study inspired by the network of neurons in the brain  
✅ Data Mining → Activities related to finding patterns in databases in data warehouses  
✅ Predictive Analytics → Analyzing data to predict future outcomes  
✅ Data Science → Process of processing and analyzing data to extract meaning  

<strong>Explanation:</strong>
These matches correctly identify the key focus of each field:
- Machine learning is indeed a subset of AI focused on algorithms that can learn from data
- Deep learning is specifically inspired by neural networks in the human brain
- Data mining focuses on discovering patterns in large datasets, often in data warehouses
- Predictive analytics uses historical data to make predictions about future events
- Data science encompasses the entire process of working with data to extract insights
</details>

## Question 2
**Sample in machine learning is also known as: (select all that apply)**

⬜ Observation  
⬜ Instance  
⬜ Feature  
⬜ Variable  
⬜ Row  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ Observation  
✅ Instance  
⬜ Feature  
⬜ Variable  
✅ Row  

<strong>Explanation:</strong>
In machine learning terminology, a sample (one complete data point) is also commonly referred to as:
- An observation (from statistical terminology)
- An instance (common in ML literature)
- A row (when data is organized in tabular format)

Features and variables, on the other hand, refer to the individual attributes or columns in the dataset, not the complete data points.
</details>

## Question 3
**Variable in machine learning is also known as: (select all that apply)**

⬜ Sample  
⬜ Instance  
⬜ Example  
⬜ Dimension  
⬜ Field  

<details>
<summary><strong>Correct Answers:</strong></summary>

⬜ Sample  
⬜ Instance  
⬜ Example  
✅ Dimension  
✅ Field  

<strong>Explanation:</strong>
In machine learning, a variable (one attribute of the data) is also commonly referred to as:
- A dimension (especially in discussions about dimensionality)
- A field (particularly in database terminology)

Samples, instances, and examples all refer to complete data points (rows), not individual attributes.
</details>

## Question 4
**Match the following:**

⬜ Target is labeled for every sample you have in the dataset  
⬜ Target is unlabeled for every sample you have in the dataset  
⬜ Model learns from its environment through iterative feedback  

⬜ Supervised Learning 
⬜ Unsupervised Learning 
⬜ Reinforcement Learning 

<details>
<summary><strong>Correct Matches:</strong></summary>

✅ Supervised Learning → Target is labeled for every sample you have in the dataset  
✅ Unsupervised Learning → Target is unlabeled for every sample you have in the dataset  
✅ Reinforcement Learning → Model learns from its environment through iterative feedback  

<strong>Explanation:</strong>
These matches correctly describe the three main paradigms in machine learning:
- Supervised learning works with labeled data where the target outcome is known
- Unsupervised learning works with unlabeled data to find patterns without predefined targets
- Reinforcement learning involves an agent learning optimal actions through trial and error with feedback from its environment
</details>

## Question 5
**Match the following:**

⬜ Stock price analysis  
⬜ Market basket analysis  
⬜ Autonomous cars  

⬜ Supervised Learning 
⬜ Unsupervised Learning 
⬜ Reinforcement Learning

<details>
<summary><strong>Correct Matches:</strong></summary>

✅ Supervised Learning → Stock price analysis  
✅ Unsupervised Learning → Market basket analysis  
✅ Reinforcement Learning → Autonomous cars  

<strong>Explanation:</strong>
These examples correctly match the learning paradigms:
- Stock price analysis typically uses supervised learning to predict future prices based on historical labeled data
- Market basket analysis uses unsupervised learning to discover patterns in customer purchasing behavior without predefined categories
- Autonomous cars often employ reinforcement learning to learn optimal driving behaviors through interaction with the environment
</details>

## Question 6
**Match the following:**

⬜ Multi-class classification  
⬜ Regression  
⬜ Binary classification  

⬜ Predicting weather to be sunny, rainy, humid etc 
⬜ Predicting stock price 
⬜ Credit Card transaction is legitimate or fraudulent 

<details>
<summary><strong>Correct Matches:</strong></summary>

✅ Predicting weather to be sunny, rainy, humid etc → Multi-class classification  
✅ Predicting stock price → Regression  
✅ Credit Card transaction is legitimate or fraudulent → Binary classification  

<strong>Explanation:</strong>
These matches correctly identify the type of machine learning problem:
- Weather prediction with multiple possible outcomes (sunny, rainy, etc.) is a multi-class classification problem
- Stock price prediction involves estimating a continuous numerical value, making it a regression problem
- Fraud detection with two possible outcomes (legitimate or fraudulent) is a binary classification problem
</details>

## Question 7
**Testing data is used to adjust the model's parameters to reduce the errors:**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

⬜ True  
✅ False

<strong>Explanation:</strong>
This statement is false. Testing data should never be used to adjust model parameters. The purpose of testing data is to provide an unbiased evaluation of the final model's performance on unseen data. Using testing data to tune parameters would lead to overfitting and an unrealistic assessment of model performance. Training data (or a validation subset of it) should be used for parameter adjustment.
</details>

## Question 8
**For better classification using the Decision Tree Classifier, we should have a lower Gini Index.**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ True  
⬜ False

<strong>Explanation:</strong>
This statement is true. The Gini Index measures impurity or diversity in a node. A lower Gini Index indicates that a node contains samples predominantly from a single class, which is desirable for classification. When building decision trees, the algorithm aims to find splits that minimize the Gini Index, creating more homogeneous nodes that lead to better classification performance.
</details>

## Question 9
**In decision tree classification, when can we stop splitting a node? (select all that apply)**

⬜ Max tree depth is reached  
⬜ All (or X% of) samples have same class label  
⬜ Change in impurity measure is smaller than threshold  
⬜ Number of samples in node reaches minimum  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ Max tree depth is reached  
✅ All (or X% of) samples have same class label  
✅ Change in impurity measure is smaller than threshold  
✅ Number of samples in node reaches minimum  

<strong>Explanation:</strong>
All of these are valid stopping criteria (also called pre-pruning) for decision tree growth:
- Maximum tree depth prevents overly complex trees
- When all or most samples in a node have the same class, further splitting provides little benefit
- When a potential split would only marginally improve the impurity measure, it may not be worth the added complexity
- When a node contains very few samples, further splitting could lead to overfitting

These stopping criteria help control the complexity of the tree and prevent overfitting to the training data.
</details>

---

## Key Machine Learning Concepts:

1. **Terminology**: Understanding the different terms used for samples (observations, instances, rows) and variables (dimensions, fields) in machine learning

2. **Learning Paradigms**: 
   - Supervised learning (labeled data)
   - Unsupervised learning (unlabeled data)
   - Reinforcement learning (environment feedback)

3. **Problem Types**:
   - Classification (binary and multi-class)
   - Regression (continuous value prediction)

4. **Data Usage**:
   - Training data for model building and parameter tuning
   - Testing data for unbiased evaluation only

5. **Decision Trees**:
   - Gini Index as a measure of node impurity
   - Various stopping criteria to prevent overfitting

Understanding these fundamental concepts provides the foundation for more advanced machine learning topics and applications.