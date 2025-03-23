# Module 9 Quiz: Natural Language Processing

## Question 1
**Which of the following are applications of NLP? (select all that apply)**

⬜ Automatic translation  
⬜ Chatbots  
⬜ Image recognition  
⬜ Virtual Assistants  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ Automatic translation  
✅ Chatbots  
⬜ Image recognition  
✅ Virtual Assistants  

<strong>Explanation:</strong>
Natural Language Processing (NLP) is concerned with the interaction between computers and human language. Automatic translation (like Google Translate), chatbots (which understand and respond to text input), and virtual assistants (like Siri or Alexa) all involve processing and generating human language, making them clear applications of NLP. Image recognition, however, is a computer vision task rather than an NLP task, as it deals with visual data rather than language data.
</details>

## Question 2
**Which of the following describes tokenization in Natural Language Processing (NLP)?**

⬜ Removing stop words and punctuation from text.  
⬜ Converting text into numerical vectors for machine learning models.  
⬜ Translating text from one language to another.  
⬜ Breaking down text into sentences or smaller meaningful units like words or subwords.  

<details>
<summary><strong>Correct Answer:</strong></summary>

⬜ Removing stop words and punctuation from text.  
⬜ Converting text into numerical vectors for machine learning models.  
⬜ Translating text from one language to another.  
✅ Breaking down text into sentences or smaller meaningful units like words or subwords.  

<strong>Explanation:</strong>
Tokenization is the process of breaking down text into smaller units called tokens. These tokens can be sentences, words, subwords, or even characters, depending on the specific tokenization approach. This is typically one of the first steps in any NLP pipeline, as it transforms raw text into discrete elements that can be processed further. Removing stop words is a separate text preprocessing step, vectorization converts tokens into numerical representations, and translation is a complex NLP application that uses tokenization as just one of many steps.
</details>

## Question 3
**Which of the following are characteristics of the bag of words model? (select all that apply)**

⬜ Simple model  
⬜ Maintains sentence structure  
⬜ Useful to identify sentiment  
⬜ Ordered collection  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ Simple model  
⬜ Maintains sentence structure  
✅ Useful to identify sentiment  
⬜ Ordered collection  

<strong>Explanation:</strong>
The Bag of Words (BoW) model is a simple text representation that counts word occurrences in a document while disregarding grammar and word order. Its key characteristics include:

1. Simplicity - it's straightforward to implement and understand
2. Effectiveness for sentiment analysis and topic classification, as the presence of certain words often correlates with sentiment or topics
3. Loss of word order and sentence structure - it treats text as an unordered "bag" of words
4. Disregard for context and semantics beyond individual word frequencies

The model does not maintain sentence structure or word order (it's specifically an unordered collection), which is both its main limitation and the reason for its simplicity.
</details>

## Question 4
**Stop words are words that are significant to the NLP task.**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

⬜ True  
✅ False  

<strong>Explanation:</strong>
This statement is false. Stop words are actually common words that are typically filtered out during text preprocessing because they are considered to have little semantic value for many NLP tasks. Examples include articles ("the", "a", "an"), prepositions ("in", "on", "at"), conjunctions ("and", "but", "or"), and other high-frequency words that appear in almost every document. Removing stop words helps reduce the dimensionality of text data and focuses the analysis on more meaningful content words. However, it's worth noting that for some specific NLP tasks (like sentiment analysis of short texts), stop words might actually be important and should be retained.
</details>

## Question 5
**A compound score of 0.8 in sentiment analysis indicates an overall**

⬜ Positive Score  
⬜ Neutral Score  
⬜ Negative Score  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ Positive Score  
⬜ Neutral Score  
⬜ Negative Score  

<strong>Explanation:</strong>
In sentiment analysis, particularly when using tools like VADER (Valence Aware Dictionary and sEntiment Reasoner), the compound score is a normalized score that represents the overall sentiment of the text. The score ranges from -1 (extremely negative) to +1 (extremely positive). A compound score of 0.8 is quite high on the positive side, indicating strong positive sentiment. Generally, scores above 0.05 are considered positive, scores below -0.05 are considered negative, and scores between -0.05 and 0.05 are considered neutral.
</details>

## Question 6
**Which of the following a GPE in the following sentence:**
**"Steve Jobs founded Apple in Cupertino in 1976."**

⬜ Steve Jobs  
⬜ Cupertino  
⬜ Apple  
⬜ 1976  

<details>
<summary><strong>Correct Answer:</strong></summary>

⬜ Steve Jobs  
✅ Cupertino  
⬜ Apple  
⬜ 1976  

<strong>Explanation:</strong>
In Named Entity Recognition (NER), GPE stands for "Geopolitical Entity," which refers to countries, cities, states, and other geographically-defined political entities. In the given sentence, "Cupertino" is a city in California, making it a GPE. "Steve Jobs" would be classified as a PERSON, "Apple" as an ORGANIZATION, and "1976" as a DATE. NER systems like spaCy are trained to identify these different types of named entities in text, which is valuable for information extraction and text understanding.
</details>

## Question 7
**The blank pipeline has absolutely no functionality (modules).**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

⬜ True  
✅ False  

<strong>Explanation:</strong>
This statement is false. In the context of NLP libraries like spaCy, a blank pipeline still has basic functionality even though it doesn't include pre-trained models for specific tasks. A blank pipeline typically includes the tokenizer and the ability to process text into tokens, which is the fundamental building block for NLP tasks. What it lacks are the trained components for tasks like part-of-speech tagging, dependency parsing, named entity recognition, etc. Blank pipelines are useful when you want to build a custom pipeline from scratch or when you want to add only specific components that are relevant to your task.
</details>

---

## Key NLP Concepts:

1. **Applications of NLP**: Language technologies including translation, conversational agents, and virtual assistants

2. **Text Preprocessing**:
   - Tokenization: Breaking text into meaningful units
   - Stop word removal: Filtering out common words with limited semantic value

3. **Text Representation Models**:
   - Bag of Words: Simple frequency-based representation that ignores word order
   - Limitations: Loss of context and structural information

4. **Sentiment Analysis**:
   - Compound scores: Normalized metrics indicating overall sentiment polarity
   - Scale interpretation: Higher positive values indicate stronger positive sentiment

5. **Named Entity Recognition (NER)**:
   - Entity types: Categories like PERSON, ORGANIZATION, GPE (Geopolitical Entity), DATE
   - Applications: Information extraction and structured data creation from unstructured text

6. **NLP Pipelines**:
   - Component-based architecture: Modular processing steps for text analysis
   - Blank pipelines: Basic functionality without pre-trained task-specific models

Understanding these fundamental NLP concepts provides the foundation for text analysis, language understanding, and building language-based applications.