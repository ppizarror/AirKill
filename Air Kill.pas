program Airkill;
uses CRT,GRAPH,DOS;
var n,s:char;

//DIBUJO INICIAL
procedure dibujo;
var x,por:integer;
    a,n:char;
begin
  por:=10;
  for x:=1 to 2 do
  begin
    gotoxy(35,21);writeln('Loading... ',por,'%');
    delay(200);
    por:=por+10;
  end;
  for x:=1 to 3 do
  begin
    gotoxy(35,21);writeln('Loading... ',por,'%');
    delay(50);
    por:=por+5;
  end;
  for x:=1 to 10 do
  begin
    gotoxy(35,21);writeln('Loading... ',por,'%');
    delay(95);
    por:=por+1;
  end;
  for x:=1 to 40 do
  begin
    gotoxy(35,21);writeln('Loading... ',por,'%');
    delay(30);
    por:=por+1;
  end;
  for x:=1 to 1 do
  begin
    gotoxy(35,21);writeln('Loading... ',por,'%');
    delay(130);
    por:=por+5;
  end;
  for x:=1 to 1 do
  begin
    gotoxy(35,21);writeln('Loading... ',por,'%');
    delay(300);
    por:=por+5;
  end;
  repeat
    a:=chr(13);
    gotoxy(29,23);textcolor(white);write('Pulse Enter para continuar');
    gotoxy(1,22);n:=readkey;
  until(n=a);
  sound(1);
  clrscr;
end;


//TITULOS DEL INICIO
procedure titulosini;
begin
  gotoxy(31,10);write('Pablo Pizarro Presenta');
  textcolor(blue);
  delay(400);
  gotoxy(37,12);writeln('A');gotoxy(1,22);
  delay(200);
  gotoxy(38,12);writeln('I');gotoxy(1,22);
  delay(200);
  gotoxy(39,12);writeln('R');gotoxy(1,22);
  delay(200);
  gotoxy(40,12);writeln(' ');gotoxy(1,22);
  delay(200);
  gotoxy(41,12);writeln('K');gotoxy(1,22);
  delay(200);
  gotoxy(42,12);writeln('I');gotoxy(1,22);
  delay(200);
  gotoxy(43,12);writeln('L');gotoxy(1,22);
  delay(200);
  gotoxy(44,12);writeln('L');gotoxy(1,22);
  delay(2000);
  clrscr;
  gotoxy(1,22);delay(800);
end;

//EL MISMO TITULO PERO INSTANTANEO
procedure titulo;
begin
  textcolor(blue);
  gotoxy(37,3);writeln('A');
  gotoxy(38,3);writeln('I');
  gotoxy(39,3);writeln('R');
  gotoxy(40,3);writeln(' ');
  gotoxy(41,3);writeln('K');
  gotoxy(42,3);writeln('I');
  gotoxy(43,3);writeln('L');
  gotoxy(44,3);writeln('L');
end;

//EL MISMO TITULO PERO INSTANTANEO DE ARRIBA
procedure tituloarriba;
begin
  textcolor(blue);
  gotoxy(37,2);writeln('A');
  gotoxy(38,2);writeln('I');
  gotoxy(39,2);writeln('R');
  gotoxy(40,2);writeln(' ');
  gotoxy(41,2);writeln('K');
  gotoxy(42,2);writeln('I');
  gotoxy(43,2);writeln('L');
  gotoxy(44,2);writeln('L');
  textcolor(white);
end;

//RECUADRO NORMAL
procedure recuadro;
var
    x,y:integer;
begin
  textcolor(white);
  x:=21;
  y:=5;
  gotoxy(20,5);writeln(chr(218));
  repeat
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  until (x=60);
  x:=20;
  y:=6;
  repeat
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  until(y=20);
  gotoxy(20,20);writeln(chr(192));
  x:=21;
  repeat
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  until(x=60);
  gotoxy(60,5);writeln(chr(191));
  gotoxy(60,20);writeln(chr(217));
  y:=6;
  x:=60;
  repeat
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  until(y=20);
end;

//EFECTO CERRAR EL PROGRAMA (EL FIN COMPLETO)
procedure efectocerrarprograma;
var
    x,y:integer;
begin
  textcolor(white);
  clrscr;
  recuadro;
  delay(500);
  x:=22;
  y:=6;
  gotoxy(21,6);writeln(chr(218));
  repeat
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  until (x=59);
  x:=21;
  y:=7;
  repeat
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  until(y=19);
  gotoxy(21,19);writeln(chr(192));
  x:=22;
  y:=19;
  repeat
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  until(x=59);
  gotoxy(59,6);writeln(chr(191));
  gotoxy(59,19);writeln(chr(217));
  y:=7;
  x:=59;
  repeat
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  until(y=19);
  delay(500);
  clrscr;
  x:=23;
  y:=7;
  gotoxy(22,7);writeln(chr(218));
  repeat
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  until (x=58);
  x:=22;
  y:=8;
  repeat
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  until(y=18);
  gotoxy(22,18);writeln(chr(192));
  x:=23;
  y:=18;
  repeat
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  until(x=58);
  gotoxy(58,7);writeln(chr(191));
  gotoxy(58,18);writeln(chr(217));
  y:=8;
  x:=58;
  repeat
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  until(y=18);
  clrscr;
end;

//VENTANA GRANDE
procedure recuadrogrande;
var
    n,x,y:integer;
begin
  tituloarriba;
  x:=17;
  y:=3;
  gotoxy(16,3);writeln(chr(218));
  for n:=1 to 47 do
  begin
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  end;
  x:=16;
  y:=4;
  for n:=1 to 18 do
  begin
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  end;
  gotoxy(16,22);writeln(chr(192));
  gotoxy(64,3);writeln(chr(191));
  gotoxy(64,22);writeln(chr(217));
  x:=17;
  y:=22;
  for n:=1 to 47 do
  begin
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  end;
  x:=64;
  y:=4;
  for n:=1 to 18 do
  begin
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  end;
end;

//EFECTO AMPLIAR VENTANA {DE LA CHICA A LA GRANDE}
procedure efectoabrir;
var x,y,n:integer;
begin
  clrscr;
  recuadro;
  delay(500);
  x:=19;
  y:=4;
  gotoxy(18,4);writeln(chr(218));
  for n:=1 to 43 do
  begin
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  end;
  x:=18;
  y:=5;
  for n:=1 to 16 do
  begin
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  end;
  gotoxy(18,21);writeln(chr(192));
  gotoxy(62,4);writeln(chr(191));
  gotoxy(62,21);writeln(chr(217));
  x:=19;
  y:=21;
  for n:=1 to 43 do
  begin
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  end;
  x:=62;
  y:=5;
  for n:=1 to 16 do
  begin
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  end;
  delay(500);
  clrscr;
  tituloarriba;
  recuadrogrande;
  clrscr;
end;

