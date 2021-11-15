function flag = separating_line (coords1,coords2, pt1, pt2)
coefficients = polyfit([coords1(1), coords2(1)], [coords1(2), coords2(2)], 1);
a = coefficients (1);
b = coefficients (2);
eq1= pt1(2)-(a*pt1(1))-b;
eq2= pt2(2)-(a*pt2(1))-b;
if ((eq1 && eq2 > 0) || (eq1 && eq2 <= 0))
    flag = true;
else
    flag = false;
end