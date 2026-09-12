# Bank Account Fraud Detection with Network Science

## Project Details

Team Members: Chinmay Arvind, Jerry Fan, Dmitry Kostyukov, Ryan Millar

## Source Code and Website

The source code for this project is available in [code/code.qmd](code/code.qmd).

The Quarto site is built automatically with GitHub Actions and deployed to GitHub Pages:

**[Bank Account Fraud Detection with Network Science](https://chinmayarvind23.github.io/COSC421-Bank-Account-Fraud-Detection-with-Network-Science/)**

The deployment intentionally renders the R/Quarto document without re-running the full one-million-record analysis on every push. This keeps the published source and project narrative reproducible while avoiding an expensive data-processing job during documentation deployment.

## Final Report [13 pages] (including references)

The final report can be viewed and downloaded here: [Final Report](docs/COSC%20421%20-%20Final%20Report.pdf)

## Project Presentation Video

The slides for our project presentation can be accessed here: [Presentation Slides](https://docs.google.com/presentation/d/1pOU_dtHG0asPrsL9dkLO0jyQLl9U_4lOYtLMG9VdSB0/edit?usp=sharing) or here: [Presentation Slides Copy](docs/COSC%20421%20Project%20Presentation.pdf)

## Purpose of Project

This project conducts a data-driven network analysis of bank account applications to identify patterns associated with fraudulent and non-fraudulent applications. It uses network-science metrics including eigenvector centrality, network density, degree centrality, Katz centrality, closeness centrality, local clustering coefficient, cosine similarity, and Jaccard coefficient, alongside strongly connected components and cores.

The project investigates four research questions:

1. Which were the key fraudulent players within the network?
2. Were there specific fraudulent groups within the network that could be collaborating to defraud the bank?
3. What was the average profile of a fraudulent customer?
4. What differences exist between fraudulent and non-fraudulent account applications?

## Data

This project uses the [Bank Account Fraud Dataset (NeurIPS 2022)](https://www.kaggle.com/datasets/sgpjesus/bank-account-fraud-dataset-neurips-2022/data). Only `Base.csv` is used in the analysis. A compressed copy is stored at [compressed_data/data.zip](compressed_data/data.zip).

To reproduce the full analysis locally, unzip `Base.csv` into a `data/` directory at the project root and update the data-loading path in [code/code.qmd](code/code.qmd) if needed. The selected dataset contains one million records and was used for data cleaning, dimensionality reduction, feature engineering, network analysis, and visualization.

## Tech Stack

R, Quarto, GitHub Actions, GitHub Pages

## CI/CD

The repository uses a single GitHub Actions workflow in `.github/workflows/ci-cd.yml`.

- Pull requests build the Quarto page to catch rendering errors.
- Pushes to `main` build the site and publish the `_site` artifact to GitHub Pages.
- The deployment uses the official `actions/configure-pages`, `actions/upload-pages-artifact`, and `actions/deploy-pages` actions.
- The old competing Jekyll deployment has been removed.

## Network Definition

The nodes in this network represent customers' bank account applications. Edges connect applications based on similarity in application attributes. Different edge types represent different attribute relationships, allowing the analysis to model a richer multigraph rather than a set of disconnected attribute-specific networks.
