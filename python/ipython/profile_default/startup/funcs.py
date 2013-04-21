def hh(df):
    """View first five rows and columns of a data frame

    This is useful to preview data frames that are too wide for the
    `head` output to fit on the screen
    """
    return df.iloc[0:5, 0:5]
