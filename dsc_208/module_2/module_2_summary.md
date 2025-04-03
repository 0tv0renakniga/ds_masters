
# Data Collection and Governance: A Comprehensive Study Guide

## Table of Contents
1. [Introduction to Data Science Lifecycle](#introduction-to-data-science-lifecycle)
2. [Data Organization and File Formats](#data-organization-and-file-formats)
3. [Data Acquisition](#data-acquisition)
4. [Data Reorganization and Preparation](#data-reorganization-and-preparation)
5. [Data Labeling and Amplification](#data-labeling-and-amplification)
6. [Data Governance and Privacy](#data-governance-and-privacy)
7. [Review Questions and Answers](#review-questions-and-answers)

## Introduction to Data Science Lifecycle

### Time Allocation in Data Science
According to various industry surveys:
- Data scientists spend the majority of their time on data preparation, cleaning, and collection
- Only a small portion of time is spent on actual model training and selection
- This highlights the importance of understanding data management concepts

### The Sourcing Stage
The sourcing stage is where raw datasets are transformed into "analytics/ML-ready" datasets. This stage involves:

1. **Acquiring** - Obtaining data from various sources
2. **Reorganizing** - Restructuring data for analysis
3. **Cleaning** - Handling errors, missing values, etc.
4. **Data/Feature Engineering** - Creating features for analytics/ML
5. **Labeling & Amplification** - Adding labels and expanding datasets (when needed)

## Data Organization and File Formats

### Data Modalities
Modern data-intensive applications typically work with multiple data modalities:
- Structured data (e.g., relational data)
- Sequence data (e.g., IoT time series)
- Semistructured data (e.g., JSON logs)
- Graph-structured data (e.g., social media)
- Text files, documents (e.g., reviews)
- Multimedia data (images, audio, video)
- Multimodal files (e.g., PDFs, notebooks)

### Key Concepts
- **File**: A persistent sequence of bytes that stores a logically coherent digital object
- **File Format**: An application-specific standard for interpreting a file's bytes
- **Metadata**: Summary information about file content stored with the file itself
- **Directory**: A cataloging structure with references to files and other directories
- **Database**: An organized collection of interrelated data
- **Data Model**: An abstract model defining data organization in a formal way

### Structured Data Models

#### 1. Relation (Relational Database)
- Organized as tables with rows and columns
- Most RDBMSs serialize relations as binary file(s), often compressed
- Examples: Customer database, inventory management systems

#### 2. DataFrame
- Similar to relations but with more flexibility
- Typically serialized as restricted ASCII text file (TSV, CSV, etc.)
- Examples: Pandas DataFrames for data analysis, R data frames

#### 3. Matrix/Tensor
- Mathematical structures for numerical data
- Can be serialized as binary or layered on relations
- Examples: Image data (as tensors), recommendation systems (user-item matrices)

#### 4. Sequence/Time-series
- Ordered data points, often with temporal component
- Can layer on Relations, Matrices, or DataFrames
- Examples: Stock prices, sensor readings, IoT device data

#### Comparison of Structured Data Models
| Feature | Relation | Matrix | DataFrame |
|---------|----------|--------|-----------|
| Ordering | Orderless on both axes | Has row/col numbers | Has row/col numbers |
| Schema Flexibility | Pre-defined schema | Cells are numbers | No pre-defined schema; mixed types |
| Transpose | Not supported | Supported | Supported |

### Semistructured Data Models

#### 1. Tree-Structured
- Hierarchical organization of data
- Typically serialized as ASCII text (JSON, YML, XML)
- Examples: Configuration files, web API responses

#### 2. Graph-Structured
- Represents relationships between entities
- Often serialized with JSON or similar formats
- Examples: Social networks, knowledge graphs

### File Formats for Data Lakes

**Data Lake**: Loose coupling of data file format for storage and data processing stack

#### Parquet vs. Text-Based Files (CSV, JSON)
| Aspect | Parquet | Text-Based (CSV, JSON) |
|--------|---------|------------------------|
| Storage | Compressed format (up to 10x smaller) | Larger size |
| Column Pruning | Can read only needed columns | Must read entire file |
| Schema | Rich metadata, stats inside format | Limited or no metadata |
| Complex Types | Can store in a column | Limited support |
| Human-readability | Cannot open with text apps | Human-readable |
| Mutability | Immutable/read-only | Can be edited |
| Adoption | Growing but less universal | More pervasive support |

## Data Acquisition

### Data Sources
Different sources have different query languages and/or APIs:
- Structured data: Typically managed by RDBMSs; queried using SQL
- Semistructured data: Exported from key-value stores (e.g., MongoDB)
- Graph data: Typically managed by graph DBMSs such as Neo4j
- JSON logs, text files, multimedia: typically stored as files on S3, HDFS, etc.

### Examples of Data Acquisition
1. **Recommendation System (e.g., Netflix)**
   - User data and past click logs
   - Movie data
   - Movie images

2. **Social Media Analytics**
   - Tweets as JSON
   - Structured metadata
   - Graph data
   - Entity dictionaries

### Challenges in Data Acquisition
1. **Heterogeneity**: Multiple data sources/modalities
   - Mitigation: Evaluate if all data sources are necessary

2. **Access Control**: Security and authentication policies
   - Mitigation: Learn organization's data security protocols

3. **Volume**: Large amounts of data
   - Mitigation: Determine if all data is needed

4. **Scale**: Inefficient to copy files individually
   - Mitigation: Use automated workflow tools (e.g., AirFlow)

5. **Manual Errors**: Human mistakes in data handling
   - Mitigation: Automate processes where possible

### Dataset Discovery
- Organizations build "data discovery" tools to help find relevant datasets
- Metadata standards (e.g., schema.org/Dataset) help catalog datasets
- Foreign keys suggest possible joins between tables
- Example: GOODS (Google) catalogs billions of tables, extracts schema, assigns versions and owners

## Data Reorganization and Preparation

### Common Steps
- Change file formats (e.g., export table → CSV → TFRecords)
- Decompression (e.g., multimedia)
- Key-key joins for multimodal data
- Key-FK joins for relational data

### Examples
1. **Fraud Detection in Banking**
   - Large single-table CSV file on HDFS
   - Joins to denormalize
   - Flatten JSON records

2. **Image Captioning on Social Media**
   - Large binary file with image tensor and string per line
   - Fuse JSON records
   - Extract image tensors

### Best Practices
1. **Automation**: Use scripts for reorganization workflows (e.g., Airflow)
2. **Documentation**: Maintain notes/READMEs for code
3. **Provenance**: Manage metadata on source/rationale for each data source and feature
4. **Versioning**: Maintain logs of what version has what and when

### Tools for Data Reorganization
- "Feature stores" help catalogue ML data (e.g., Uber's Michelangelo)
- "ML platforms" streamline reorganization workflows (e.g., TensorFlow Extended)
- Lightweight and flexible schemas for automated data validation

## Data Labeling and Amplification

### Labeling Concepts
- **Labeling**: Process of annotating an example with ground truth for a prediction task
- Labels are task-specific and data type-specific

### Types of Prediction Applications (by label source)
1. **Data-generating process offers labels naturally**
   - Examples: Customer churn prediction, forecasting

2. **Product/service users offer labels (in)directly**
   - Examples: Email spam filters, online advertising, product recommendations

3. **Need application-specific extra effort for labels**
   - Examples: Radiology, self-driving cars, species classification

### Programmatic Labeling
**Basic Idea**: Write programs/rules/heuristics to label examples en masse

**Pros**:
- Improved labeling productivity
- Lower costs

**Cons**:
- Need to write code
- Less reliable accuracy
- May not support complex prediction outputs

### Amplification of Labeled Data
- Label-preserving transforms (common in computer vision)
- Synthesis based on physical laws or simulation (in robotics/science/engineering)
- Requires knowledge of underlying data distribution

## Data Governance and Privacy

### Key Aspects of Data Governance
- **Privacy & Security**: Controlling who sees what and why
- **Stewardship**: Defining who owns what and when
- **Cataloging**: Documenting what data exists and how to access it
- **Defining**: Creating data dictionaries and business knowledge
- **Quality**: Following conventions and reducing errors
- **Provenance**: Tracking usage, changes, and versions

### Legal Regulations on Data Handling
1. **FERPA (1974)**
   - Applies to all "education records" of students

2. **HIPAA (1996)**
   - Applies to all healthcare data, especially PII (Personally Identifiable Information)

3. **GDPR (2018)**
   - Applies to data collected from individuals in EU and EEA
   - Establishes rights on "personal data": right to access, right to forget/erasure, right to object
   - Creates technical challenges for data/ML infrastructure compliance

4. **CCPA (California Consumer Privacy Act)**
   - Similar to GDPR but for California residents

### Provenance Management
- **Definition**: "Chronology of the ownership, custody or location of a historical object"
- **Key aspects**:
  - Context of data creation, deletion, access/use
  - Evolution of metadata
  - Versioning of data and derived objects
  - For ML: track derived data, ML artifacts, and configuration

- **Challenges**: Heterogeneity of data/ML platforms makes tracking difficult
- **Current state**: Ad hoc, organization-specific practices and tools
- **Emerging tools**:
  - ML artifacts: Weights & Biases, MLFlow, TensorFlow Extended, TensorBoard
  - SQL transformation code: dbt
  - Derived data: Feature stores (e.g., Feast, Tecton)

## Review Questions and Answers

### 1. Name 3 common forms of structured data with application examples.

**Answer**: Three common forms of structured data are:

1. **Relation (Relational Database)**
   - Application example: Customer database for a retail company

2. **DataFrame**
   - Application example: Pandas DataFrame for analyzing sales data

3. **Matrix/Tensor**
   - Application example: Image data represented as tensors for computer vision applications

### 2. What is Parquet?

**Answer**: Parquet is a columnar file format designed for efficient data storage and retrieval. It stores data in a compressed binary format that includes rich metadata and statistics. Parquet is commonly used in data lakes and big data environments as an alternative to text-based formats like CSV or JSON.

### 3. Explain 1 pro and 1 con of using Parquet vs. CSVs for Data Science applications.

**Answer**:
- **Pro**: Parquet uses compression, resulting in much smaller file sizes (up to 10x smaller than CSV), which reduces storage costs and improves read performance.
- **Con**: Parquet files are not human-readable and cannot be opened directly with text editors, making them less convenient for quick inspection or manual editing.

### 4. What is a data lake? How is it different from an RDBMS?

**Answer**: A data lake is a storage repository that holds a vast amount of raw data in its native format until it's needed. It features a loose coupling of data file format for storage and data/query processing stack.

Differences from an RDBMS:
- RDBMS has tight coupling between storage format and processing, while data lakes separate these concerns
- Data lakes typically store raw, unprocessed data in various formats (like JSON, Parquet), while RDBMS stores structured data in a predefined schema
- RDBMS enforces schema-on-write (data must conform to schema before storage), while data lakes often use schema-on-read (schema applied when data is accessed)

### 5. Explain 2 reasons why data acquisition can be challenging and how to mitigate them.

**Answer**:

1. **Heterogeneity of data sources/modalities**:
   - Challenge: Different data sources have different formats, APIs, and query languages
   - Mitigation: Evaluate if all data sources are necessary for the analysis and focus on the most relevant ones

2. **Scale issues**:
   - Challenge: Inefficient to copy large volumes of data files individually
   - Mitigation: Use automated workflow tools such as AirFlow to manage data acquisition processes

### 6. Explain 2 best practices for data reorg/prep for analytics.

**Answer**:

1. **Automation**: Use scripts and workflow tools (like Airflow) for reorganization workflows to ensure consistency and reduce manual errors.

2. **Versioning**: Maintain logs of what version has what and when, recognizing that reorganization is never a one-time process but evolves as data and requirements change.

### 7. Explain 1 pro and 1 con of programmatic labeling over hand labeling of ML data.

**Answer**:
- **Pro**: Programmatic labeling significantly improves productivity and reduces costs by automating the labeling process through rules and heuristics instead of manual annotation.
- **Con**: Programmatic labeling typically has less reliable accuracy compared to careful human labeling, potentially introducing errors or biases into the training data.

### 8. Name a data privacy law that affects many Web companies.

**Answer**: GDPR (General Data Protection Regulation) is a significant data privacy law that affects many Web companies. Implemented in 2018, it applies to all data collected from individuals in the European Union and European Economic Area, establishing rights such as the right to access, right to erasure, and right to object to data processing.

### 9. What is data provenance?

**Answer**: Data provenance is the "chronology of the ownership, custody or location of a historical object." In the context of data management, it refers to tracking the origin, movement, and transformation of data throughout its lifecycle, including its creation, deletion, access, and use.

### 10. Why should data provenance be tracked?

**Answer**: Data provenance should be tracked for several important reasons:
- To ensure compliance with data regulations and enable auditing
- To make data easier to find and consume
- To track the evolution of metadata and versioning of data
- For ML applications, to track derived data, ML artifacts (models, code), and configurations
- To understand the context of data creation and transformation, which helps in validating results and troubleshooting issues
