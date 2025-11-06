# plotDiagsMatlab
plot diagonals matlab for SO 79809670

- function `matrixForDiagonalPlot` generates a matrix whose diagonals will be plotted as lines
- `plotDiags0` plots the diagonals using the algorithm in the SO question, transposing the matrix if `r > s`
- `plotDiags` is the detailed implementation, that analyses sepparately the cases `r <= s` and `r > s`
- `plotDiags1` is the more efficient and concise version of `plotDiags`, that combines the two cases in one formula.

Use exampple:
```matlab
>> A = matrixForDiagonalPlot(7, 3)
>> plotDiags0(A)
>> plotDiags(A)
>> plotDiags1(A)
```

The results are the same, except for the default colors of the lines, since the order in which they are plotted is not the same.

With an explicitly defined matrix:

```matlab
>> A=[10 20 30 45 55;11 22 30 44 51; 10 20 30 40 50; 10 20 35 40 48];
>> plotDiags0(A)
>> plotDiags(A)
>> plotDiags1(A)
```

