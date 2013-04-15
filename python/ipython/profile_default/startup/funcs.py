def view(df, row=6, col=6):
    """View selected rows form data frame

    This is useful to preview data frames that are too wide for the
    `head` output to fit on the screen
    """
    ## make sure defaults don't exceed actual shape
    if df.shape[0] < row:
        row = df.shape[0]
    if df.shape[1] < col:
        col = df.shape[1]
    return df.ix[0:row, 0:col]
