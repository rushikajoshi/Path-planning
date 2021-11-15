function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise


flag=true;
for j=0:1
    if j==0
        R=P1;
        s=P2;
    else
        R=P2;
        s=P1;
    end
    for i=0:2
        x = [R(rem(i,3)+1,1),R(rem(i+1,3)+1,1)];
        y = [R(rem(i,3)+1,2),R(rem(i+1,3)+1,2)];
        coefficients = polyfit(x,y,1);
        a = coefficients(1);
        b = coefficients(2);
        eq1= s(1,2)-(a*s(1,1))-b;
        eq2= s(2,2)-(a*s(2,1))-b;
        eq3= s(3,2)-(a*s(3,1))-b;
        eq4= R(rem(i+2,3)+1,2)-(a*R(rem(i+2,3)+1,1))-b;
        if ((eq1>0 && eq2>0 && eq3>0 && eq4 <0)||(eq1<0 && eq2<0 && eq3 <0 && eq4>0))
            flag=false;
            break
        
        end
    end
end

        
    
   
    
    
