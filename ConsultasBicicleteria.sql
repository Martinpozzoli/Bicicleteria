USE FinalBicicleteria_db;

SELECT b.cantVentas, v.nroDeSerie 
FROM Bicicleteria b, Bicicleta v
WHERE b.idBicicleteria = 1 AND v.Bicicleteria_idBicicleteria = 1
ORDER BY b.cantVentas DESC;
