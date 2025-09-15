# Bank Account Fraud Detection with Network Science

## Project Details

Team Members: Chinmay Arvind, Jerry Fan, Dmitry Kostyukov, Ryan Millar

## Source Code

The source code for this project is here: [Main R code](code/code.qmd) and here is the website with the same code (please zoom out and zoom in to view the code if using this link, apologies for the formatting issues): [Bank Account Fraud Detection](https://bank-account-fraud-detection-with-network-science.vercel.app/)

## Final Report [13 pages] (including references)

The final report can be viewed and downloaded from here: [Final Report](https://github.com/chinmayarvind23/Bank-Account-Fraud-Detection-with-Network-Science/blob/main/docs/COSC%20421%20-%20Final%20Report.pdf)

## Project Presentation Video

The slides for our project presentation video can be accessed here: [Presentation Slides](https://docs.google.com/presentation/d/1pOU_dtHG0asPrsL9dkLO0jyQLl9U_4lOYtLMG9VdSB0/edit?usp=sharing) or here: [Presentation Slides Copy](https://github.com/chinmayarvind23/Bank-Account-Fraud-Detection-with-Network-Science/blob/main/docs/COSC%20421%20Project%20Presentation.pdf)

## Purpose of Project

This project aims to conduct a data-driven & thorough network analysis of bank account applications. This project aims to provide a solution for bank account fraud detection that will find outliers in the dataset to separate non-fraudulent and fraudulent bank account applications. We plan to answer research questions that will be utilizing various network science metrics taught in class, such as Eigenvector centrality, network density, degree centrality, Katz centrality, closeness centrality, local clustering coefficient, cosine similarity, and Jaccard coefficient, and concepts such as strongly connected components and cores,. The idea is to use the above-mentioned metrics along with the other columns in the dataset to classify nodes as either having a higher or lower risk of committing bank account fraud. The network science metrics interpreted in the context of bank fraud detection will provide a better idea of which nodes could be linked and commit bank fraud, potentially identifying criminal organizations that are participating in bank fraud. The other columns in the dataset will allow for creating edges between the nodes based on the similarity of their application details alongside the network metrics, allowing for a complex multigraph to be formed between nodes, providing a bigger picture of different facets of bank account applications to be considered when identifying fraudulent applications. The project will answer the following research questions:

1. Which were the key fraudulent players within the network?
2. Were there any specific fraudulent groups within the network that could be collaborating to defraud the bank?
3. What was the average profile of a fraudulent customer?
4. What differences exist between fraudulent account applications and non-fraudulent account applications?

## Data

This project uses data from the following Kaggle dataset: [https://www.kaggle.com/datasets/sgpjesus/bank-account-fraud-dataset-neurips-2022/data](https://www.kaggle.com/datasets/sgpjesus/bank-account-fraud-dataset-neurips-2022/data) (Only the Base.csv file is used in our analysis and is zipped and stored in the repo). The direct repo path to the zip file of the Base.csv file is here: [Base.csv](compressed_data/data.zip). Please unzip the zip file to access the Base.csv file, and create a directory titled data in the project's root directory and insert the CSV file there. Once that is done, copy the file path of the CSV file and paste it into the [Main R code](code/code.qmd) file where the data is loaded (line 59 of )There are 32 columns in the dataset, and the Base.csv file was selected to be used for this project (containing 1 million records), on which we have performed data modeling, cleaning, preparation, dimensionality reduction, feature engineering, data analysis, and visualization on to determine the most important predictors of bank account fraud from the dataset, and use the identified most important columns along with computed network metrics as our final set of predictors to solve the above research questions, and attempt to provide an approximate method of bank account fraud estimation given a dataset with relevant predictors. Dataset citation:

## Tech Stack

R, Quarto, Azure Blob Storage, GitHub Pages/Vercel

## Network Definition

The nodes in this network represent the customers' bank account applications. The edges are connections between nodes based on the similarity of attributes between applications. The edges will be colored differently for each different type of attribute relationship. This will form a sufficiently complex network (which isn’t disconnected into isolated pieces based on different attributes which would otherwise have not allowed for in-depth network analysis).
