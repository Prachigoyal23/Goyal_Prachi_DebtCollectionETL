# Importing pandas library for data manipulation
import pandas as pd
# Importing gdown for downloading files from given Google drive link
import gdown
# URL of the file to download from Google Drive
url = 'https://drive.google.com/uc?id=1asq7yzvFpkmDUMZQtK7AJ16_XZbQCZmc'

# Output file name where the downloaded file will be saved
output = 'D:\borrowers.csv'

# Downloading the file from Google Drive using gdown
# Set quiet=False to see the download progress
gdown.download(url, output, quiet=False)

# Reading the downloaded CSV file into a pandas DataFrame
df = pd.read_csv(output)

# Printing the first few rows of the DataFrame to verify successful loading
print(df.head())
