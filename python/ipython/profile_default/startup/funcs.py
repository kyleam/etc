def hh(df):
    """View selected rows form data frame

    This is useful to preview data frames that are too wide for the
    `head` output to fit on the screen
    """
    return df.iloc[0:6, 0:6]
