Program Kr2_zad2;
var words: array of string;
k,i,max,x: integer;
s: string;
begin 
  write('Введите необходимый текст: ');
  readln(s);
  setlength(words,(length(s) div 2)+1);
  for i:= 1 to length(s) do begin
    if s[i]<>' ' then words[k]:=words[k]+s[i]
    else k:= k + 1;
  end;
  for i:=0 to (length(words)-1) do begin
    if (words.CountOf(words[i]) > max) and (words[i]<>'') then begin
      max:=words.CountOf(words[i]);
      x:=i;
    end;
  end;
  write(words[x]);
end.