function A = matrixForDiagonalPlot(r, c)
  if r > c
    A = matrixForDiag(c, r)';
    return
   end
   % repeats line 1:c for each of the r columns
   A = repelem(1:c, r, 1);
end
