program tp_magique;
uses crt;

CONST
        MAX=7;
Type
        CarreMagique = Array [1..MAX,1..MAX] of integer;

Procedure poseun (var t1:carremagique; var pi:integer; var pj:integer);
var
        i,j:integer;
begin
        for i:=1 to max do
                begin
                        for j:=1 to max do
                                begin
                                        T1[i,j]:=0;
                                        pi:=(max DIV 2);
                                        pj:=(max DIV 2+1);
                                        T1[pi,pj]:=1;
                                end;
                end;
end;

Procedure espace (var T1:carremagique; var pi:integer; pj:integer; compteur:integer);
var
        i,j:integer;
begin
        for i:=1 to MAX do
                begin
                        for j:=1 to MAX do
                                begin
                                        T1[i,j]:=0;
                                end;
                        writeln;
                end;
        compteur:=1;
        while (compteur <= MAX*MAX) do
                begin
                        pi:=pi-1;
                        pj:=pj+1;
                                if (pi<1) then
                                        begin
                                                pi:=MAX;
                                        end;
                                if (pj>MAX) then
                                        begin
                                                pj:=1;
                                        end;
                        while (T1[pi,pj] <> 0) do
                                begin
                                        pi:=pi-1;
                                        pj:=pj-1;
                                        if (pi < 1) then
                                                begin
                                                        pi:=MAX;
                                                end;
                                        if (pj <1) then
                                                begin
                                                        pj:=MAX;
                                                end;
                                end;
                        T1[pi,pj]:=compteur;
                        compteur:=compteur+1;
                end;
end;

procedure afficher (var T1:carremagique);
var
        i,j:integer;
begin
        for i:=1 to MAX do
        begin
                for j:=1 to MAX do
                begin
                        write(T1[i,j]);
                        write (' ');
                end;
                writeln;
        end;
end;

VAR
        T2:array [1..MAX,1..MAX] of integer;
        i,j,pi,pj,compteur:integer;
begin
        clrscr;
        begin
                poseun (T2, pi, pj);
                espace (T2, pj, pi, compteur);
                afficher(T2);
        end;
readln;
END.