//EFECTO CERRAR VENTANA  {DE LA GRANDE A LA CHICA}
procedure efectocerrar;
var x,y,n:integer;
begin
  clrscr;
  recuadrogrande;
  delay(500);
  x:=19;
  y:=4;
  gotoxy(18,4);writeln(chr(218));
  for n:=1 to 43 do
  begin
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  end;
  x:=18;
  y:=5;
  for n:=1 to 16 do
  begin
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  end;
  gotoxy(18,21);writeln(chr(192));
  gotoxy(62,4);writeln(chr(191));
  gotoxy(62,21);writeln(chr(217));
  x:=19;
  y:=21;
  for n:=1 to 43 do
  begin
    gotoxy(x,y);writeln(chr(196));
    inc(x);
  end;
  x:=62;
  y:=5;
  for n:=1 to 16 do
  begin
    gotoxy(x,y);writeln(chr(179));
    inc(y);
  end;
  delay(500);
  recuadro;
  clrscr;
end;

//EFECTO ESTRELLA {ES CUANDO SALE EL POP-UP EN EL JUEGO}
procedure efectoestrella;
begin
  gotoxy(17,16);write('x                                             x');
  gotoxy(17,4);write('x   x x x x x xx x x x x   x x  x x x x x x x x');
  delay(150);
  gotoxy(17,17);write('x x                                         x x');
  gotoxy(17,5);write('x x x      x x x x x x x x x x x x x x x    x x');
  delay(150);
  gotoxy(17,18);write('x x                x                      x x x');
  gotoxy(17,5);write('x x x x      x x x   x x x x x  x x x x   x x x');
  delay(150);
  gotoxy(17,19);write('x x x            x x x        x x x     x x x x');
  gotoxy(17,6);write('x x x            x x x        x x x     x x x x');
  delay(150);
  gotoxy(17,20);write('x x x x      x x x   x x x x x  x x x x   x x x');
  gotoxy(17,7);write('x x                x                      x x x');
  delay(150);
  gotoxy(17,21);write('x   x x x x x xx x x x x   x x  x x x x x x x x');
  gotoxy(17,8);write('x                                             x');
end;

//ESTRELLAS CUANDO GANAS
procedure efectoestrellafin;
begin
  textcolor(yellow);
  gotoxy(17,16);write('x                                             x');
  gotoxy(17,4);write('x   x x x x x xx x x x x   x x  x x x x x x x x');
  delay(150);
  textcolor(blue);
  gotoxy(17,17);write('x x                                         x x');
  gotoxy(17,5);write('x x x      x x x x x x x x x x x x x x x    x x');
  delay(150);
  textcolor(green);
  gotoxy(17,18);write('x x                x                      x x x');
  gotoxy(17,5);write('x x x x      x x x   x x x x x  x x x x   x x x');
  delay(150);
  textcolor(red);
  gotoxy(17,19);write('x x x            x x x        x x x     x x x x');
  gotoxy(17,6);write('x x x            x x x        x x x     x x x x');
  delay(150);
  textcolor(yellow);
  gotoxy(17,20);write('x x x x      x x x   x x x x x  x x x x   x x x');
  gotoxy(17,7);write('x x                x                      x x x');
  delay(150);
  textcolor(brown);
  gotoxy(17,21);write('x   x x x x x xx x x x x   x x  x x x x x x x x');
  gotoxy(17,8);write('x                                             x');
  textcolor(white);
end;

//RECUADRO QUE DICE LAS VIDAS
procedure recvidas;
begin
  recuadrogrande;
  gotoxy(66,5);textcolor(red);write('C');textcolor(white);write('cantidad de');
  gotoxy(66,6);write('vidas: ');textcolor(white);
end;

//RECUADRO QUE DICE LA CANTIDAD DE PUNTOS
procedure cantpuntos;
begin
  gotoxy(66,8);textcolor(red);write('P');textcolor(white);write('puntaje: ');
end;

//RECUADRO QUE DICE EL NIVEL
procedure level;
begin
  gotoxy(66,10);textcolor(red);write('E');textcolor(white);write('tapa: ');
end;

