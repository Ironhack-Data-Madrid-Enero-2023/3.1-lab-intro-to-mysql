SET SQL_SAFE_UPDATES = 0;

UPDATE salespersons
SET store = 'Miami'
where `staff ID` = 5
;
UPDATE customers
SET 
email=  'ppicasso@gmail.com',
email = 'lamarr_hd@hollywood.com',
email = 'hello@nasa.gov'
where 
name = 'Pablo Picasso',
name = 'Hedy Lamarr',
name = 'Katherine Johnson'
;

;