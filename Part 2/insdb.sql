INSERT INTO Video (videoCode, videoLength) VALUES
(1,120),
(2,90),
(3,180),
(4,60),
(5,150);

INSERT INTO Model (modelNo, width, height, weight, depth, screenSize) VALUES
  ('M001', 10.1, 8.2, 0.5, 0.7, 11.5),
  ('M002', 12.5, 9.8, 0.6, 0.8, 14.0),
  ('M003', 9.3, 7.6, 0.4, 0.5, 10.0),
  ('M004', 11.2, 8.9, 0.7, 0.9, 13.0),
  ('M005', 10.9, 8.5, 0.6, 0.7, 12.0);

INSERT INTO Site (siteCode, type, address, phone) VALUES
  (1, 'Outdoor', '123 Main St', '555-1234'),
  (2, 'Indoor', '456 Elm St', '555-5678'),
  (3, 'Outdoor', '789 Maple St', '555-9012'),
  (4, 'Indoor', '345 Oak St', '555-3456'),
  (5, 'Outdoor', '678 Pine St', '555-7890');

INSERT INTO DigitalDisplay (serialNo, schedulerSystem, modelNo) VALUES
  ('D001', 'System A', 'M001'),
  ('D002', 'System B', 'M002'),
  ('D003', 'System A', 'M003'),
  ('D004', 'System B', 'M004'),
  ('D005', 'System A', 'M005');

INSERT INTO Client (clientId, name, phone, address) VALUES
  (1, 'John Doe', '555-1234', '123 Main St'),
  (2, 'Jane Smith', '555-5678', '456 Elm St'),
  (3, 'Bob Johnson', '555-9012', '789 Maple St'),
  (4, 'Sue Thompson', '555-3456', '345 Oak St'),
  (5, 'Tom Wilson', '555-7890', '678 Pine St');

INSERT INTO TechnicalSupport (empId, name, gender) VALUES
  (1, 'Bill Johnson', 'M'),
  (2, 'Mary Smith', 'F'),
  (3, 'John Doe', 'M'),
  (4, 'Jane Smith', 'F'),
  (5, 'Bob Johnson', 'M');

INSERT INTO Administrator (empId, name, gender) VALUES
  (6, 'Tom Wilson', 'M'),
  (7, 'Sue Thompson', 'F'),
  (8, 'Bill Johnson', 'M'),
  (9, 'Mary Smith', 'F'),
  (10, 'John Doe', 'M');
  
INSERT INTO Salesman (empId, name, gender) VALUES
  (11, 'Jane Smith', 'F'),
  (12, 'Bob Johnson', 'M'),
  (13, 'Tom Wilson', 'M'),
  (14, 'Sue Thompson', 'F'),
  (15, 'Bill Johnson', 'M');

INSERT INTO AirtimePackage (packageId, class, startDate, lastDate, frequency, videoCode) VALUES
  (1, 'Gold', '2022-01-01', '2022-12-31', 5, 1),
  (2, 'Silver', '2022-02-01', '2022-11-30', 3, 2),
  (3, 'Bronze', '2022-03-01', '2022-10-31', 2, 3),
  (4, 'Gold', '2022-04-01', '2022-09-30', 4, 4),
  (5, 'Silver', '2022-05-01', '2022-08-31', 6, 5);

INSERT INTO AdmWorkHours (empId, day, hours) VALUES
  (6, '2022-01-01', 8),
  (7, '2022-01-01', 7.5),
  (8, '2022-01-01', 8.5),
  (9, '2022-01-01', 8),
  (10, '2022-01-01', 8.5);

INSERT INTO Broadcasts (videoCode, siteCode) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

INSERT INTO Administers (empId, siteCode) VALUES
  (6, 1),
  (7, 2),
  (8, 3),
  (9, 4),
  (10, 5);

INSERT INTO Specializes (empId, modelNo) VALUES
  (1, 'M001'),
  (2, 'M002'),
  (3, 'M003'),
  (4, 'M004'),
  (5, 'M005');

INSERT INTO Purchases (clientId, empId, packageId, commissionRate) VALUES
  (1, 11, 1, 0.05),
  (2, 12, 2, 0.04),
  (3, 13, 3, 0.03),
  (4, 14, 4, 0.02),
  (5, 15, 5, 0.01);

INSERT INTO Locates (serialNo, siteCode) VALUES
  ('D001', 1),
  ('D002', 2),
  ('D003', 3),
  ('D004', 4),
  ('D005', 5);
  
