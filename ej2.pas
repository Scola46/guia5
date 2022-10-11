program ej2;
type
  tvec=array[1..100] of word;
procedure leervec (var vec:tvec;var m:byte);
var
  arch:text;
  i:byte;
begin
  assign (arch,'naturales.txt');
  reset (arch);
  readln(arch,M);
  for i:=1 to M do
      readln(arch,vec[i]);
  close (arch);
end;
procedure contar (vec:tvec;M:byte;var CP,CI,CN:byte);
var
  i:byte;
begin
  for i:=1 to M do
      if vec[i]=0 then
         cn:=cn+1
  else
    If (vec[i]mod 2=0)then
       cp:=cp+1
    else
      ci:=ci+1;
end;
procedure multiplicar(vec:tvec;M,X:byte;var vec1:tvec;var n:byte);
var
  i:byte;
begin
  i:=2;N:=0;
  while i<=m do
        begin
          n:=n+1;
          vec1[n]:=vec[i]*x;
          i:=i+2;
        end;
end;
procedure mostrar (A:tvec;b:byte);
var
  i:byte;
begin
  for i:=1 to B do
      writeln (a[i]);

end;
function posmax(vec:tvec;m:byte):byte;
var
  i:byte;
  max:word;
begin
  max:=vec[1]; // o max:=0;
  posmax:=1;
  for i:=2 to M do
      if vec[i]>max then
         begin
           max:=vec[i];
           posmax:=i;
         end;
end;
var
  num,mult:tvec;
  dim1,dim2,X,Contp,conti,contN:byte;
begin                                           //PP
  repeat
    writeln ('Ingrese X');readln(X);
  until (x>0);
  contp:=0;conti:=0;contn:=0;
  leervec (num,dim1);
  mostrar (num,dim1);
  contar (num,dim1,contp,conti,contn);
  writeln ('cant pares ',contp,' cant impares ',conti,' cant nulos ',contn);
  multiplicar (num,dim1,x,mult,dim2);
  mostrar (mult,dim2);
  writeln ('pos max ',posmax(num,dim1));
  readln;
end.