//RECUADRO QUE INFORMA SOBRE LOS BOTONES EN EL JUEGO
procedure botones;
begin
  gotoxy(11,24);write(#27#24#25#26,' Movimientos','   ESC para volver al menu','   R para repetir');
end;

//RECUADRO QUE INFORMA SOBRE LA CANTIDAD DE MOVIMIENTOS
procedure movim;
begin
  gotoxy(66,12);textcolor(red);write('M');textcolor(white);write('movimientos');
  gotoxy(66,13);write('restantes: ');
end;

//JUGAR MENU
procedure juego;
var
    cr,e:char;
    o:char;
    ox,oy:integer;
    vid:integer;
    v:integer;
    c:integer;
    continuar,cl,ent:char;
    x,y:integer;
    mov:char;
    procedo:char;
    avion:char;
    ox1,ox2,ox3,ox4,ox5,ox6,ox7,ox8,ox9,ox10:integer;
    oy1,oy2,oy3,oy4,oy5,oy6,oy7,oy8,oy9,oy10:integer;
    m,xb,yb:integer;
    xb1,yb1:integer;
    xb2,yb2:integer;
    xb3,yb3:integer;
    xb4,yb4:integer;
    xb5,yb5:integer;
    xb6,yb6:integer;
    xb7,yb7:integer;
    xb8,yb8:integer;
    vdificult:integer;
    bomba:char;
    a:array[1..10] of integer;
    b:array[1..10] of integer;
    a1:array[1..10] of integer;
    b1:array[1..10] of integer;
    a2:array[1..10] of integer;
    b2:array[1..10] of integer;
    a3:array[1..10] of integer;
    b3:array[1..10] of integer;
    a4:array[1..10] of integer;
    b4:array[1..10] of integer;
    a5:array[1..10] of integer;
    b5:array[1..10] of integer;
    a6:array[1..10] of integer;
    b6:array[1..10] of integer;
    a7:array[1..10] of integer;
    b7:array[1..10] of integer;
    a8:array[1..10] of integer;
    b8:array[1..10] of integer;
    dificultad:integer;
    niv,vi:integer;
    puntaje:integer;
    nombre:string[5];
    n,nx,ny:integer;
    auto,jugar:boolean;
    ddj:integer;
    cmax,cm:integer;
begin
  efectoabrir;
  recuadrogrande;
  if (auto=true) then {si se jugo, muestra la informacion}
  begin
    if ddj=1 then
    begin
      gotoxy(17,23);write('Nombre del ultimo jugador ganador: ',nombre,'  (Facil)');
    end;
    if ddj=2 then
    begin
      gotoxy(17,23);write('Nombre del ultimo jugador ganador: ',nombre,'  (Medio)');
    end;
    if ddj=3 then
    begin
      gotoxy(17,23);write('Nombre del ultimo jugador ganador: ',nombre,'  (Dificil)');
    end;
    if ddj=4 then
    begin
      gotoxy(17,23);write('Nombre del ultimo jugador ganador: ',nombre,'  (Inhumano)');
    end;
  end;
  gotoxy(23,5);write('Seleccione Dificultad');
  gotoxy(20,7);write('*');textcolor(red);write(' F');textcolor(white);write('acil');
  gotoxy(20,8);write('*');textcolor(red);write(' M');textcolor(white);write('edio');
  gotoxy(20,9);write('*');textcolor(red);write(' D');textcolor(white);write('ificil');
  gotoxy(20,10);write('*');textcolor(red);write(' I');textcolor(white);write('nhumano');
  gotoxy(19,18);write('Elija una de las opciones pulsando la letra');
  gotoxy(19,19);write('correspondiente a la dificultad pulse ESC');
  gotoxy(19,20);write('para volver al menu');
  repeat
    gotoxy(1,22);cr:=ReadKey;
    if cr='F' then
    begin
      cr:='f';
    end;
    if cr='D' then
    begin
      cr:='d';
    end;
    if cr='M' then
    begin
      cr:='m';
    end;
    if cr='I' then
    begin
      cr:='i';
    end;
    case cr of
      'f':
      begin
        gotoxy(30,13);write('Su opcion fue ');textcolor(blue);write('facil');textcolor(white);
        gotoxy(19,14);write('        Ahora pulse cualquier tecla        ');
        gotoxy(1,22);readkey;
        e:='c';
        niv:=1;
        clrscr;
        jugar:=true;
      end;
      'm':
      begin
        gotoxy(30,13);write('Su opcion fue ');textcolor(blue);write('medio');textcolor(white);
        gotoxy(19,14);write('        Ahora pulse cualquier tecla        ');
        gotoxy(1,22);readkey;
        e:='c';
        niv:=2;
        clrscr;
        jugar:=true;
      end;
      'd':
      begin
        gotoxy(30,13);write('Su opcion fue ');textcolor(blue);write('dificil');textcolor(white);
        gotoxy(19,14);write('        Ahora pulse cualquier tecla        ');
        gotoxy(1,22);readkey;
        e:='c';
        niv:=3;
        clrscr;
        jugar:=true;
      end;
      'i':
      begin
        gotoxy(30,13);write('Su opcion fue ');textcolor(blue);write('inhumano');textcolor(white);
        gotoxy(19,14);write('        Ahora pulse cualquier tecla        ');
        gotoxy(1,22);readkey;
        niv:=4;
        clrscr;
        e:='c';
        jugar:=true;
      end;
      #27:
      begin
        e:='c';
        jugar:=false;
      end;
      else
      e:='s';
    end;
  until(e='c');

  while (jugar=true) do
  begin
    repeat
      if niv=1 then
      begin
        dificultad:=2;
        vid:=5;
        vdificult:=10;
        cmax:=999999999;
      end;
      if niv=2 then
      begin
        dificultad:=4;
        vid:=4;
        vdificult:=40;
        cmax:=350;
        cm:=350;
      end;
      if niv=3 then
      begin
        dificultad:=6;
        vid:=3;
        vdificult:=60;
        cmax:=200;
        cm:=200;
      end;
      if niv=4 then
      begin
        dificultad:=9;
        vid:=1;
        vdificult:=100;
        cmax:=120;
        cm:=120;
      end;
      for v:=1 to vdificult do
      begin
        if niv=2 then
        begin
          cm:=350;
        end;
        if niv=3 then
        begin
          cm:=200;
        end;
        if niv=4 then
        begin
          cm:=120;
        end;
        gotoxy(73,6);textcolor(red);write(vid);textcolor(white);
        x:=Random(44)+17;
        y:=21;
        bomba:='x';
        procedo:='S';
        avion:=#24;
        recvidas;
        botones;
        o:='S';
        vi:=0;
        textcolor(red);
        if niv=1 then
        begin
          xb:=RandoM(44)+17;
          yb:=RandoM(16)+4;
          xb1:=RandoM(44)+17;
          yb1:=RandoM(16)+4;
          xb2:=RandoM(44)+17;
          yb2:=RandoM(16)+4;
          for m:=1 to dificultad do
          begin
            gotoxy(xb,yb);write(bomba);
            a[m]:=xb;
            b[m]:=yb;
            xb:=random(44)+17;
            yb:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb1,yb1);write(bomba);
            a1[m]:=xb1;
            b1[m]:=yb1;
            xb1:=random(44)+17;
            yb1:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb2,yb2);write(bomba);
            a2[m]:=xb2;
            b2[m]:=yb2;
            xb2:=random(44)+17;
            yb2:=random(16)+4;
          end;
        end;
        if niv=2 then
        begin
          xb:=RandoM(44)+17;
          yb:=RandoM(16)+4;
          xb1:=RandoM(44)+17;
          yb1:=RandoM(16)+4;
          xb2:=RandoM(44)+17;
          yb2:=RandoM(16)+4;
          xb3:=RandoM(44)+17;
          yb3:=RandoM(16)+4;
          xb4:=RandoM(44)+17;
          yb4:=RandoM(16)+4;
          for m:=1 to dificultad do
          begin
            gotoxy(xb,yb);write(bomba);
            a[m]:=xb;
            b[m]:=yb;
            xb:=random(44)+17;
            yb:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb1,yb1);write(bomba);
            a1[m]:=xb1;
            b1[m]:=yb1;
            xb1:=random(44)+17;
            yb1:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb2,yb2);write(bomba);
            a2[m]:=xb2;
            b2[m]:=yb2;
            xb2:=random(44)+17;
            yb2:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb3,yb3);write(bomba);
            a3[m]:=xb3;
            b3[m]:=yb3;
            xb3:=random(44)+17;
            yb3:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb4,yb4);write(bomba);
            a4[m]:=xb4;
            b4[m]:=yb4;
            xb4:=random(44)+17;
            yb4:=random(16)+4;
          end;
        end;
        if niv=3 then
        begin
          xb:=RandoM(44)+17;
          yb:=RandoM(16)+4;
          xb1:=RandoM(44)+17;
          yb1:=RandoM(16)+4;
          xb2:=RandoM(44)+17;
          yb2:=RandoM(16)+4;
          xb3:=RandoM(44)+17;
          yb3:=RandoM(16)+4;
          xb4:=RandoM(44)+17;
          yb4:=RandoM(16)+4;
          xb5:=RandoM(44)+17;
          yb5:=RandoM(16)+4;
          xb6:=RandoM(44)+17;
          yb6:=RandoM(16)+4;
          for m:=1 to dificultad do
          begin
            gotoxy(xb,yb);write(bomba);
            a[m]:=xb;
            b[m]:=yb;
            xb:=random(44)+17;
            yb:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb1,yb1);write(bomba);
            a1[m]:=xb1;
            b1[m]:=yb1;
            xb1:=random(44)+17;
            yb1:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb2,yb2);write(bomba);
            a2[m]:=xb2;
            b2[m]:=yb2;
            xb2:=random(44)+17;
            yb2:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb3,yb3);write(bomba);
            a3[m]:=xb3;
            b3[m]:=yb3;
            xb3:=random(44)+17;
            yb3:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb4,yb4);write(bomba);
            a4[m]:=xb4;
            b4[m]:=yb4;
            xb4:=random(44)+17;
            yb4:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb5,yb5);write(bomba);
            a5[m]:=xb5;
            b5[m]:=yb5;
            xb5:=random(44)+17;
            yb5:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb6,yb6);write(bomba);
            a6[m]:=xb6;
            b6[m]:=yb6;
            xb6:=random(44)+17;
            yb6:=random(16)+4;
          end;
        end;
        if niv=4 then
        begin
          xb:=RandoM(44)+17;
          yb:=RandoM(16)+4;
          xb1:=RandoM(44)+17;
          yb1:=RandoM(16)+4;
          xb2:=RandoM(44)+17;
          yb2:=RandoM(16)+4;
          xb3:=RandoM(44)+17;
          yb3:=RandoM(16)+4;
          xb4:=RandoM(44)+17;
          yb4:=RandoM(16)+4;
          xb5:=RandoM(44)+17;
          yb5:=RandoM(16)+4;
          xb6:=RandoM(44)+17;
          yb6:=RandoM(16)+4;
          xb7:=RandoM(44)+17;
          yb7:=RandoM(16)+4;
          xb8:=RandoM(44)+17;
          yb8:=RandoM(16)+4;
          for m:=1 to dificultad do
          begin
            gotoxy(xb,yb);write(bomba);
            a[m]:=xb;
            b[m]:=yb;
            xb:=random(44)+17;
            yb:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb1,yb1);write(bomba);
            a1[m]:=xb1;
            b1[m]:=yb1;
            xb1:=random(44)+17;
            yb1:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb2,yb2);write(bomba);
            a2[m]:=xb2;
            b2[m]:=yb2;
            xb2:=random(44)+17;
            yb2:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb3,yb3);write(bomba);
            a3[m]:=xb3;
            b3[m]:=yb3;
            xb3:=random(44)+17;
            yb3:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb4,yb4);write(bomba);
            a4[m]:=xb4;
            b4[m]:=yb4;
            xb4:=random(44)+17;
            yb4:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb5,yb5);write(bomba);
            a5[m]:=xb5;
            b5[m]:=yb5;
            xb5:=random(44)+17;
            yb5:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb6,yb6);write(bomba);
            a6[m]:=xb6;
            b6[m]:=yb6;
            xb6:=random(44)+17;
            yb6:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb7,yb7);write(bomba);
            a7[m]:=xb7;
            b7[m]:=yb7;
            xb7:=random(44)+17;
            yb7:=random(16)+4;
          end;
          for m:=1 to dificultad do
          begin
            gotoxy(xb8,yb8);write(bomba);
            a8[m]:=xb8;
            b8[m]:=yb8;
            xb8:=random(44)+17;
            yb8:=random(16)+4;
          end;
        end;
        ox:=random(44)+17;
        oy:=random(16)+4;
        ox1:=random(44)+17;
        oy1:=random(16)+4;
        ox2:=random(44)+17;
        oy2:=random(16)+4;
        ox3:=random(44)+17;
        oy3:=random(16)+4;
        ox4:=random(44)+17;
        oy4:=random(16)+4;
        ox5:=random(44)+17;
        oy5:=random(16)+4;
        ox6:=random(44)+17;
        oy6:=random(16)+4;
        ox7:=random(44)+17;
        oy7:=random(16)+4;
        ox8:=random(44)+17;
        oy8:=random(16)+4;
        ox9:=random(44)+17;
        oy9:=random(16)+4;
        ox10:=random(44)+17;
        oy10:=random(16)+4;
        puntaje:=0;
        for m:=1 to dificultad do
        begin
          if (ox=a[m]) and (oy=b[m]) then
          begin
            ox:=a[m];
            oy:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox=a2[m]) and (oy=b2[m]) then
          begin
            ox:=a2[m];
            oy:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox=a3[m]) and (oy=b3[m]) then
          begin
            ox:=a3[m];
            oy:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox=a4[m]) and (oy=b4[m]) then
          begin
            ox:=a4[m];
            oy:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox=a5[m]) and (oy=b5[m]) then
          begin
            ox:=a5[m];
            oy:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox=a6[m]) and (oy=b6[m]) then
          begin
            ox:=a6[m];
            oy:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox=a7[m]) and (oy=b7[m]) then
          begin
            ox:=a7[m];
            oy:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox=a8[m]) and (oy=b8[m]) then
          begin
            ox:=a8[m];
            oy:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox1=a[m]) and (oy1=b[m]) then
          begin
            ox1:=a[m];
            oy1:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox1=a2[m]) and (oy1=b2[m]) then
          begin
            ox1:=a2[m];
            oy1:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox1=a3[m]) and (oy1=b3[m]) then
          begin
            ox1:=a3[m];
            oy1:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox1=a4[m]) and (oy1=b4[m]) then
          begin
            ox1:=a4[m];
            oy1:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox1=a5[m]) and (oy1=b5[m]) then
          begin
            ox1:=a5[m];
            oy1:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox1=a6[m]) and (oy1=b6[m]) then
          begin
            ox1:=a6[m];
            oy1:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox1=a7[m]) and (oy1=b7[m]) then
          begin
            ox1:=a7[m];
            oy1:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox1=a8[m]) and (oy1=b8[m]) then
          begin
            ox1:=a8[m];
            oy1:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox2=a[m]) and (oy2=b[m]) then
          begin
            ox2:=a[m];
            oy2:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox2=a2[m]) and (oy2=b2[m]) then
          begin
            ox2:=a2[m];
            oy2:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox2=a3[m]) and (oy2=b3[m]) then
          begin
            ox2:=a3[m];
            oy2:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox2=a4[m]) and (oy2=b4[m]) then
          begin
            ox2:=a4[m];
            oy2:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox2=a5[m]) and (oy2=b5[m]) then
          begin
            ox2:=a5[m];
            oy2:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox2=a6[m]) and (oy2=b6[m]) then
          begin
            ox2:=a6[m];
            oy2:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox2=a7[m]) and (oy2=b7[m]) then
          begin
            ox2:=a7[m];
            oy2:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox2=a8[m]) and (oy2=b8[m]) then
          begin
            ox2:=a8[m];
            oy2:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox3=a[m]) and (oy3=b[m]) then
          begin
            ox3:=a[m];
            oy3:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox3=a2[m]) and (oy3=b2[m]) then
          begin
            ox3:=a2[m];
            oy3:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox3=a3[m]) and (oy3=b3[m]) then
          begin
            ox3:=a3[m];
            oy3:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox3=a4[m]) and (oy3=b4[m]) then
          begin
            ox3:=a4[m];
            oy3:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox3=a5[m]) and (oy3=b5[m]) then
          begin
            ox3:=a5[m];
            oy3:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox3=a6[m]) and (oy3=b6[m]) then
          begin
            ox3:=a6[m];
            oy3:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox3=a7[m]) and (oy3=b7[m]) then
          begin
            ox3:=a7[m];
            oy3:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox3=a8[m]) and (oy3=b8[m]) then
          begin
            ox3:=a8[m];
            oy3:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox4=a[m]) and (oy4=b[m]) then
          begin
            ox4:=a[m];
            oy4:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox4=a2[m]) and (oy4=b2[m]) then
          begin
            ox4:=a2[m];
            oy4:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox4=a3[m]) and (oy4=b3[m]) then
          begin
            ox4:=a3[m];
            oy4:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox4=a4[m]) and (oy4=b4[m]) then
          begin
            ox4:=a4[m];
            oy4:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox4=a5[m]) and (oy4=b5[m]) then
          begin
            ox4:=a5[m];
            oy4:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox4=a6[m]) and (oy4=b6[m]) then
          begin
            ox4:=a6[m];
            oy4:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox4=a7[m]) and (oy4=b7[m]) then
          begin
            ox4:=a7[m];
            oy4:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox4=a8[m]) and (oy4=b8[m]) then
          begin
            ox4:=a8[m];
            oy4:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox5=a[m]) and (oy5=b[m]) then
          begin
            ox5:=a[m];
            oy5:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox5=a2[m]) and (oy5=b2[m]) then
          begin
            ox5:=a2[m];
            oy5:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox5=a3[m]) and (oy5=b3[m]) then
          begin
            ox5:=a3[m];
            oy5:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox5=a4[m]) and (oy5=b4[m]) then
          begin
            ox5:=a4[m];
            oy5:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox5=a5[m]) and (oy5=b5[m]) then
          begin
            ox5:=a5[m];
            oy5:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox5=a6[m]) and (oy5=b6[m]) then
          begin
            ox5:=a6[m];
            oy5:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox5=a7[m]) and (oy5=b7[m]) then
          begin
            ox5:=a7[m];
            oy5:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox5=a8[m]) and (oy5=b8[m]) then
          begin
            ox5:=a8[m];
            oy5:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox6=a[m]) and (oy6=b[m]) then
          begin
            ox6:=a[m];
            oy6:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox6=a2[m]) and (oy6=b2[m]) then
          begin
            ox6:=a2[m];
            oy6:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox6=a3[m]) and (oy6=b3[m]) then
          begin
            ox6:=a3[m];
            oy6:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox6=a4[m]) and (oy6=b4[m]) then
          begin
            ox6:=a4[m];
            oy6:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox6=a5[m]) and (oy6=b5[m]) then
          begin
            ox6:=a5[m];
            oy6:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox6=a6[m]) and (oy6=b6[m]) then
          begin
            ox6:=a6[m];
            oy6:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox6=a7[m]) and (oy6=b7[m]) then
          begin
            ox6:=a7[m];
            oy6:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox6=a8[m]) and (oy6=b8[m]) then
          begin
            ox6:=a8[m];
            oy6:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox7=a[m]) and (oy7=b[m]) then
          begin
            ox7:=a[m];
            oy7:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox7=a2[m]) and (oy7=b2[m]) then
          begin
            ox7:=a2[m];
            oy7:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox7=a3[m]) and (oy7=b3[m]) then
          begin
            ox7:=a3[m];
            oy7:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox7=a4[m]) and (oy7=b4[m]) then
          begin
            ox7:=a4[m];
            oy7:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox7=a5[m]) and (oy7=b5[m]) then
          begin
            ox7:=a5[m];
            oy7:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox7=a6[m]) and (oy7=b6[m]) then
          begin
            ox7:=a6[m];
            oy7:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox7=a7[m]) and (oy7=b7[m]) then
          begin
            ox7:=a7[m];
            oy7:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox7=a8[m]) and (oy7=b8[m]) then
          begin
            ox7:=a8[m];
            oy7:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox8=a[m]) and (oy8=b[m]) then
          begin
            ox8:=a[m];
            oy8:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox8=a2[m]) and (oy8=b2[m]) then
          begin
            ox8:=a2[m];
            oy8:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox8=a3[m]) and (oy8=b3[m]) then
          begin
            ox8:=a3[m];
            oy8:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox8=a4[m]) and (oy8=b4[m]) then
          begin
            ox8:=a4[m];
            oy8:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox8=a5[m]) and (oy8=b5[m]) then
          begin
            ox8:=a5[m];
            oy8:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox8=a6[m]) and (oy8=b6[m]) then
          begin
            ox8:=a6[m];
            oy8:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox8=a7[m]) and (oy8=b7[m]) then
          begin
            ox8:=a7[m];
            oy8:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox8=a8[m]) and (oy8=b8[m]) then
          begin
            ox8:=a8[m];
            oy8:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox9=a[m]) and (oy9=b[m]) then
          begin
            ox9:=a[m];
            oy9:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox9=a2[m]) and (oy9=b2[m]) then
          begin
            ox9:=a2[m];
            oy9:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox9=a3[m]) and (oy9=b3[m]) then
          begin
            ox9:=a3[m];
            oy9:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox9=a4[m]) and (oy9=b4[m]) then
          begin
            ox9:=a4[m];
            oy9:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox9=a5[m]) and (oy9=b5[m]) then
          begin
            ox9:=a5[m];
            oy9:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox9=a6[m]) and (oy9=b6[m]) then
          begin
            ox9:=a6[m];
            oy9:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox9=a7[m]) and (oy9=b7[m]) then
          begin
            ox9:=a7[m];
            oy9:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox9=a8[m]) and (oy9=b8[m]) then
          begin
            ox9:=a8[m];
            oy9:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
          if (ox10=a[m]) and (oy10=b[m]) then
          begin
            ox10:=a[m];
            oy10:=b[m];
            a[m]:=1;
            b[m]:=1;
          end;
          if (ox10=a2[m]) and (oy10=b2[m]) then
          begin
            ox10:=a2[m];
            oy10:=b2[m];
            a2[m]:=1;
            b2[m]:=1;
          end;
          if (ox10=a3[m]) and (oy10=b3[m]) then
          begin
            ox10:=a3[m];
            oy10:=b3[m];
            a3[m]:=1;
            b3[m]:=1;
          end;
          if (ox10=a4[m]) and (oy10=b4[m]) then
          begin
            ox10:=a4[m];
            oy10:=b4[m];
            a4[m]:=1;
            b4[m]:=1;
          end;
          if (ox10=a5[m]) and (oy10=b5[m]) then
          begin
            ox10:=a5[m];
            oy10:=b5[m];
            a5[m]:=1;
            b5[m]:=1;
          end;
          if (ox10=a6[m]) and (oy10=b6[m]) then
          begin
            ox10:=a6[m];
            oy10:=b6[m];
            a6[m]:=1;
            b6[m]:=1;
          end;
          if (ox10=a7[m]) and (oy10=b7[m]) then
          begin
            ox10:=a7[m];
            oy10:=b7[m];
            a7[m]:=1;
            b7[m]:=1;
          end;
          if (ox10=a8[m]) and (oy10=b8[m]) then
          begin
            ox10:=a8[m];
            oy10:=b8[m];
            a8[m]:=1;
            b8[m]:=1;
          end;
        end;
        textcolor(green);
        gotoxy(ox,oy);write(o);
        gotoxy(ox1,oy1);write(o);
        gotoxy(ox2,oy2);write(o);
        gotoxy(ox3,oy3);write(o);
        gotoxy(ox4,oy4);write(o);
        gotoxy(ox5,oy5);write(o);
        gotoxy(ox6,oy6);write(o);
        gotoxy(ox7,oy7);write(o);
        gotoxy(ox8,oy8);write(o);
        gotoxy(ox9,oy9);write(o);
        gotoxy(ox10,oy10);write(o);
        textcolor(white);
        level;
        for c:=1 to cmax do
        begin
          cantpuntos;
          movim;
          if niv=1 then
          begin
            gotoxy(76,13);write('Inf.');
          end;
          if niv>1 then
          begin
            gotoxy(76,13);write('   ');
            gotoxy(76,13);write(cm);
          end;
          gotoxy(75,8);write(puntaje,'/11');
          gotoxy(75,10);write(v, ' /',vdificult);
          gotoxy(x,y);textcolor(blue);write(avion);textcolor(white);
          gotoxy(1,22);
          mov:=ReadKey;
          if mov='r' then
          begin
            mov:='R'
          end;
          case mov of
            #72:
            begin
              gotoxy(x,y);write(' ');
              avion:=#24;
              if (y>4) and (y<23) then
              begin
                y:=y-1;
                c:=c-1;
                cm:=cm-1;
              end;
              if y=22 then
              begin
                y:=y;
                cm:=cm-2;
              end;
            end;
            #75:
            begin
              avion:=#27;
              gotoxy(x,y);write(' ');
              if x>17 then
              begin
                x:=x-1;
                c:=c-1;
                cm:=cm-1;
              end;
              if x=16 then
              begin
                x:=x;
                cm:=cm-2;
              end;
            end;
            #77:
            begin
              avion:=#26;
              gotoxy(x,y);write(' ');
              if x<63 then
              begin
                x:=x+1;
                c:=c-1;
                cm:=cm-1;
              end;
              if x=64 then
              begin
                x:=x;
                cm:=cm-2;
              end;
            end;
            #80:
            begin
              avion:=#25;
              gotoxy(x,y);write(' ');
              if y<21 then
              begin
                y:=y+1;
                c:=c-1;
                cm:=cm-1;
              end;
              if y=21 then
              begin
                y:=y;
                cm:=cm-2;
              end;
            end;
            #27:
            begin
              clrscr;
              c:=cmax+1;
              v:=vdificult+1;
              continuar:='N';
              procedo:='N';
              jugar:=false;
            end;
            'R':
            begin
              clrscr;
              c:=cmax+1;
              v:=vdificult+1;
              procedo:='N';
              continuar:='S';
            end;
            else
            begin
              x:=x;
              y:=y;
            end;
          end;
          if (ox=x) and (oy=y) then
          begin
            inc(puntaje);
            gotoxy(ox,oy);write(' ');
            ox:=0;
            oy:=0;
            sound(1);
          end;
          if (ox1=x) and (oy1=y) then
          begin
            inc(puntaje);
            gotoxy(ox1,oy1);write(' ');
            ox1:=1;
            oy1:=1;
            sound(1);
          end;
          if (ox2=x) and (oy2=y) then
          begin
            inc(puntaje);
            gotoxy(ox2,oy2);write(' ');
            ox2:=1;
            oy2:=1;
            sound(1);
          end;
          if (ox3=x) and (oy3=y) then
          begin
            inc(puntaje);
            gotoxy(ox3,oy3);write(' ');
            ox3:=1;
            oy3:=1;
            sound(1);
          end;
          if (ox4=x) and (oy4=y) then
          begin
            inc(puntaje);
            gotoxy(ox4,oy4);write(' ');
            ox4:=1;
            oy4:=1;
            sound(1);
          end;
          if (ox5=x) and (oy5=y) then
          begin
            inc(puntaje);
            gotoxy(ox5,oy5);write(' ');
            ox5:=1;
            oy5:=1;
            sound(1);
          end;
          if (ox6=x) and (oy6=y) then
          begin
            inc(puntaje);
            gotoxy(ox6,oy6);write(' ');
            ox6:=1;
            oy6:=1;
            sound(1);
          end;
          if (ox7=x) and (oy7=y) then
          begin
            inc(puntaje);
            gotoxy(ox7,oy7);write(' ');
            ox7:=1;
            oy7:=1;
            sound(1);
          end;
          if (ox8=x) and (oy8=y) then
          begin
            inc(puntaje);
            gotoxy(ox8,oy8);write(' ');
            ox8:=1;
            oy8:=1;
            sound(1);
          end;
          if (ox9=x) and (oy9=y) then
          begin
            inc(puntaje);
            gotoxy(ox9,oy9);write(' ');
            ox9:=1;
            oy9:=1;
            sound(1);
          end;
          if (ox10=x) and (oy10=y) then
          begin
            inc(puntaje);
            gotoxy(ox10,oy10);write(' ');
            ox10:=1;
            oy10:=1;
            sound(1);
          end;
          if puntaje=11 then
          begin
            clrscr;
            c:=cmax+1;
            procedo:='N';
            if niv<3 then
            begin
              vid:=vid+1;
            end;
            if niv=3 then
            begin
              vi:=vi+1;
              if vi=5 then
              begin
                vid:=vid+1;
                vi:=0;
              end;
            end;
            if niv=4 then
            begin
              vi:=vi+1;
              if vi=10 then
              begin
                vid:=vid+1;
                vi:=0;
              end;
            end;
          end;
          if niv=1 then
          begin
            for m:=1 to dificultad do
            begin
              if (a[m]=x) and (b[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a1[m]=x) and (b1[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a2[m]=x) and (b2[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
            end;
          end;
          if niv=2 then
          begin
            for m:=1 to dificultad do
            begin
              if (a[m]=x) and (b[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a1[m]=x) and (b1[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a2[m]=x) and (b2[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a3[m]=x) and (b3[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a4[m]=x) and (b4[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
            end;
          end;
          if niv=4 then
          begin
            for m:=1 to dificultad do
            begin
              if (a[m]=x) and (b[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a1[m]=x) and (b1[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a2[m]=x) and (b2[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a3[m]=x) and (b3[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a4[m]=x) and (b4[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a5[m]=x) and (b5[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a6[m]=x) and (b6[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a7[m]=x) and (b7[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a8[m]=x) and (b8[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
            end;
          end;
          if niv=3 then
          begin
            for m:=1 to dificultad do
            begin
              if (a[m]=x) and (b[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a1[m]=x) and (b1[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a2[m]=x) and (b2[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a3[m]=x) and (b3[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a4[m]=x) and (b4[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a5[m]=x) and (b5[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
              if (a6[m]=x) and (b6[m]=y) then
              begin
                c:=cmax+1;
                m:=dificultad+1;
              end;
            end;
          end;
        end;
        if (v=vdificult) then
        begin
          recuadrogrande;
          efectoestrellafin;
          gotoxy(26,12);Textcolor(red);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(blue);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(green);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(yellow);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(RED);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(red);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(blue);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(green);write('Has ganado todo, Felicitaciones');
          delay(100);
          sound(1);
          gotoxy(26,12);Textcolor(yellow);write('Has ganado todo, Felicitaciones');
          delay(100);
          gotoxy(26,12);Textcolor(white);write('Has ganado todo, Felicitaciones');
          delay(390);
          gotoxy(29,13);write('Porfavor ingrese su nombre');
          for n:=1 to 27 do
          begin
            nx:=29;
            ny:=14;
            gotoxy(nx,ny);write(chr(196));
            inc(nx);
            delay(38);
          end;
          gotoxy(29,14);textcolor(white);readln(nombre);
          gotoxy(29,13);textcolor(red);
          gotoxy(30,13);textcolor(white);
          auto:=true;
          ddj:=niv;
          gotoxy(31,16);write('Ahora presione ENTER');
          repeat
            ent:=ReadKey;
          until(ent=#13);
          continuar:='N';
          procedo:='N';
          jugar:=false;
          clrscr;
        end;
        while(procedo='S')do
        begin
          vid:=vid-1;
          clrscr;
          botones;
          if (vid<999) and (vid>=1) then
          begin
            recuadrogrande;
            efectoestrella;
            sound(2);
            gotoxy(30,12);Textcolor(red);write('Y');textcolor(white);write('a has perdido una vida');
            gotoxy(30,13);write('     Pulsa ');Textcolor(Yellow);write('ENTER      ');
            textcolor(white);
            repeat
              ent:=ReadKey;
            until(ent=#13);
            procedo:='C';
            c:=vdificult-1;
            clrscr;
          end;
          if vid=0 then
          begin
            c:=vdificult+1;
            clrscr;
            recuadrogrande;
            efectoestrella;
            botones;
            sound(2);
            sound(2);
            gotoxy(27,12);textcolor(blue);write('H');textcolor(white);write('as perdido todas las vidas ');
            gotoxy(30,13);textcolor(blue);write('Q');textcolor(white);write('ueres Continuar S/N ');
            repeat
              continuar:=ReadKey;
              if continuar='s' then
              begin
                continuar:='S';
              end;
              if continuar='n' then
              begin
                continuar:='N';
              end;
              case continuar of
                'S':
                begin
                  cl:='S';
                  jugar:=true;
                  continuar:='S';
                  procedo:='N';
                  v:=vdificult+1;
                  clrscr;
                end;
                'N':
                begin
                  cl:='S';
                  continuar:='N';
                  procedo:='N';
                  v:=vdificult+1;
                  jugar:=false;
                end;
                else
                begin
                  cl:='N';
                end;
              end;
            until(cl='S');
          end;
        end;
      end;
    until(continuar='N');
  end;
  efectocerrar;
end;

//MENUNODO
procedure menunodo;
begin
  clrscr;
  recuadro;
  titulo;
  gotoxy(42,21);writeln('Pablo Pizarro ©2010');
  gotoxy(30,10);textcolor(red);write('C');textcolor(white);write('omenzar');
  gotoxy(39,7);writeln('MENU');
  gotoxy(30,12);textcolor(red);write('I');textcolor(white);write('nstrucciones');
  gotoxy(30,14);textcolor(red);write('A');textcolor(white);write('cerca de');
  gotoxy(30,16);textcolor(red);write('S');textcolor(white);write('alir');
end;

//INSTRUCCIONES MENU
procedure instruccionesmenu;
var h,no,r:char;
    x:integer;
begin
  x:=1;
  efectoabrir;
  repeat
    if x=1 then
    begin
      recuadrogrande;
      gotoxy(19,4);textcolor(blue);write('I');textcolor(white);write('nstrucciones','                         pag.',x);
      gotoxy(19,6);write(#27#24#25#26);write(
      '        Con estas teclas tu te mueves ');
      gotoxy(19,7);write('R           Con esta tecla repites el juego ');
      gotoxy(19,8);write('ESC         Con esta tecla cierras algunas');
      gotoxy(19,9);write('            ventanas                      ');
      gotoxy(19,10);write('Pulsa las teclas marcadas con rojo en los m');
      gotoxy(19,11);write('enus para acceder a los contenidos         ');
      gotoxy(19,13);write('El juego consiste en comerte todas las ');textcolor(green);write('S');textcolor(white);write(' d-');
      gotoxy(19,14);write('el mapa, pero ten cuidado con las ');textcolor(red);write('x');textcolor(white);write(', que s-');
      gotoxy(19,15);write('on minas aereas, que si las tocas pierdes u');
      gotoxy(19,16);write('na vida, las que son deteterminadas para ca');
      gotoxy(19,17);write('da dificultad. Tras 11 puntos o 11 S podras');
      gotoxy(19,18);write('pasar la etapa, luego, tras haber pasado To');
      gotoxy(19,19);write('das las etapas te daras vuelta el juego. En');
      gotoxy(19,20);write('facil y Medio ganas ');textcolor(red);write('1');textcolor(white);write(' vida por etapa ganada');
      gotoxy(19,21);write('en Dificil e en la dificultad inhumano, no ');
      gotoxy(18,24);write(#27#26,' Avanzar de hoja','   ESC para volver al menu');
      repeat
        gotoxy(1,22);h:=ReadKey;
        case h of
          #27:
          begin
            r:='C';
            no:='Y';
          end;
          #75:
          begin
            if x=1 then
            begin
              x:=x;
              r:='C';
            end;
            if x>1 then
            begin
              x:=x-1;
              r:='C'
            end;
          end;
          #77:
          begin
            if x>0 then
            begin
              x:=x+1;
              r:='C';
            end;
            if x=3 then
            x:=x;
            r:='C';
          end;
        end;
      until(r='C');
    end;
    if x=2 then
    begin
      clrscr;
      recuadrogrande;
      gotoxy(19,4);textcolor(blue);write('I');textcolor(white);write('nstrucciones','                         pag.',x);
      gotoxy(19,6);write('se ganan vidas por pasar los niveles, asi q');
      gotoxy(19,7);write('ue mejor, juega con cuidado!               ');
      gotoxy(19,8);write('La cantidad de vidas tambien es predetermi-');
      gotoxy(19,9);write('nada para cada nivel.                      ');
      gotoxy(19,11);textcolor(yellow);write(' *');textcolor(white);write('Modo ');textcolor(red);
      write('F');textcolor(white);write('acil:  -Son 5 vidas iniciales      ');
      gotoxy(19,12);write('               -Son 10 etapas              ');
      gotoxy(19,13);textcolor(yellow);write(' *');textcolor(white);write('Modo ');textcolor(red);
      write('M');textcolor(white);write('edio:  -Son 4 vidas iniciales      ');
      gotoxy(19,14);write('               -Son 40 etapas              ');
      gotoxy(19,15);textcolor(yellow);write(' *');textcolor(white);write('Modo ');textcolor(red);
      write('D');textcolor(white);write('ificil:-Son 3 vidas iniciales      ');
      gotoxy(19,16);write('               -Son 60 etapas              ');
      gotoxy(19,17);textcolor(yellow);write(' *');textcolor(white);write('Modo ');textcolor(red);
      write('I');textcolor(white);write('nhumano:                           ');
      gotoxy(19,18);write('               -Es 1 vida inicial ');
      gotoxy(19,19);write('               -Son 100 etapas             ');
      gotoxy(19,21);write('Ademas, esta la opcion de la cantidad de m-');
      gotoxy(18,24);write(#27#26,' Avanzar de hoja','   ESC para volver al menu');
      repeat
        gotoxy(1,22);h:=ReadKey;
        case h of
          #27:
          begin
            r:='C';
            no:='Y';
          end;
          #75:
          begin
            if x=1 then
            begin
              x:=x;
              r:='C';
            end;
            if x>1 then
            begin
              x:=x-1;
              r:='C'
            end;
          end;
          #77:
          begin
            if x>0 then
            begin
              x:=x+1;
              r:='C';
            end;
            if x=3 then
            x:=x;
            r:='C';
          end;
        end;
      until(r='C');
    end;
    if x=3 then
    begin
      clrscr;
      recuadrogrande;
      gotoxy(19,4);textcolor(blue);write('I');textcolor(white);write('nstrucciones','                         pag.',x);
      gotoxy(19,6);write('ovimientos posibles que tu puedes hacer, es');
      gotoxy(19,7);write('to tambien es predeterminado para cada una ');
      gotoxy(19,8);write('de las dificultades:                       ');
      gotoxy(19,10);write(' * Modo Facil: Movimientos ilimitados      ');
      gotoxy(19,11);write(' * Modo Medio: 350 movimientos            ');
      gotoxy(19,12);write(' * Modo Dificil: 200 movimientos           ');
      gotoxy(19,13);write(' * Modo Inhumano: 120 movimientos          ');
      gotoxy(19,14);textcolor(blue);write
      ('Nueva Opcion:');textcolor(white);
      write(' tras haber ganado el juego  ');
      gotoxy(19,15);write('debes ingresar tu nombre para asi poder en-');
      gotoxy(19,16);write('trar en el "Hall of Fame" de los jugadores ');
      gotoxy(19,17);write('Gracias por jugar, ahora que sabes todo lo ');
      gotoxy(19,18);write('correspondiente puedes jugar con tranquili-');
      gotoxy(19,19);write('dad, recuerda, cualquier error esta nuestro');
      gotoxy(19,20);write('servicio tecnico: pablopizarro9@gmail.com  ');
      gotoxy(18,24);write(#27#26,' Avanzar de hoja','   ESC para volver al menu');
      repeat
        gotoxy(1,22);h:=ReadKey;
        case h of
          #27:
          begin
            r:='C';
            no:='Y';
          end;
          #75:
          begin
            if x=1 then
            begin
              x:=x;
              r:='C';
            end;
            if x>1 then
            begin
              x:=x-1;
              r:='C'
            end;
          end;
          #77:
          begin
            if x<3 then
            begin
              x:=x+1;
              r:='C';
            end;
            if x=3 then
            x:=x;
            r:='C';
          end;
        end;
      until(r='C');
    end;
    clrscr;
  until(no='Y');
  clrscr;
  efectocerrar;
end;

//ACERCA DE MENU
procedure acercademenu;
var z:char;
begin
  clrscr;
  efectoabrir;
  recuadrogrande;
  textcolor(white);
  gotoxy(19,4);textcolor(blue);write('A');textcolor(white);write('cerca de');
  gotoxy(19,6);write('Este juego fue hecho por Pablo Pizarro el a');
  gotoxy(19,7);write('no 2010, primero empezo como una vaga idea ');
  gotoxy(19,8);write('Air Kill no es mas que un juego de aviones,');
  gotoxy(19,9);write('sin buscar el lucro o cualquier cosa parec-');
  gotoxy(19,10);write('ida.                                       ');
  gotoxy(19,11);write('Fue construido con pascal en el programa De');
  gotoxy(19,12);write('v-Pascal 1.9.2, actualizaciones a diario   ');
  gotoxy(19,13);write('Si te ha gustado el juego no olvides escri-');
  gotoxy(19,14);write('birme a');textcolor(red);write(' pablo@ppizarror.com');textcolor(white);
  gotoxy(19,15);write('Agradezco a www.programadoresphp.com y a m-');
  gotoxy(19,16);write('is profesores de mi escuela, gracias tambi-');
  gotoxy(19,17);write('en a mis amigos y familia');
  gotoxy(19,18);write('                             Santiago,Chile');
  gotoxy(19,21);write('Presione ESC para volver al menu principal ');
  repeat
    gotoxy(1,22);z:=ReadKey;
  until(z=#27);
  clrscr;
  efectocerrar;
end;

//MAINLOOP
begin
  dibujo;
  titulosini;
  s:='T';
  repeat
    menunodo;
    gotoxy(1,22);n:=ReadKey;
    if n='s' then
    begin
      n:='S';
    end;
    if n='c' then
    begin
      n:='C';
    end;
    if n='i' then
    begin
      n:='I';
    end;
    if n='a' then
    begin
      n:='A';
    end;
    case n of
      'S':
      begin
        efectocerrarprograma;
        s:='F';
      end;
      'C':
      begin
        juego;
      end;
      'I':
      begin
        instruccionesmenu;
      end;
      'A':
      begin
        acercademenu;
      end;
    end;
  until(s='F');
end.
