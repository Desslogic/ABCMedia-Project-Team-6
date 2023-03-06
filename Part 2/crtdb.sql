CREATE TABLE "Video" (
	"videoCode"	INTEGER,
	"videoLength"	INTEGER,
	PRIMARY KEY("videoCode")
)

CREATE TABLE "Model" (
	"modelNO"	CHAR(10),
	"width"	NUMERIC(6, 2),
	"height"	NUMERIC(6, 2),
	"weight"	NUMERIC(6, 2),
	"depth"	NUMERIC(6, 2),
	"screenSize"	NUMERIC(6, 2),
	PRIMARY KEY("modelNO")
)

CREATE TABLE "Site" (
	"siteCode"	INTEGER,
	"type"	VARCHAR(16),
	"address"	VARCHAR(100),
	"phone"	VARCHAR(16),
	PRIMARY KEY("siteCode")
)

CREATE TABLE "DigitalDisplay" (
	"serialNo"	CHAR(10),
	"schedulerSystem"	CHAR(10),
	"modelNo"	CHAR(10),
	FOREIGN KEY("modelNo") REFERENCES "Model"("modelNO"),
	PRIMARY KEY("serialNo")
)

CREATE TABLE "Client" (
	"clientId"	INTEGER,
	"name"	VARCHAR(40),
	"phone"	VARCHAR(16),
	"address"	VARCHAR(100),
	PRIMARY KEY("clientId")
)

CREATE TABLE "TechnicalSupport" (
	"empId"	INTEGER,
	"name"	VARCHAR(40),
	"gender"	CHAR(1),
	PRIMARY KEY("empId")
)

CREATE TABLE "Administrator" (
	"empId"	INTEGER,
	"name"	VARCHAR(40),
	"gender"	CHAR(1),
	PRIMARY KEY("empId")
)

CREATE TABLE "Salesman" (
	"empId"	INTEGER,
	"name"	VARCHAR(40),
	"gender"	CHAR(1),
	PRIMARY KEY("empId")
)

CREATE TABLE "AirtimePackage" (
	"packageId"	INTEGER,
	"class"	VARCHAR(16),
	"startDate"	DATE,
	"lastDate"	DATE,
	"frequency"	INTEGER,
	"videoCode"	BLOB,
	PRIMARY KEY("packageId")
)

CREATE TABLE "AdmWorkHours" (
	"empId"	INTEGER,
	"day"	DATE,
	"hours"	NUMERIC(4,2),
	PRIMARY KEY("empId","day"),
	FOREIGN KEY("empId") REFERENCES "Administrator"("empId")
)

CREATE TABLE "Broadcasts" (
	"videoCode"	INTEGER,
	"siteCode"	INTEGER,
	FOREIGN KEY("siteCode") REFERENCES "Site"("siteCode"),
	FOREIGN KEY("videoCode") REFERENCES "Video"("videoCode"),
	PRIMARY KEY("videoCode","siteCode")
)
