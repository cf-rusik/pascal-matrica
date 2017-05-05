program maratrica;
        uses crt;
var
        max,k,s,c,m,n,min,i,j:integer;
        a:array[1..100,1..100] of integer;
        b:array[1..100] of integer;
begin
     randomize;
     clrscr;
     write('strok: ');
     readln(m);
     write('stolbcov: ');
     readln(n);
     for i:=1 to m do
         for j:=1 to n do
	               a[i,j]:=100+random(900);
     min:=a[1,1];
     for i:=1 to m do begin
	              writeln;
	              for j:=1 to n do begin
	                               write(a[i,j]);
	                               write(' ')
	                               end;
     end;
     for i:=1 to m do
         for j:=1 to n do
	               if (a[i,j]<min) then begin
	                                    min:=a[i,j];
	                                    s:=j
	                                    end;
     for i:=1 to m do
                      b[i]:=a[i,s];
                      for k:=1 to m-1 do begin
                                         max:=b[k];
                                         c:=k;
                                         for i:=k to N do
                                         if b[i]>max then begin
                                                          max:=b[i];
                                                          c:=i
                                                          end;
                                         b[c]:=b[k];
                                         b[k]:=max
                                         end;
     writeln;
     writeln;
     for i:=1 to m do writeln(b[i]);
     readkey;
end.