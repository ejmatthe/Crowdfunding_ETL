-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

-- drop tables if exist

drop table if exists Campaign;
drop table if exists Category;
drop table if exists Subcategory;
drop table if exists Contacts;

-- create campaign table and set our primary key
CREATE TABLE Campaign (
    cf_id int  NOT NULL ,
    contact_id int  NOT NULL ,
    company_name varchar(300)  NOT NULL ,
    description varchar(300)  NOT NULL ,
    goal int NOT NULL ,
    pledged int NOT NULL ,
    outcome varchar(300)  NOT NULL ,
    backers_count int  NOT NULL ,
    country varchar(300)  NOT NULL ,
    currency varchar(300)  NOT NULL ,
    launched_date date  NOT NULL ,
    end_date date  NOT NULL ,
    category_id varchar(300)  NOT NULL ,
    subcategory_id varchar(300)  NOT NULL ,
    PRIMARY KEY (cf_id)
);
select * from campaign

-- create Category table and set our primary key
CREATE TABLE Category (
    category_id varchar(150)  NOT NULL ,
    category varchar(150)  NOT NULL ,
    PRIMARY KEY (category_id)
);
select * from category

-- create Subcategory table and set our primary key
CREATE TABLE Subcategory (
    subcategory_id varchar(150)  NOT NULL ,
    subcategory varchar(150)  NOT NULL ,
    PRIMARY KEY (subcategory_id)
);

select * from subcategory

-- create Contacts table and set our primary key
CREATE TABLE Contacts (
    contact_id int  NOT NULL ,
    first_name varchar(150)  NOT NULL ,
    last_name varchar(150)  NOT NULL ,
    email varchar(150)  NOT NULL ,
    PRIMARY KEY (contact_id)
);
select * from contacts


ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES Contacts (contact_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id FOREIGN KEY(category_id)
REFERENCES Category (category_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES Subcategory (subcategory_id);

