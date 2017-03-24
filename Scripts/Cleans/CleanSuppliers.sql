UPDATE Suppliers
SET Region = 'EU'
WHERE Country = 'Germany' or
      Country = 'Sweden' or
  	  Country = 'Spain' or
  	  Country = 'UK' OR
  	  Country = 'France' or
  	  Country = 'Switzerland' or
  	  Country = 'Italy' or
  	  Country = 'Portugal' or
  	  Country = 'Ireland' or
  	  Country = 'Belgium' or
  	  Country = 'Norway' or
  	  Country = 'Denmark' or
  	  Country = 'Finland' or
  	  Country = 'Poland' or
  	  Country = 'Netherlands' or
  	  Country = 'Austria';

UPDATE Suppliers
SET Region = 'ASIA'
WHERE Country = 'Japan'or
      Country = 'Singapore';

UPDATE Suppliers
SET Region = 'AME'
WHERE Country = 'Argentina' or
	  Country = 'Brazil' or
      Country = 'Mexico';

UPDATE Suppliers
SET Fax = '0000-0000'
WHERE Fax is NULL;

SELECT *
FROM Suppliers;
