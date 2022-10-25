program ej16;
{16.- El área de RRHH de una empresa desea conocer cuántos de sus empleados cumplen años
cada uno de los 12 meses. Se conoce Nombre y mes (1..12) de los N empleados, se pide ingresar
dicha información para emitir el siguiente listado:
 Mes Cantidad
 Enero 100
 Febrero 350
 Marzo 270
 ........... ......
Además indicar el mes con mayor cantidad de cumpleaños.
¿Cómo cambiaría la solución si se considere el nombre del mes es en vez del valor 1..12?}
type
  st3=string[3];
  TVEC=array [1..12]of byte;
  TVECM=array[1..12]of st3;
  const
    meses:TVECM=('Ene','Feb','Mar','Abr','May','Jun','Jul','Ago',
    'Sep','Oct','Nov','Dic');
procedure inicio (var a:tvec);
var
  i:byte;
begin
  for i:=1 to 12 do
      a[i]:=0;
end;
procedure leervec (var a:tvec);
var
  arch:text;
  i,n,mes:byte;
  nom:string [15];
  aux:char;
begin
  assign (arch,'nombres.txt');
  reset (arch);
  readln (arch,N);
  for i:=1 to n do
      begin
        readln(arch,mes,aux,nom);
        a[mes]:=a[mes]+1;
      end;

end;
procedure mostrar (a:tvec);
var
  i:byte;
begin
  for i:=1 to 12 do
      writeln (meses[i],' cantidad ',a[i]);
end;
function mayorM (a:tvec):byte;
var
  i,max:byte;
begin
  max:=a[1];
  mayorm:=1;
  for i:=2 to 12 do
      if a[i]>max then
         begin
           max:=a[i];
           mayorm:=i;
         end;
end;
var
  cantidad:tvec;
  pos:byte;
begin
  inicio(cantidad);
  leervec(cantidad);
  mostrar (cantidad);
  pos:=mayorm (cantidad);
  writeln ('El mes ',meses[pos],' tiene ', cantidad[pos],' cumplanieros');
  readln;

end.

