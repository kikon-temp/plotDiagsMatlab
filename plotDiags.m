function plotDiags(A)
   r=size(A,1);
   c=size(A,2);

   if r <= c
      for i = 0 : c-r
        %plot the diagonals
        plot(1 : r, diag(A, i))
        hold on
      end

      for i = 1 : r-1
         %plot the superdiagonals
         plot(1 : r-i, diag(A, c - r + i))
         hold on

         %plot the subdiagonals
         plot(i+1 : r, diag(A, - i));
         hold on
     end
   else
      for i = 0 : r-c
        %plot the diagonals
        plot(1 : c, diag(A, -i))
        hold on
      end

      for i = 1 : c-1
        %plot the superdiagonals
        plot(i + 1 : c, diag(A, i));
        hold on

        %plot the subdiagonals
        plot(1 : c - i, diag(A, c - r - i))
        hold on
     end
   end
end
