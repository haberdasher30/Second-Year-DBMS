#List all parts not supplied by a person living in Vienna.
SELECT PART.PNAME
FROM PART
LEFT JOIN SELLS ON PART.PNO = SELLS.PNO
LEFT JOIN SUPPLIER ON SELLS.SNO = SUPPLIER.SNO AND SUPPLIER.CITY = 'Vienna'
WHERE SUPPLIER.SNO IS NULL
AND PART.PNAME NOT IN ('Screw', 'Bolt');


