# BREAST-CANCER-EDA.R
BREAST CANCER 
# Breast Cancer Exploratory Data Analysis (EDA)

## 📝 Overview

This repository contains an R script (`Breast cancer EDA.R`) performing an Exploratory Data Analysis (EDA) on a breast cancer dataset. The goal is to prepare the data for further machine learning modeling by cleaning, transforming, and visualizing the relationships between variables, with a specific focus on the correlation structure.

## 🚀 Project Steps

The R script follows these key steps:

1.  **Library Loading**: Loads necessary R packages for data manipulation, cleaning, and visualization.
2.  **Data Import & Inspection**: Reads the dataset (`data.csv`) and performs initial checks using `head()` and `str()`.
3.  **Initial Variable Visualization**: Generates density plots for all numeric variables to visualize their distributions.
4.  **Data Transformation**:
    * Converts the categorical `diagnosis` variable (M/B for Malignant/Benign) into a numeric format (0/1).
    * Relocates the `diagnosis` column for better data structure (moving it to the end of the feature columns).
5.  **Correlation Analysis**:
    * Computes the correlation matrix for all features (columns 3 through 32, assuming the first two are ID and diagnosis, which are often excluded from feature correlation maps).
    * Visualizes the correlation matrix using `ggcorrplot` to identify highly correlated features.

## 🛠️ Tools and Libraries

The following R packages are essential for running the script:

* `readr`: For efficient data reading.
* `dplyr`: For data manipulation and piping (`%>%`).
* `naniar`: For handling and visualizing missing data (though not explicitly used for plotting missingness, it's loaded).
* `tidyverse`: A collection of packages, including `ggplot2` (used implicitly for visualization) and `tidyr` (used for `gather`).
* `ggcorrplot`: Specifically used for creating informative and customizable correlation heatmaps.
* `caret`: The package is loaded, suggesting an intent for machine learning model building later, though the script only performs EDA.

## 💾 Data

The script assumes the existence of a CSV file named **`data.csv`** in the specified path. This dataset is expected to contain various features computed from digitized images of fine needle aspirate (FNA) of a breast mass, including:

* **ID** (Patient Identifier)
* **Diagnosis** (`M` for Malignant, `B` for Benign)
* 30 numeric features representing characteristics like mean radius, texture, perimeter, area, smoothness, etc., along with their standard error and "worst" (largest) values.

The key column targeted for prediction is `diagnosis`, which is converted to:
* **0** for Malignant (`M`)
* **1** for Benign (`B`)

## 💡 How to Run the Script

1.  **Download the data**: Ensure the `data.csv` file is accessible. **Note**: The current script uses a hardcoded path (`'C:/Users/Lenovo/Downloads/data.csv'`). You will need to **update this path** to where the file is located on your system.
    ```R
    data_cancer <- read.csv('C:/Users/Lenovo/Downloads/data.csv') # <-- CHANGE THIS LINE
    ```
2.  **Install R Packages**: Open your R console and run the following commands to install the necessary libraries:
    ```R
    install.packages(c("readr", "dplyr", "naniar", "tidyverse", "ggcorrplot", "caret"))
    ```
3.  **Execute the Script**: Run the `Breast cancer EDA.R` script in your R environment.

## 📊 Key Outputs

The script will produce the following graphical outputs in your R plotting window:

1.  **Density Plots**: A series of density plots showing the distribution of all 30 numeric features.
2.  **Correlation Heatmap**: A lower triangle correlation plot showing the relationship between all pairs of features. This is crucial for identifying multicollinearity.
