function [string]=decode(filename);
[x1,fs]=audioread(filename);
%a='ab';
a=floor(length(x1)/1760);
temp1=zeros(1,a);
start = 1;
End = 1760;
string='';
for i = 1:a 
x =x1(start:End);

C=['a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';' '];
L=[400;400;400;400;400;400;400;400;400;600;600;600;600;600;600;600;600;600;800;800;800;800;800;800;800;800;800];
M=[1000;1000;1000;1200;1200;1200;1500;1500;1500;1000;1000;1000;1200;1200;1200;1500;1500;1500;1000;1000;1000;1200;1200;1200;1500;1500;1500];
H=[2000;3000;4000;2000;3000;4000;2000;3000;4000;2000;3000;4000;2000;3000;4000;2000;3000;4000;2000;3000;4000;2000;3000;4000;2000;3000;4000];
MyTable=table(C,L,M,H);
k=27;

 temp1=Frequency(x);
 %l1=temp1(1);
 %m1=temp1(2);
% h1=temp1(3);
 
 start =start+1760;
 End = End+1760;
 %for i = 1:a 
     
     if (temp1(1) >= 300) && (temp1(1)< 500)
       temp1(1)=400;
        
    elseif (temp1(1) >= 500) && (temp1(1)< 700)
     temp1(1)=600;
     elseif (temp1(1) >= 700) && (temp1(1)< 900)
    temp1(1)=800;
     else 
     continue;
     end
% end

 
% for i = 1:a 
     
     if (temp1(2) >= 900) && (temp1(2)< 1100)
      temp1(2)=1000;  
    elseif (temp1(2) >= 1100) && (temp1(2)< 1350)
      temp1(2)=1200;
     elseif (temp1(2) >= 1350) && (temp1(2)< 1650)
      temp1(2)=1500;
      else 
     continue;
        
     end
 %end

 
%for i = 1:a
     
     if (temp1(3) >= 1650) && (temp1(3)< 2500)
       temp1(3)=2000;  
    elseif (temp1(3)>= 2500) && (temp1(3)< 3500)
     temp1(3)= 3000;
     elseif (temp1(3)>= 3500) && (temp1(3)< 4500)
      temp1(3)= 4000;
      else 
     continue;
        
     end
%end


%for i = 1:a 
     for j = 1:k
       if   isequal(temp1(1), MyTable.L(j)) &&  isequal(temp1(2), MyTable.M(j)) &&  isequal(temp1(3), MyTable.H(j)) 
         %disp( MyTable.C(j));
          str=MyTable.C(j);
    
           string = [string str];
        
       end 
     end 
end
  
%string
fprintf(' string = %s\n', string);
end     

