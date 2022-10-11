program ej5;
type
  TS6=string[6];
  tV1=array [1..50] of ts6;
  tv2=array [1..50] of word;
  tv3=array [1..50] of real;
procedure leervec(var v1:tv1;var v2:tv2;var v3:tv3;var N:byte);
var
  arch:text;
begin
  assign (arch,'autos.txt');
  reset (arch);
  n:=0;
  while not eof (arch) do
        begin
          n:=n+1;
          readln (arch,v1[n],v2[n],v3[n]);
        end;
  close (arch);
end;
function Ppreciomin(v3:tv3;n:byte;v2:tv2;A:word):real;
var
  i:byte;
  min:real;
  begin
    min:=999999;
    PPreciomin:=0;
    for i:=1 to n do
        if (v2[i]=A)and(v3[i]<min)then
           begin
           min:=v3[i];
           ppreciomin:=I;
           end;
  end;
function contveh(v3:tv3;N:byte;p:real):byte;
var
  i,cont:byte;
begin
  cont:=0;
  for i:=1 to N do
      if v3[i]<P then
         cont:=cont+1;
      contveh:=cont;
end;
function Precioprom (v2:tv2;v3:tv3;n:byte;a1,a2:word):real;
var
  i,cont:byte;
  total:real;
begin
  cont:=0;total:=0;
  for i:=1 to n do
      if (v2[i]>=a1)and(v2[i]<=a2) then
         begin
         cont:=cont+1;
         total:=total+v3[i];
         end;
      if cont<>0 then
         precioprom:=total/cont
      else
         precioprom:=0;
end;
var
  pat:tv1;
  anio:tv2;
  precio:tv3;
  A,A1,a2:word;
  P,prom:real;
  n,pos,cont:byte;
begin
  repeat
  writeln ('Ingrese un año');readln(A);
  until (a>0)and(A<=2022);
  repeat
  writeln('Ingrese un precio');readln(P);
  until p>0  ;
  repeat
  writeln('Ingrese un año');readln(A1);
  until (a1>0)and(a1<=2022);
  repeat
  writeln('Ingrese un año');readln(A2);
  until (a2>1)and(a2<2022);
  leervec(pat,anio,N);
  pos:=ppreciomin(precio,n,anio,a);
  if pos<>0 then
     writeln ('El preco minimo es ',precio[pos]);
  else
      writeln ('No hay autos en ese año');
  cont:=contveh(precio,n,p);
  if cont<>0 then
     writeln('La cantidad de vehiculos es ',cont);
  else
      writeln ('No hay vehiculos debajo de ese precio');
  precioprom(anio,precio,n,a1,a2);
  if prom<>0 then
     writeln('el precio promedio es ',prom:8:2);
  else
      writeln ('No hay autos en ese rango');

end.

