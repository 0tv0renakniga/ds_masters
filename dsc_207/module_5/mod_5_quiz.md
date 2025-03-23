# Module 5 Quiz: Data Visualization

## Question 1
**What are some of the attributes of quality data presentation as described in the lectures? (select all that apply)**

⬜ Should show what you want the audience to takeaway  
⬜ Should have as much data as possible  
⬜ Should be honest  
⬜ Should be self contained if possible  

<details>
<summary><strong>Correct Answers:</strong></summary>

✅ Should show what you want the audience to takeaway  
⬜ Should have as much data as possible  
✅ Should be honest  
✅ Should be self contained if possible  
</details>

**Explanation:** Quality data presentations should clearly communicate the key takeaways you want your audience to understand, maintain honesty in how data is represented, and be self-contained with all necessary context and information. However, including "as much data as possible" is actually counter to good visualization principles - effective visualizations often involve careful selection and simplification of data to highlight important patterns without overwhelming the viewer.

## Question 2
**What, according to the lectures, is wrong with the following data visualization?**

![alt text](/dsc_207/images/mod_5_q2.png)

⬜ Misleading visualization  
⬜ Unclear color distinction  
⬜ No axis titles  
⬜ Not correct choice of graph  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ No axis titles  
</details>

**Explanation:** Without axis titles, viewers cannot understand what variables are being displayed or their units of measurement. This makes the visualization difficult to interpret correctly, even if the data itself is accurately represented. Axis titles are fundamental components that provide necessary context for understanding the data relationship being shown.

## Question 3
**What, according to the lectures, is wrong with the following data visualization?**
**Note that 1e9 describes the scale in billions.**

![alt text](/dsc_207/images/mod_5_q3.png)

⬜ Unclear color distinction  
⬜ No axis titles  
⬜ Poor choice of y axis scale  
⬜ Poor choice of x axis scale  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ Poor choice of y axis scale  
</details>

**Explanation:** When the y-axis scale is poorly chosen, it can distort the viewer's perception of the data trends. In this case, the scale likely either exaggerates or minimizes the differences between values, making it difficult to accurately interpret the magnitude of changes or differences in the data. A well-chosen scale should reveal the true patterns in the data without misleading visual distortion.

## Question 4
**What, according to the lectures, is a concern with the following data visualization?**

![alt text](/dsc_207/images/mod_5_q4.png)

⬜ Difficult to interpret because of colors  
⬜ No axis titles provided  
⬜ Poor choice of x-axis  
⬜ Incomplete picture of the data and can be misleading  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ Incomplete picture of the data and can be misleading  
</details>

**Explanation:** This visualization likely presents only a selective view of the data that doesn't capture the full context. When visualizations show only part of the relevant data, they can lead viewers to draw incorrect conclusions. Ethical data visualization requires presenting a complete picture that doesn't omit important contextual information that would change the interpretation.

## Question 5
**What, according to the lectures, is a concern with the following data visualization?**

![alt text](/dsc_207/images/mod_5_q5.png)

⬜ Poor color coding which makes the graph unreadable  
⬜ Not a correct choice of graph, pie chart should be used  
⬜ Same category of men/women are not plotted together for comparison  
⬜ Graph is misleading and not a good representation of data  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ Same category of men/women are not plotted together for comparison  
</details>

**Explanation:** When comparing data between groups (in this case, men and women), it's most effective to position the same categories adjacent to each other to facilitate direct comparison. When related data points are separated, it becomes much more difficult for viewers to make accurate comparisons, requiring them to look back and forth across the visualization. This poor organization makes the visualization less effective at communicating patterns and differences.

## Question 6
**The standards for data visualization are often driven by the audience.**

⬜ True  
⬜ False  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ True  
⬜ False
</details>

**Explanation:** Different audiences have different needs, backgrounds, and levels of familiarity with the subject matter. Effective data visualization requires tailoring your approach to your specific audience. A visualization designed for data scientists might include more technical details, while one for executives might focus on high-level insights and business implications. Understanding your audience is crucial for creating visualizations that successfully communicate your message.

## Question 7
**Even if the data visualization tells you a story quickly, you should be skeptical and look into more information to confirm the claims of the graph. What, according to the video, is concerning about this graph of COVID-19 cases recorded by country?**

![alt text](/dsc_207/images/mod_5_q7.png)

⬜ The order of histograms is not arranged in descending order and hence is poorly designed  
⬜ It is not the ideal visualization for this data, pie chart should be used  
⬜ It does not mention the source of the data is from which the graph is generated  
⬜ Absolute number of covid cases do not account testing rate of the country  

<details>
<summary><strong>Correct Answer:</strong></summary>

✅ Absolute number of covid cases do not account testing rate of the country  
<strong>Explanation:</strong>
This visualization shows raw counts of COVID-19 cases by country, but fails to account for the significant differences in testing rates between countries. Countries that conducted more tests naturally identified more cases, while countries with limited testing capacity reported fewer cases regardless of the actual infection rates. Without normalizing for testing rates, the visualization creates a misleading impression about which countries were most affected by the pandemic. This illustrates why context and understanding of data limitations are crucial when interpreting visualizations.
</details>

**Explanation:** This visualization shows raw counts of COVID-19 cases by country, but fails to account for the significant differences in testing rates between countries. Countries that conducted more tests naturally identified more cases, while countries with limited testing capacity reported fewer cases regardless of the actual infection rates. Without normalizing for testing rates, the visualization creates a misleading impression about which countries were most affected by the pandemic. This illustrates why context and understanding of data limitations are crucial when interpreting visualizations.

---

## Key Principles of Effective Data Visualization:

1. **Clarity and Honesty**: Visualizations should clearly and truthfully represent the data without distortion.

2. **Audience-Centered Design**: Effective visualizations are tailored to the specific needs, knowledge, and interests of the target audience.

3. **Appropriate Context**: Include necessary context (axis labels, titles, sources) to ensure proper interpretation.

4. **Thoughtful Scale Selection**: Choose scales that accurately represent the data relationships without exaggeration or minimization.

5. **Facilitate Comparisons**: Organize related data points to make comparisons easy and intuitive.

6. **Complete Representation**: Avoid selective presentation that omits important contextual information.

7. **Critical Evaluation**: Approach all visualizations with healthy skepticism, considering what might be missing or misrepresented.

8. **Data Limitations Awareness**: Understand and communicate the limitations of the underlying data that might affect interpretation.

These principles help ensure that data visualizations effectively and ethically communicate insights rather than mislead viewers.
