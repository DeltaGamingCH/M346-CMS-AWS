# M346_Project

## Aufgabenanforderungen
Die Aufgabenanforderugen können [hier](https://github.com/DeltaGamingCH/M346-CMS-AWS/blob/main/Requirements-M346-CMS.pdf) gefunden werden. 

## Dokumentation

## Reflexion
Das Lösen der Aufgabe empfanden wir als relativ simpel, jedoch stießen wir auf große Schwierigkeiten bei Schritt 2.

1. Zunächst recherchierten wir, welche Pakete wir für Apache und Joomla benötigen. Anschließend installierten wir diese sowie das Joomla.zip in `/var/www/html`. Beim direkten Entpacken des ZIP-Archivs stießen wir auf einen Fehler, da die Berechtigungen fehlten. Vor dem Entpacken mussten wir daher die Berechtigungen in `var/www/html` anpassen. Das Entpacken verlief anschließend reibungslos.

2. Unser größtes Problem bestand darin, dass wir nach der Installation die Apache-Standardseite sahen, anstatt auf unsere Joomla-Seite zugreifen zu können. Nach zahlreichen Versuchen kam mir die Idee, die `index.html` Datei zu löschen, was schließlich zur gewünschten Lösung führte. Dies erfolgte mittels `sudo rm /var/www/html/index.html`.

3. Das Skript, welches beim Initialisieren der EC2-Instanz in der User-Data übergeben werden soll, funktioniert bislang noch nicht wie erwartet. Es bedarf weiterer Anpassungen, um die gewünschte Funktionalität zu erreichen.
