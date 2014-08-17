from itertools import takewhile
import numpy as np
import pandas as pd


def see(dat, n=5):
    """Preview long iterables (in interactive session)

    If `dat` is a pandas data frame, return `n` columns and rows. This
    is useful for cases where there are too many columns to effectively
    use `head`.

    If `dat` is a dict, return first `n` iterations of the keys and
    values.

    For any other types, return the first `n` iterations.
    """
    if isinstance(dat, pd.DataFrame):
        total_rows, total_cols = dat.shape
        nrows = n if n < total_rows else total_rows
        ncols = n if n < total_cols else total_cols
        return dat.iloc[:nrows, :ncols]

    def under_enum(x):
        return x[0] < n

    if isinstance(dat, dict):
        first_n = takewhile(under_enum, enumerate(dat.items()))
        return {key: vals for i, (key, vals) in first_n}

    ## all others, just return list of n iterations
    return [item for _, item in takewhile(under_enum, enumerate(dat))]


def ht(df, n=5):
    """Return first and last `n` rows of data frame.
    """
    head_idx = np.arange(n)
    tail_idx = np.arange(df.shape[0] - n, df.shape[0])
    return df.iloc[np.concatenate([head_idx, tail_idx])]
