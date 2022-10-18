program tp;
{grupo de N estudiantes, sabemos el nombre y la edad, cargar los datos y
generar otro vector con los nombres de los estudiantes que NO superen una una
Edad X ingresada por teclado. Mostrar el vector resultante o ninguno supera}
type
  vec=array[1..50]of byte;
  st10=array[1..50]of string[7];

procedure resultado(nom:st10;edad:vec;n:byte;x:byte;var VS:st10);
var
  i,cont:byte;

begin
 cont:=0;
 for i:=1 to N do
     begin
     if edad[i]<=x then
          begin
            vs[i]:=nom[i];
            cont:=cont+1;
          end;
     end;
end;
procedure mostrar (n:byte;var vs:st10);
var
  i:byte;
begin
 for i:=1 to n do
      writeln (vs[i]);
end;

var
  arch:text;
  nombre,vs:st10;
  edad:vec;
  i,n,x:byte;

begin
  repeat
    writeln ('Ingrese X');readln(X);
  until (x>=1);
  assign (arch,'nombres.txt');
  reset (arch);
  readln (arch,N);
  for i:=1 to N do
      begin
      readln (arch,nombre[i],edad[i]);
     // writeln (nombre[i],edad[i]);
      end;
  resultado(nombre,edad,n,x,vs);
  mostrar (n,vs);
 close (arch);
 readln;

end.

