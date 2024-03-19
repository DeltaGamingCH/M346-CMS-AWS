# M346_Project

## Aufgabenanforderungen
Die Aufgabenanforderugen können [hier](https://github.com/DeltaGamingCH/M346-CMS-AWS/blob/main/Requirements-M346-CMS.pdf) gefunden werden. 

# Reflexion
Das Lösen der Aufgabe empfanden wir als relativ simpel. Hatten aber grosse Schwierigkeiten bei Schritt 2.
1. Wir rechechierten, welche packets wir brauchen für Apache und Joomla. Anschliessend installierten wir diese sowie das Joomla.zip `/var/www/html`. 
Wir stiessen beim direkten Empacken des .zips auf einen Fehler, das Berechtigungen fehlten, und mussten uns vor dem Entpacken berechtigungen in `var/www/html` anpassen. Das Unzippen funktionierte anschliessend. 
2. Unser grösstes Problem war, dass wir nun die Apache Default Seite bekamen, nicht aber auf unsere Joomla Seite zugreifen konnte. 
Mit viel pobieren, kam mir die Idee die `index.html` Datei zu löschen, mit `sudo rm /var/www/html/index.html`. Dies führte schlussendlich zur gewünschten Lösung. 
3. Das Skript funktioniert stand jetzt noch nicht, welches beim Initialisieren der EC2-Instanz in User-Data übergeben werden soll. 
