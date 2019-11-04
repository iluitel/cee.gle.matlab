%Basic Split Operation

str01 = 'Hello,World!';
myCols01 = split(str01, ',');

col01str = myCols01{1};
col02str = myCols01{2};

%Split Operation and Testing for Numerical Data

str02 = sprintf('A,34,T,82\n');
cleanRow = strip(str02, newline);
myCols02 = split(cleanRow, ',');

col01val = myCols02{1};
col02val = myCols02{2};

[~, isNumber01] = str2num(col01val);
[~, isNumber02] = str2num(col02val);

if isNumber01
    col01val = str2double(col01val);
end

if isNumber02
    col02val = str2double(col02val);
end