create table Registration (
	Id INT primary key identity(1,1) not null,
	FirstName VARCHAR(100) not null,
	LastName VARCHAR(100) not null,
	FullName VARCHAR(200) not null,
	Email VARCHAR(50) null,
	Gender VARCHAR(50) null,
	IsActive bit,
	IsDeleted bit,
	MaritalStatus VARCHAR(8) null,
	Phone VARCHAR(10) not null,
	Address VARCHAR(50) not null,
	Height INT not null,
	Weight INT not null,
	DOB DATE not null,
	ImageID_FK INT not null,
	CreatedOn DATE null,
	ModifiedOn DATE null,
	CreatedById INT null,
	ModifiedById INT null
);