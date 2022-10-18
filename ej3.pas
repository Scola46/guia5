program ej3;
type
  VN=array[1..50]of integer;


procedure resultado(vnum:vn;n:byte;var vpos:vn;var vneg:vn;var contn,contp:byte);
var
  i:byte;
begin
  for i:=1 to N do
      begin
        if vnum[i]>0 then
           begin
             vpos[i]:=vnum[i];
             contp:=contp+1;
           end
           else
             begin
             vneg[i]:=vnum[i];
             contn:=contn+1;
             end;
          end;
      end;
procedure mostrar (contn,contp:byte;var vpos,vneg:vn);
var
  i:byte;
begin
   for i:=1 to contp do
         writeln ('num pos ',vpos[i]);
   for i:=i to contn do
       writeln ('num negativo ',vneg[i]);


end;

var
  n,i,contn,contp:byte;
  num:integer;
  VPos,VNeg,vnum:vn;
begin
  contn:=0; contp:=0;
  Repeat
    writeln ('Ingrese n');readln(N);
  until n>0 ;
  for i:=1 to n do
      begin
        writeln ('Ingrese un numero');readln(num);
        vnum[i]:=num;
      end;
  resultado (vnum,n,vpos,vneg,contn,contp);
   mostrar (contn,contp,vpos,vneg);
   writeln (contp);
   writeln (contn);

readln;

end.

