create table PharmacyDrug(
PharmacyId varchar (50),
DrugBrand    varchar(50),
DrugName	 varchar(50),
DrugCount  varchar(50),
Available	 varchar(50),
primary key (DrugBrand)
);

select * from PharmacyDrug

insert into PharmacyDrug values ('123','Altace','warfarin','120','Available');
insert into PharmacyDrug values ('123','lorazepam','Ativan','150','Available');
insert into PharmacyDrug values ('123','Diabeta','glyburide','200','Not available');
insert into PharmacyDrug values ('123','Flonase','fluticasone','50','Not available');
insert into PharmacyDrug values ('123','albuterol','Ventolin','20','Available');
insert into PharmacyDrug values ('123','Zoloft','sertraline','90','Available');
insert into PharmacyDrug values ('123','Glucotrol','glipizide','60','Available');
