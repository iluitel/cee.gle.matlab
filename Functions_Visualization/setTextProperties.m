function setLabel(textObj, textValue, fSize, fWeight, tColor)
    
    textObj.String = textValue;
    textObj.FontSize = fSize;
    textObj.FontWeight = fWeight;
    
    if exist('tColor', 'var')
       textObj.Color = tColor; 
    end

end