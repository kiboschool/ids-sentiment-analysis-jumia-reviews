# Assignment - Product Reviews
Product reviews are evaluations or opinions shared by consumers who have purchased and used a specific product or service. These reviews are typically written on online platforms such as e-commerce websites, social media, or review websites. 

Product reviews provide insights into customers' experiences, satisfaction levels, and perceptions of a particular product or service. In the context of NLP (Natural Language Processing), product reviews are a valuable source of text data that can be analyzed to extract sentiments, opinions, and insights.

![jumia.jpeg](/config/jumia.jpeg)

<aside>

**NOTE!** 

- This is a group assignment with maximum of 3 people in a group.
- Explore as much as you can with this data. Hence, don't limit yourself to just the hints.
</aside>

## Sentiment Analysis of Jumia Product Reviews
In this assignment, you will apply your knowledge of sentiment analysis to analyze the sentiments expressed in product reviews by Jumia customers. You will work together as a group to preprocess the text data, build a sentiment analysis model, and interpret the results.

### Dataset
You are provided with a dataset containing customer reviews. The dataset includes the following columns:

- **Rating**: Customer rating of each product, which ranges from 1 to 5.
- **Title**: title of each review (e.g., I like it).
- **Review**: customer opinion about the products.

### Repository
[![Click to open the project](https://img.shields.io/static/v1?label=Open%20Project&message=Jumia%20Customer%20Reviews&color=blue)](https://github.com/kiboschool/sentiment-analysis-jumia-reviews.git)


### TODOs
- Load the dataset and take a quick look at the first few rows.
- Explore the distribution of sentiment labels in the dataset.
- Engineer a new feature called `Sentiment` from the _Rating_ column. This takes the values `-1`, `0`, and `1` for _negative_, _neutral_, and _positive_.
    - Reviews with `Rating > 3` is _positive_
    - Reviews with `Rating = 3` is _neutral_
    - Reviews with `Rating < 3` is _negative_
- Preprocess the text data by converting to lowercase and removing punctuation.
- Tokenize the text data to split it into individual words or tokens.
- Choose a feature extraction technique (e.g., `BoW`, `TF-IDF`) and implement it.
- Split the dataset into training and testing sets.
- Build and train a sentiment classification model using an appropriate algorithm.
- Evaluate the model's performance using `accuracy`, `precision`, `recall`, and `F1-score`.
- Fine-tune the model and preprocessing techniques to improve results.
- Present your findings in a report, including the evaluation metrics and insights from the analysis.
- Complete the assignment using the `notebook` in the repository.
    - Push your solution back to Github once completed.
- Submit your notebook on **[Gradescope](https://www.gradescope.com/courses/544001/assignments)**
    - Look for **Week 8 - Sentiment Analysis of Jumia Product Reviews** under assignments

### HINTS
- Divide the tasks among group members and collaborate on GitHub or any suitable platform.
- Document your code clearly with comments explaining each step.
- Perform text preprocessing techniques such as lowercase conversion, tokenization, and stopwords removal.
- Remove any special characters or symbols that might not contribute to sentiment analysis.
- Convert the preprocessed text into numerical features suitable for analysis.
- You can choose from techniques like Bag of Words, TF-IDF, or Word Embeddings. Remember to explain your choice.
- Utilize libraries like `Scikit-learn`, `NLTK`, or `spaCy` for text preprocessing and model dvelopment tasks.
- Provide visualizations and tables to support your analysis.

Remember, this assignment is an opportunity to apply your NLP skills to real-world data and gain hands-on experience in sentiment analysis.

## `Good Luck! 🤝`