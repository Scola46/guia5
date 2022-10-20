program ej5;
{5.- Leer de un archivo de texto sobre tres arreglos los datos de un conjunto de autos, por cada uno:
- Patente
- Año
- Precio
Se pide mediante un menú que permita la repetición de las opciones con diferentes valores,
calcular:
a. Para un año dado, precio mínimo (puede no existir)
b. Para un precio dado cantidad de vehículos por debajo de dicho valor
c. Para un rango de años dado [Año1, Año2] precio promedio de los autos en dicho rango (puede
no existir)
7.- A partir de ejercicio 5 y para una patente dada, mostrar los datos del auto (indicar si no se
encontró).}
type
  st6=string[6];
  V1=array[1..50]of string[6];
  V2=array[1..50]of word;
  v3=array[1..50]of real;
procedure leervec(var vpat:v1;var va:v2;var vpre:v3;var n:byte);
var
  arch:text;
begin
  assign (arch,'autos.txt');
  reset (arch);
  n:=0;
  while not eof(arch)do
        BEGIN
        n:=n+1;
        readln (arch,vpat[n],va[n],vpre[n]);
        end;

 close (arch);
end;
function premin (va:v2;vpre:v3;n:byte;anio:word):real;
var
  i:byte;
  min:real;
begin
  min:=999999;premin:=0;
  for i:=1 to n do
      begin
        If (va[i]=anio)and(vpre[i]<min)then
           begin
             min:=vpre[i];
             premin:=(vpre[i])
           end
      end;

end;
function preciovh (vpre:v3;pre:real;dim2:byte):byte;
var
  i,contvh:byte;
begin
  contvh:=0;
  for i:=1 to dim2 do
      begin
        if (vpre[i]<pre) then
           begin
             writeln ('entro');
             contvh:=contvh+1;
             preciovh:=contvh;
           end;
      end;
  writeln (contvh,'cont');
end;
function preprom(anio1,anio2:word;vpre:v3;va:v2;dim3:byte):real;
var
  i,conta:byte;
  total:real;
begin
  conta:=0;total:=0;
  for i:=1 to dim3 do
      begin
        if ((va[i]>anio1)and(va[i]<anio2))or((va[i]>anio2)and(va[i]<anio1))then
           begin
             conta:=conta+1;
             total:=total+vpre[i];
             preprom:=total/conta
           end;

      end;
end;
procedure patente (vpat:v1;va:v2;vpre:v3;paten:st6;dim4:byte;var pre2:real;var va2:word;var contp:byte);
var
  i:byte;
begin
  contp:=0;
  FOR I:=1 to dim4 do
      if vpat[i]=paten then
         begin
           contp:=contp+1;
           va2:=va[i];
           pre2:=vpre[i];
         end;
end;

var
  n,cont,i,contp:byte;
  VPAT:v1;
  Va:v2;
  vpre,vmin:v3;
  anio,a1,a2,va2:word;
  precio,pre2:real;
  paten:st6;

begin
 repeat
   writeln ('Ingresar un anio');readln(anio);
 until (anio>0) ;
 repeat
   writeln ('Ingrese un precio');readln(precio);
 until (precio>0);
 repeat
   writeln ('Ingrese anio 1');readln (a1);
 until (a1>0);
 repeat
   writeln ('Ingrese anio2');readln(a2);
 until (a2>0);
   writeln ('Ingrese patente');readln (paten);
 leervec (vpat,va,vpre,n);
 IF premin(va,vpre,n,anio)<>0 THEN
 writeln ('precio minimo ', premin(va,vpre,n,anio):8:2)
 else
   Writeln ('No existe');
 writeln ();
 writeln ('cantidad de precios por debajo del valor ',preciovh(vpre,precio,n));
 writeln ('Precio promedio ',preprom(a1,a2,vpre,va,n):8:2);
 patente (vpat,va,vpre,paten,n,pre2,va2,contp);
 writeln ('Datos de la patente ingresada. Anio ',va2,' Precio ',pre2:8:2);
 readln;
end.

