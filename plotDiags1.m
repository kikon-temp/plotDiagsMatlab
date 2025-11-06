function plotDiags1(A)
   r=size(A,1);
   c=size(A,2);

   m = min(r, c);
   if r <= c
      sgn = 1;
   else
      sgn = -1;
   end

   for i = 0 : abs(c-r)
   	  plot(1 : m, diag(A, sgn * i))
   	  hold on
   end

   for i = 1 : m-1
      plot(1 : m - i, diag(A, c - r + sgn * i))
      hold on

      plot(i + 1 : m, diag(A, - sgn * i));
      hold on
   end
end
