#q1)List all items supplied by Smith.
SELECT PART.PNAME, PART.PRICE
FROM SUPPLIER
JOIN SELLS ON SUPPLIER.SNO = SELLS.SNO
JOIN PART ON SELLS.PNO = PART.PNO
WHERE SUPPLIER.SNAME = 'Smith';
