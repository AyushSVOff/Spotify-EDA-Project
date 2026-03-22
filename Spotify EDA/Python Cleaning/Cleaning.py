import pandas as pd
import numpy as np

df1=pd.read_csv(r"C:\Users\ayush\OneDrive\Desktop\Gail media\Project-Spotify\Raw Data\spotify_data clean.csv")
df2=pd.read_csv(r"C:\Users\ayush\OneDrive\Desktop\Gail media\Project-Spotify\Raw Data\track_data_final.csv")

#(df1.isnull().sum())
#(df2.isnull().sum())

df1.dropna(
    subset=["track_name"],
    inplace=True
)

df2.dropna(
    subset=["track_name"],
    inplace=True
)

df1["artist_genres"].fillna(
    "Unknown",
    inplace=True
)

df2["artist_genres"].fillna(
    "Unknown",
    inplace=True
)

df2["artist_popularity"].fillna(
    df2["artist_popularity"].median(),
    inplace=True
)

df2["artist_followers"].fillna(
    df2["artist_followers"].median(),
    inplace=True
)

df1["album_release_date"] = pd.to_datetime(
    df1["album_release_date"],
    errors="coerce"
)

df2["album_release_date"] = pd.to_datetime(
    df2["album_release_date"],
    errors="coerce"
)

df1["release_year"] = (
    df1["album_release_date"].dt.year
)

df2["release_year"] = (
    df2["album_release_date"].dt.year
)

df2["track_duration_min"] = (
    df2["track_duration_ms"] / 60000
)

df1["explicit"] = df1["explicit"].astype(bool)
df2["explicit"] = df2["explicit"].astype(bool)

df1.drop_duplicates(
    subset="track_id",
    inplace=True
)

df2.drop_duplicates(
    subset="track_id",
    inplace=True
)

df1["artist_genres"] = (
    df1["artist_genres"]
    .str.lower()
    .str.strip()
)

df2["artist_genres"] = (
    df2["artist_genres"]
    .str.lower()
    .str.strip()
)

df1["artist_name"].fillna(
    "Unknown Artist",
    inplace=True
)

df2["artist_name"].fillna(
    "Unknown Artist",
    inplace=True
)

df2["release_year"] = (
    df2["album_release_date"].dt.year
)


print(df1.isnull().sum())
print(df2.isnull().sum())

df1.to_csv(
    r"C:\Users\ayush\OneDrive\Desktop\Gail media\Project-Spotify\Table1.csv",
    index=False
)

df2.to_csv(
    r"C:\Users\ayush\OneDrive\Desktop\Gail media\Project-Spotify\Table.csv",
    index=False
)




