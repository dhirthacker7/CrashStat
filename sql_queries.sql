
create database final_project

use final_project

select count(*) from stg_austin

select count(*) from stg_chicago

select count(*) from stg_new_york

select * from stg_austin
where crash_date LIKE '%03/02/2024%'



select count(*) from stg_new_york

select * from ny_part1 

select * from ny_part2 

select count(*) from nyc_part3

select count(*) from austin_part1
where contrib_factr_p1_id = 0 and contrib_factr_p2_id != 0

select top 10 * from austin_part2
where 


select * from austin_part3

where crash_id = 13797332

select distinct(mergedContrifactor) from austin_part3

select * from chicago_part1

select * from chicago_part2

select * from chicago_part3

select * from chicago_part4

select count(*) from ny_part4



select distinct(CONTRIBUTING_FACTOR_COMBINED) from nyc_part3

select count(*) from nyc_part3

select distinct(contributing_factor_combined) from nyc_part3


select count(*) from ny_part1


select * from dim_Date


SELECT count(*) FROM DIM_LOCATION


create database final_dims_facts

select * from austin_part4

use final_project

select count(*) from dim_Location

SELECT COUNT(*) AS distinct_count
FROM (
    SELECT DISTINCT LATITUDE, LONGITUDE, on_STREET_NAME, CITY
    FROM ny_part4
) AS subquery;


select * from ny_part2


SELECT COUNT(*) 
FROM dim_Location 
WHERE City = 'Chicago';


select distinct on_street_name from ny_part4

select distinct street_name from austin_part4

select distinct street_name from chicago_part4

select * from ny_part4

use final_dims_facts

select * from dim_Time

select * from dim_Date

select * from dim_Source

select * from dim_Location

select * from dim_WeatherConditions


BACKUP LOG final_project WITH TRUNCATE_ONLY;

/*USE [master];
GO
ALTER DATABASE [YourDatabaseName]
SET RECOVERY SIMPLE;
GO*/


use final_project;
GO
CHECKPOINT;
CHECKPOINT; -- run twice to ensure file wrap-around
GO
DBCC SHRINKFILE(N'final_project_log', 1); -- unit is MB
GO



USE final_project;
GO
DBCC SHRINKFILE(final_project_log, 1); -- This attempts to shrink the log file to 1 MB.
GO



USE final_project
GO
SELECT name, physical_name, type_desc, size, growth
FROM sys.database_files
WHERE type_desc = 'LOG';


USE final_project;
GO
EXEC sp_helpfile;






select count(*) from dim_Location
where City = 'New York'


select count(*) from dim_VehicleType



SELECT COUNT(*) AS distinct_count
FROM (
    SELECT DISTINCT LATITUDE, LONGITUDE, on_STREET_NAME, CITY
    FROM ny_part4
) AS subquery;



select count(*) from dim_Location 
where City = 'New York'

select * from ny_part4 where ON_STREET_NAME = ''




select * from ny_part1



select count(*) from stg_austin

select count(*) from stg_chicago

select count(*) from stg_new_york

SELECT COUNT(*) AS distinct_count
FROM (
    SELECT DISTINCT LATITUDE, LONGITUDE, STREET_NAME, CITY
    FROM 
) AS subquery;

select * from fct_Accident where Location_SK=0


select * from fct_Accident
where crash_id = 37430

select * from ny_part3 where COLLISION_ID=4637182

select * from dim_Location where street_name = 'Meridian road'

select * from ny_part3




TRUNCATE LOG final_project;


ALTER DATABASE final_project SET RECOVERY SIMPLE;


select * from ny_part3

select * from austin_part4

select * from chicago_part4

drop table fct_Accident


select distinct(vehicle_type_code_combined) from ny_part3

select distinct(vehicle_type_code) from austin_part4

select distinct(vehicle_type_code_combined) from chicago_part4


select * from austin_part4

select * from ny_part3

/* script for scd2 implementation */

CREATE TABLE dim_ContributingFactor (
  ContributingFactorSK int IDENTITY(1,1) NOT NULL , -- Auto-increment in MSSQL
  Cont_DK int NOT NULL ,
  Contributing_factor_code int NULL,
  Cont_Description varchar(400) NULL,
  City varchar(40) NULL,
  scd_start datetime NOT NULL,
  scd_end datetime NULL,
  scd_version int NOT NULL,
  scd_active bit NOT NULL, -- bit is commonly used for boolean values in MSSQL
  DI_CreateDate date NOT NULL, -- GETDATE() for current date in MSSQL
  DI_WorkflowFileName varchar(80) NULL,
  ProcessID varchar(20) NULL,
)

drop table dim_ContributingFactor


select * from ny_part3 where contributing_factor_code='NA'

select * from stg_new_york where COLLISION_ID=4512922

select * from ny_part3 where COLLISION_ID=4512922

select * from chicago_part4



select * from dim_ContributingFactor


select * from Contributing_factor_bridge_table


select * from fct_Accident



select count(*) from ny_part3
select count(*) from austin_part4
select count(*) from chicago_part4


select * from Vehicle_Type_bridge_table

select * from dim_ContributingFactor

select count(*) from fct_Accident

select count(*) from Contributing_factor_bridge_table

select count(*) from Vehicle_Type_bridge_table

select * from dim_Location where City is null


select city, count(*) from dim_ContributingFactor
group by city

select city, count(*) from fct_Accident 
group by (city)

Vehicle_Type_bridge_table

select f.city, count(distinct f.accident_SK) from Vehicle_Type_bridge_table v
join fct_Accident f
on v.accident_SK = f.accident_SK
group by (f.city)

