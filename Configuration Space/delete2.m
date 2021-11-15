P1=[1,1,1;5,2,2;7,3,3]
P2=[1,3,1;6,2,2;3,3,5]
for i=0:2
    x = [P1(rem(i,3)+1,1),P1(rem(i+1,3)+1,1)]
    y = [P1(rem(i,3)+1,2),P1(rem(i+1,3)+1,2)] 
    a1 = (y(2)-y(1))/(x(2)-x(1))
    b1 = y(1)-(a1*x(1))
    coefficients = polyfit(x,y,1)
    a2= coefficients(1)
    b2= coefficients(2)
end