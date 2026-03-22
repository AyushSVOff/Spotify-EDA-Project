import pandas as pd
import numpy as np

df1=pd.read_csv(r"C:\Users\ayush\OneDrive\Desktop\Gail media\Project-Spotify\Raw Data\spotify_data clean.csv")
df2=pd.read_csv(r"C:\Users\ayush\OneDrive\Desktop\Gail media\Project-Spotify\Raw Data\track_data_final.csv")

print("Table 1 Shape:", df1.shape)
print("Table 2 Shape:", df2.shape)

print("Table 1 Columns:\n", df1.columns)
print("\nTable 2 Columns:\n", df2.columns)
print("\n")

df1.info()
print("\n")
df2.info()
print("\n")

print(
    "DF1 duplicates:",
    df1.duplicated().sum()
)

print(
    "DF2 duplicates:",
    df2.duplicated().sum()
)

df1["track_id"].nunique()
df2["track_id"].nunique()



