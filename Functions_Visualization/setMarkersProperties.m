function setMarkersProperties(markers, style, faceColor, edgeColor, edgeWidth)

    markers.Marker = style;
    markers.MarkerFaceColor = faceColor;
    markers.CData = edgeColor;
    markers.LineWidth = edgeWidth;

end