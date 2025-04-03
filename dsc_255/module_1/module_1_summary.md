
# Nearest Neighbor Classification: A Comprehensive Study Guide

## Table of Contents
1. [Introduction to Machine Learning](#introduction-to-machine-learning)
2. [The Landscape of Machine Learning](#the-landscape-of-machine-learning)
3. [Nearest Neighbor Classification](#nearest-neighbor-classification)
4. [Distance Functions](#distance-functions)
5. [Improving Nearest Neighbor Performance](#improving-nearest-neighbor-performance)
6. [Cross-Validation](#cross-validation)
7. [Speeding Up Nearest Neighbor Search](#speeding-up-nearest-neighbor-search)
8. [Key Takeaways](#key-takeaways)

## Introduction to Machine Learning

Machine learning is an approach to problem-solving that involves:
1. Assembling a dataset of examples
2. Letting the machine figure out the underlying patterns

This approach is particularly useful for tasks that are difficult to explicitly program, such as image recognition, natural language processing, and recommendation systems.

## The Landscape of Machine Learning

### Three Learning Modalities

1. **Supervised Learning**
   - Used for solving prediction problems
   - Examples: Nearest neighbor, generative models, linear regression, logistic regression, SVMs, decision trees, neural networks

2. **Unsupervised Learning**
   - Used for finding good representations of data
   - Examples: Clustering, projection, manifold learning, embedding, generative modeling

3. **Learning through Interaction**
   - Example: Reinforcement learning

### Prediction Problems: Inputs and Outputs

Basic terminology:
- **Input space (𝒳)**: The domain of possible inputs
  - Example: 32 x 32 RGB images of animals
- **Output space (𝒴)**: The range of possible outputs
  - Example: Names of 100 animals

The goal is to learn a mapping function f: 𝒳 → 𝒴 that accurately recovers the input-output pattern from examples.

### Types of Prediction Problems

1. **Classification** (Discrete output space)
   - **Binary Classification**: Output is one of two classes
     - Example: Spam detection (𝒴 = {spam, not spam})
   - **Multiclass Classification**: Output is one of multiple classes
     - Example: News article classification (𝒴 = {politics, business, sports, ...})
   - **Structured Outputs**: Output has complex structure
     - Example: Parsing (𝒴 = {parse trees})

2. **Regression** (Continuous output space)
   - Example: Pollution level prediction (𝒴 = [0, ∞))
   - Example: Life expectancy prediction (𝒴 = [0, 120])

3. **Probability Estimation** (𝒴 = [0, 1])
   - Example: Fraud detection (probability that a transaction is fraudulent)

## Nearest Neighbor Classification

### Basic Concept

Nearest neighbor classification is one of the oldest and most widely used forms of classification. The approach is remarkably simple:

1. Assemble a training set of examples with known labels
2. When given a new example to classify, find the training example that is most similar (nearest) to it
3. Assign the label of that nearest neighbor to the new example

### MNIST Example

The MNIST dataset is a collection of handwritten digits:
- Training set: 60,000 images with labels (0-9)
- Test set: 10,000 images with labels (0-9)

To classify a new image x:
1. Find its nearest neighbor amongst the training images
2. Return the label of that neighbor

### Data Representation

For MNIST:
- Images are 28 x 28 pixels (784 pixels total)
- Each pixel is a grayscale value from 0 (black) to 255 (white)
- Images are represented as 784-dimensional vectors by "stretching" the 2D image into a 1D array
- Data space: 𝒳 = ℝ<sup>784</sup>
- Label space: 𝒴 = {0, 1, ..., 9}

## Distance Functions

### Euclidean Distance

The most common distance function is Euclidean distance (ℓ<sub>2</sub> norm):

For two points x and z in ℝ<sup>m</sup>:

$$\|x-z\|_2 = \sqrt{\sum_{i=1}^{m} (x_i - z_i)^2}$$

Example: For points x = (1, 2) and z = (3, 5) in ℝ<sup>2</sup>:
- Displacement along first coordinate: 3 - 1 = 2
- Displacement along second coordinate: 5 - 2 = 3
- Euclidean distance: √(2² + 3²) = √13

### Other ℓ<sub>p</sub> Norms

For p ≥ 1, the ℓ<sub>p</sub> distance is:

$$\|x-z\|_p = \left(\sum_{i=1}^{m} |x_i - z_i|^p\right)^{1/p}$$

Special cases:
- ℓ<sub>1</sub> distance (Manhattan distance): $\|x-z\|_1 = \sum_{i=1}^{m} |x_i - z_i|$
- ℓ<sub>∞</sub> distance (Chebyshev distance): $\|x-z\|_{\infty} = \max_i |x_i - z_i|$

### Metric Properties

A distance function d: 𝒳 × 𝒳 → ℝ is a metric if it satisfies:
1. d(x, y) ≥ 0 (non-negativity)
2. d(x, y) = 0 if and only if x = y
3. d(x, y) = d(y, x) (symmetry)
4. d(x, z) ≤ d(x, y) + d(y, z) (triangle inequality)

Examples of metrics:
- ℓ<sub>p</sub> norms in ℝ<sup>m</sup>
- Edit distance between strings

Non-metric example:
- Kullback-Leibler divergence between probability distributions

## Improving Nearest Neighbor Performance

### Accuracy of Nearest Neighbor on MNIST

- Training error: 0% (perfect on training data)
  - This is misleading as the classifier will always find an exact match in the training set
- Test error: 3.09%
  - Much better than random guessing (90% error)
  - But still makes mistakes on 309 out of 10,000 test images

### Two Ways to Improve Performance

1. **Better Distance Functions**
   - Euclidean distance is not ideal for images
   - Small translations of an image can result in large Euclidean distances
   - Better alternatives:
     - **Tangent distance**: Invariant to small translations and rotations
     - **Shape context**: Invariant to a broader family of natural deformations

   Test error rates:
   | Distance Function | Error Rate (%) |
   |-------------------|----------------|
   | Euclidean (ℓ<sub>2</sub>) | 3.09 |
   | Tangent distance | 1.10 |
   | Shape context | 0.63 |

2. **K-Nearest Neighbors (K-NN)**
   - Instead of using just the single nearest neighbor, use the k nearest neighbors
   - Take a majority vote among their labels
   - For MNIST:

   | K | Test Error (%) |
   |---|----------------|
   | 1 | 3.09 |
   | 3 | 2.94 |
   | 5 | 3.13 |
   | 7 | 3.10 |
   | 9 | 3.43 |
   | 11 | 3.34 |

   - K = 3 gives the best performance in this case

## Cross-Validation

### The Problem

In real-life scenarios, there often isn't a separate test set. How do we:
1. Evaluate the performance of a classifier?
2. Choose the best parameters (like K in K-NN)?

### Hold-out Set Method

1. Let S be the training set
2. Choose a subset V ⊂ S as a validation set
3. Measure what fraction of V is misclassified by the classifier trained on S \ V
4. Once parameters are chosen, revert to using all of S for training

### Leave-One-Out Cross-Validation

1. For each point x ∈ S:
   - Find the k-nearest neighbors in S \ {x}
   - Classify x using these neighbors
2. Measure what fraction of points are misclassified

This gives a very accurate estimate of the error rate but can be computationally expensive.

### M-Fold Cross-Validation

1. Divide the training set into M equal pieces (S<sub>1</sub>, S<sub>2</sub>, ..., S<sub>M</sub>)
2. For each piece S<sub>i</sub>:
   - Classify each point in S<sub>i</sub> using the classifier trained on S \ S<sub>i</sub>
   - Let ε<sub>i</sub> = fraction of S<sub>i</sub> that is incorrectly classified
3. Take the average of these M numbers: estimated error = (ε<sub>1</sub> + ... + ε<sub>M</sub>) / M

Example: 10-fold cross-validation for MNIST
- Training set: 60,000 points
- Each fold: 6,000 points
- Classify each fold using the remaining 54,000 points
- Average the 10 error rates

## Speeding Up Nearest Neighbor Search

### The Problem

Naive nearest neighbor search requires computing the distance to every training point, which takes O(n) time for a training set of size n. This is too slow for large datasets.

### Data Structures for Fast NN Search

Several data structures can speed up nearest neighbor search:
1. Locality-sensitive hashing
2. Ball trees
3. K-d trees

These are available in standard Python libraries for nearest neighbor search.

### K-d Trees

K-d trees create a hierarchical, rectilinear spatial partition of the data:

1. For a dataset S ⊂ ℝ<sup>d</sup>:
   - Pick a coordinate 1 ≤ i ≤ d
   - Compute v = median({x<sub>i</sub> : x ∈ S})
   - Split S into two halves:
     - S<sub>L</sub> = {x ∈ S : x<sub>i</sub> < v}
     - S<sub>R</sub> = {x ∈ S : x<sub>i</sub> ≥ v}
   - Recursively apply the procedure to S<sub>L</sub> and S<sub>R</sub>

2. Two types of search for a query q:
   - **Defeatist search**: Route q to a leaf cell and return the NN in that cell (may not be the true NN)
   - **Comprehensive search**: Expand the search to other cells that might contain the true NN

## Key Takeaways

1. **Nearest neighbor classification** is a simple yet effective approach that assigns labels based on the most similar training examples.

2. **Distance functions** are crucial for nearest neighbor methods:
   - Euclidean distance is common but not always optimal
   - Domain-specific distance functions can significantly improve performance

3. **K-nearest neighbors** often performs better than single nearest neighbor by taking a majority vote among multiple neighbors.

4. **Cross-validation** provides a way to estimate classifier performance and choose parameters when a separate test set is not available.

5. **Efficient data structures** like k-d trees can dramatically speed up nearest neighbor search for large datasets.

6. **Training error** is often misleading (especially for nearest neighbor, where it's always 0); test error or cross-validation error are better measures of performance.
