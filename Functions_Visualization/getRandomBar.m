function [categories, values] = getRandomBar(noCategories, seedNo)

    rng(seedNo, 'twister');
    
    catNames = {'Apple', 'Banana', 'Clementine', 'Dewberries', 'Entawak', ...
        'Farkleberry', 'Grapefruit', 'Honeydew', 'Imbe', 'Jambolan', 'Kiwi', ...
        'Lime', 'Mango', 'Nectarine', 'Oranges', 'Peach', 'Quince', ...
        'Raspberries', 'Strawberries', 'Tangerine', 'Ugni', 'Voavanga', ...
        'Watermelon', 'Xigua', 'Yangmei', 'Zuchinni', 'Apricots', ...
        'Blueberries', 'Cherries', 'Dates', 'Eggfruit', 'Fig', 'Guava', ...
        'Hackberry', 'Jackfruit', 'Mulberry', 'Cocunut', 'Durian', 'Jujube', ...
        'Longan', 'Papaya', 'Passion Fruit', 'Pineapple', 'Pitanga', ...
        'Plantain', 'Pummelo', 'Rhubarb', 'Tamarind', 'Cranberries', ...
        'Carambola', 'Blackcurrant', 'Breadfruit', 'Acerola', 'Fejijoa'};
    
    randCatsIndx = randi([1 length(catNames)], 1, noCategories);
    
    categories = catNames(randCatsIndx);
    values = randi([5 30], 1, noCategories);

end