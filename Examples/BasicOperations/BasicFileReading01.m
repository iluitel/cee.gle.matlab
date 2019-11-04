clear;
clc;

fPath = 'SampleFile.txt';
fConn = fopen(fPath, 'r');

firstLine = fgetl(fConn);

while true
   
    if feof(fConn); break; end
    
    cLine = fgetl(fConn);
    fprintf(cLine);
    
end