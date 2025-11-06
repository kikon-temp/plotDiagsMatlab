function plotDiags0(A)

r=size(A,1);
c=size(A,2);

if r > c
  plotDiags0(A')
  return
end

p=c-r+1;%number of diagonals

T=size(diag(A),1);%T=min(S,N)
x=linspace(1,T,T);

plot(x,diag(A))
hold on

%plot the subdiagonals
for i=r:-1:1
    plot(r-i+1:r, diag(A, i-r));
end

%plot the diagonals
for j=1:p
    plot(1:r,diag(A,j-1));
end

%plot the superdiagonals
for k=1:(c-p)
    plot (1:k, diag(A, c-k));
end

end

