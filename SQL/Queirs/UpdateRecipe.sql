--Lägg till instruktioner för recept
--(Dessa queries är inte körda vid inlämmning)

--Plockar fram Products tabellen för att se receptens Id
SELECT * FROM products;

UPDATE Recipes SET Instructions = 
'Smält smör, blanda med mjölk till fingervarmt. 
Lös upp jäst, tillsätt socker, salt och kardemumma. 
Arbeta in mjöl till smidig deg. Låt jäsa 30 min. 
Kavla, bred fyllning av smör, socker och kanel, 
rulla ihop och skär bullar. Jäs 30 min till, 
pensla med ägg, grädda 225 °C i 8–10 min.'
 WHERE Id = 1
;

UPDATE Recipes SET Instructions = 
'Lös upp jäst i ljummet vatten. 
Tillsätt salt, olja och mjöl. 
Arbeta till smidig deg, låt jäsa 40 min. 
Forma frallor, jäs 30 min till. 
Pensla med vatten, strö över frön om önskat. 
Grädda 225 °C i 10–12 min tills gyllene.'
 WHERE Id = 2
;

UPDATE Recipes SET Instructions = 
'Smält smör, rör ner kakao. 
Vispa ägg och socker luftigt. 
Blanda i mjöl, bakpulver, 
vaniljsocker och smörblandning. 
Fördela i formar, fyll två tredjedelar. 
Grädda 200 °C i 10–12 min. 
Låt svalna på galler.'
 WHERE Id = 3
;
UPDATE Recipes SET Instructions = 
'Baka tårtbotten, dela i tre lager. 
Fyll med vaniljkräm och vispad grädde. 
Täck med marsipanlock. Pudra med florsocker. 
Förvara kallt tills servering.'
 WHERE Id = 4
;

