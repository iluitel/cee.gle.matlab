img01 = imread('SampleImage02.tif');

sub01 = img01(:,:,1);
sub02 = img01(:,:,2);
sub03 = img01(:,:,3);

redVector = sub01(:) == 255;
greenVector = sub02(:) == 255;
blueVector = sub03(:) == 255;

filter01 = (redVector + greenVector) * 100;

forCount = blueVector + filter01;

result = sum(forCount == 1);

