UPDATE Customers
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
  	  Country = 'Austria';

UPDATE Customers
SET Region = 'AME'
WHERE Country = 'Argentina' or
      Country = 'Mexico';

UPDATE Customers
SET Fax = '0000-0000'
WHERE Fax is NULL;
