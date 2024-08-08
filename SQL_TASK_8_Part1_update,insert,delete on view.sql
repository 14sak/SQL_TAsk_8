--Task 8: Find if we can do insert, update, alter , delete on View		

select * from patient
select * from hospital


--Here we Created VIEW
create view Hospital_Details as
select p.hospital,h.hospital_type,h.hospital_rating,p.insurance_provider from hospital as h
inner join patient as p
on p.patient_id=h.patient_id
where hospital_rating between 3 and 5 and insurance_provider='Blue Cross'
order by hospital_rating desc

--Insert On View
select * from Hospital_Details
insert into Hospital_Details(hospital,hospital_type,hospital_rating,insurance_provider)
values('Orange City Hospital','Private',4,'LIC')

--Update On View
select * from Hospital_Details
update Hospital_Details
set insurance_provider = 'LIC'
where insurance_provider= 'Blue Cross'

--Delete on View 
select * from Hospital_Details
delete from Hospital_Details where insurance_provider= 'Blue Cross'



--The following error comes of performing Insert,Update and Delete on VIEW


/*ERROR:  Views that do not select from a single table or view are not automatically updatable.cannot update view "hospital_details" 

ERROR:  cannot update view "hospital_details"
SQL state: 55000
Detail: Views that do not select from a single table or view are not automatically updatable.
Hint: To enable updating the view, provide an INSTEAD OF UPDATE trigger or an unconditional ON UPDATE DO INSTEAD rule.*/



