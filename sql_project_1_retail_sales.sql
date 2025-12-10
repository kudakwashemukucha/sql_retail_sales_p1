--SQL Retail Sales Analysis - P1

CREATE DATABASE sql_project_1;

--CREATE TABLE
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales(
		transaction_id INT PRIMARY KEY,
		sale_date DATE,
		sale_time TIME,
		customer_id INT,
		gender VARCHAR(15),
		age INT,
		category VARCHAR(25),
		quantity INT,
		price_per_unit FLOAT,
		cogs FLOAT,
		total_sale FLOAT
);

--DELETE EXISTING RECORDS
DELETE FROM retail_sales;

--INSERT RECORDS
INSERT INTO retail_sales (transaction_id, sale_date, sale_time, customer_id, gender, age, category, quantity, price_per_unit, cogs, total_sale)
VALUES
(180, '2022-11-05', '10:47:00', 117, 'Male', 41, 'Clothing', 3, 300, 129, 900),
(522, '2022-07-09', '11:00:00', 52, 'Male', 46, 'Beauty', 3, 500, 145, 1500),
(559, '2022-12-12', '10:48:00', 5, 'Female', 40, 'Clothing', 4, 300, NULL, 1200),
(1180, '2022-01-06', '08:53:00', 85, 'Male', 41, 'Clothing', 3, 300, 129, 900),
(1522, '2022-11-14', '08:35:00', 48, 'Male', 46, 'Beauty', NULL, 500, 235, 1500),
(1559, '2022-08-20', '07:40:00', 49, 'Female', 40, 'Clothing', 4, 300, 144, NULL),
(163, '2022-10-31', '09:38:00', 144, 'Female', 64, 'Clothing', 3, 50, 23, 150),
(303, '2022-04-22', '11:09:00', 54, 'Male', 19, 'Electronics', 3, 30, NULL, 90),
(421, '2022-04-08', '08:43:00', 66, 'Female', 37, 'Clothing', NULL, 500, 235, 1500),
(979, '2022-05-18', '10:18:00', 6, 'Female', 19, 'Beauty', 1, 25, 10.5, NULL),
(1163, '2022-05-04', '10:52:00', 120, 'Female', 64, 'Clothing', 3, 50, NULL, 150),
(1303, '2022-03-19', '08:59:00', 58, 'Male', 19, 'Electronics', 3, 30, 15, 90),
(1845, '2022-06-15', '14:22:00', 92, 'Female', 28, 'Beauty', 2, 350, 175, 700),
(2103, '2022-09-03', '16:30:00', 134, 'Male', 52, 'Electronics', NULL, 800, 560, 800),
(2456, '2022-02-28', '09:15:00', 78, 'Female', 35, 'Clothing', 5, 200, 120, NULL),
(2789, '2022-07-21', '11:45:00', 201, 'Male', 44, 'Beauty', 4, 150, NULL, 600),
(3012, '2022-10-08', '13:20:00', 167, 'Female', 58, 'Electronics', 2, 450, 315, 900),
(3245, '2022-01-17', '08:00:00', 89, 'Male', 31, 'Clothing', NULL, 400, 200, 1200),
(3567, '2022-05-29', '15:55:00', 143, 'Female', 22, 'Beauty', 6, 75, 45, NULL),
(3890, '2022-08-12', '10:30:00', 56, 'Male', 67, 'Electronics', 1, 1200, NULL, 1200),
(4123, '2022-11-22', '12:10:00', 198, 'Female', 49, 'Clothing', 2, 550, 330, 1100),
(4456, '2022-03-07', '14:40:00', 112, 'Male', 26, 'Beauty', NULL, 200, 120, 600),
(4789, '2022-06-30', '09:25:00', 175, 'Female', 55, 'Electronics', 4, 250, 175, NULL),
(5012, '2022-12-05', '16:15:00', 88, 'Male', 38, 'Clothing', 1, 700, NULL, 700),
(5345, '2022-04-14', '11:50:00', 221, 'Female', 29, 'Beauty', 5, 100, 60, 500),
(5678, '2022-09-27', '13:35:00', 156, 'Male', 42, 'Electronics', NULL, 600, 420, 1200),
(5901, '2022-02-19', '08:45:00', 93, 'Female', 61, 'Clothing', 4, 275, 165, NULL),
(6234, '2022-07-08', '15:20:00', 189, 'Male', 33, 'Beauty', 2, 425, NULL, 850),
(6567, '2022-10-16', '10:05:00', 127, 'Female', 47, 'Electronics', 3, 350, 245, 1050),
(6890, '2022-01-25', '12:50:00', 204, 'Male', 24, 'Clothing', NULL, 180, 108, 1080),
(7123, '2022-05-11', '14:30:00', 145, 'Female', 56, 'Beauty', 1, 900, NULL, 900),
(7456, '2022-08-29', '09:40:00', 168, 'Male', 39, 'Electronics', 5, 180, 126, NULL),
(7789, '2022-11-18', '16:00:00', 97, 'Female', 32, 'Clothing', 3, 320, 192, 960),
(8012, '2022-03-22', '11:25:00', 213, 'Male', 50, 'Beauty', NULL, 225, 135, 900),
(8345, '2022-06-09', '13:55:00', 182, 'Female', 45, 'Electronics', 2, 750, NULL, 1500),
(8678, '2022-09-14', '08:20:00', 129, 'Male', 27, 'Clothing', 2, 475, 285, 950),
(8901, '2022-12-01', '15:10:00', 196, 'Female', 63, 'Beauty', 3, 300, 180, NULL),
(9001, '2022-01-10', '09:30:00', 45, 'Male', 35, 'Clothing', 2, 250, 125, 500),
(9002, '2022-01-11', '10:15:00', 78, 'Female', 42, 'Beauty', NULL, 180, 90, 360),
(9003, '2022-01-12', '11:20:00', 123, 'Male', 28, 'Electronics', 1, 500, NULL, 500),
(9004, '2022-01-13', '14:45:00', 56, 'Female', 51, 'Clothing', 3, 200, 100, NULL),
(9005, '2022-01-14', '08:50:00', 189, 'Male', 39, 'Beauty', 4, 150, 75, 600),
(9006, '2022-01-15', '16:30:00', 234, 'Female', 33, 'Electronics', NULL, 800, 560, 1600),
(9007, '2022-01-16', '09:40:00', 67, 'Male', 44, 'Clothing', 2, 300, NULL, 600),
(9008, '2022-01-17', '13:25:00', 145, 'Female', 29, 'Beauty', 5, 120, 60, NULL),
(9009, '2022-01-18', '11:15:00', 198, 'Male', 55, 'Electronics', 1, 1200, 840, 1200),
(9010, '2022-01-19', '15:00:00', 89, 'Female', 37, 'Clothing', NULL, 400, 200, 800),
(9011, '2022-01-20', '10:30:00', 156, 'Male', 48, 'Beauty', 3, 200, NULL, 600),
(9012, '2022-01-21', '14:20:00', 223, 'Female', 26, 'Electronics', 2, 350, 245, NULL),
(9013, '2022-01-22', '09:10:00', 78, 'Male', 62, 'Clothing', 4, 175, 87.5, 700),
(9014, '2022-01-23', '12:45:00', 134, 'Female', 31, 'Beauty', NULL, 250, 125, 500),
(9015, '2022-01-24', '16:15:00', 201, 'Male', 45, 'Electronics', 3, 450, NULL, 1350),
(9016, '2022-01-25', '08:30:00', 92, 'Female', 52, 'Clothing', 1, 600, 300, NULL),
(9017, '2022-01-26', '11:50:00', 167, 'Male', 38, 'Beauty', 2, 300, 150, 600),
(9018, '2022-01-27', '15:30:00', 245, 'Female', 43, 'Electronics', NULL, 700, 490, 1400),
(9019, '2022-01-28', '10:00:00', 56, 'Male', 29, 'Clothing', 5, 180, NULL, 900),
(9020, '2022-01-29', '13:40:00', 178, 'Female', 57, 'Beauty', 3, 220, 110, NULL),
(9021, '2022-01-30', '09:20:00', 123, 'Male', 34, 'Electronics', 2, 550, 385, 1100),
(9022, '2022-01-31', '14:10:00', 89, 'Female', 41, 'Clothing', NULL, 350, 175, 700),
(9023, '2022-02-01', '11:30:00', 198, 'Male', 49, 'Beauty', 4, 175, NULL, 700),
(9024, '2022-02-02', '16:00:00', 234, 'Female', 36, 'Electronics', 1, 950, 665, NULL),
(9025, '2022-02-03', '08:45:00', 67, 'Male', 53, 'Clothing', 3, 280, 140, 840),
(9026, '2022-02-04', '12:20:00', 145, 'Female', 27, 'Beauty', NULL, 190, 95, 380),
(9027, '2022-02-05', '15:50:00', 201, 'Male', 46, 'Electronics', 2, 620, NULL, 1240),
(9028, '2022-02-06', '09:35:00', 178, 'Female', 54, 'Clothing', 4, 225, 112.5, NULL),
(9029, '2022-02-07', '13:15:00', 92, 'Male', 32, 'Beauty', 5, 140, 70, 700),
(9030, '2022-02-08', '10:50:00', 156, 'Female', 40, 'Electronics', NULL, 480, 336, 960),
(9031, '2022-02-09', '14:35:00', 223, 'Male', 58, 'Clothing', 2, 420, NULL, 840),
(9032, '2022-02-10', '11:05:00', 89, 'Female', 35, 'Beauty', 3, 260, 130, NULL),
(9033, '2022-02-11', '15:25:00', 134, 'Male', 47, 'Electronics', 1, 850, 595, 850),
(9034, '2022-02-12', '09:15:00', 198, 'Female', 30, 'Clothing', NULL, 310, 155, 620),
(9035, '2022-02-13', '12:55:00', 245, 'Male', 51, 'Beauty', 4, 185, NULL, 740),
(9036, '2022-02-14', '16:20:00', 67, 'Female', 44, 'Electronics', 3, 390, 273, NULL),
(9037, '2022-02-15', '08:40:00', 178, 'Male', 37, 'Clothing', 2, 340, 170, 680),
(9038, '2022-02-16', '11:25:00', 123, 'Female', 56, 'Beauty', NULL, 275, 137.5, 550),
(9039, '2022-02-17', '14:50:00', 201, 'Male', 33, 'Electronics', 1, 720, NULL, 720),
(9040, '2022-02-18', '10:10:00', 89, 'Female', 48, 'Clothing', 5, 195, 97.5, NULL),
(9041, '2022-02-19', '13:30:00', 156, 'Male', 42, 'Beauty', 3, 230, 115, 690),
(9042, '2022-02-20', '16:45:00', 234, 'Female', 29, 'Electronics', NULL, 580, 406, 1160),
(9043, '2022-02-21', '09:25:00', 92, 'Male', 61, 'Clothing', 4, 265, NULL, 1060),
(9044, '2022-02-22', '12:40:00', 167, 'Female', 38, 'Beauty', 2, 320, 160, NULL),
(9045, '2022-02-23', '15:15:00', 223, 'Male', 50, 'Electronics', 1, 910, 637, 910),
(9046, '2022-02-24', '08:55:00', 78, 'Female', 34, 'Clothing', NULL, 285, 142.5, 570),
(9047, '2022-02-25', '11:35:00', 145, 'Male', 45, 'Beauty', 5, 165, NULL, 825),
(9048, '2022-02-26', '14:05:00', 198, 'Female', 52, 'Electronics', 2, 470, 329, NULL),
(9049, '2022-02-27', '10:20:00', 134, 'Male', 28, 'Clothing', 3, 315, 157.5, 945),
(9050, '2022-02-28', '13:45:00', 201, 'Female', 59, 'Beauty', NULL, 245, 122.5, 490),
(9051, '2022-03-01', '16:10:00', 89, 'Male', 36, 'Electronics', 1, 680, NULL, 680),
(9052, '2022-03-02', '09:30:00', 156, 'Female', 43, 'Clothing', 4, 240, 120, NULL),
(9053, '2022-03-03', '12:15:00', 245, 'Male', 55, 'Beauty', 3, 210, 105, 630),
(9054, '2022-03-04', '15:40:00', 67, 'Female', 31, 'Electronics', NULL, 530, 371, 1060),
(9055, '2022-03-05', '08:50:00', 178, 'Male', 47, 'Clothing', 2, 365, NULL, 730),
(9056, '2022-03-06', '11:20:00', 123, 'Female', 39, 'Beauty', 5, 155, 77.5, NULL),
(9057, '2022-03-07', '14:55:00', 198, 'Male', 54, 'Electronics', 1, 780, 546, 780),
(9058, '2022-03-08', '10:05:00', 234, 'Female', 27, 'Clothing', NULL, 295, 147.5, 590),
(9059, '2022-03-09', '13:25:00', 92, 'Male', 62, 'Beauty', 4, 195, NULL, 780),
(9060, '2022-03-10', '16:35:00', 167, 'Female', 35, 'Electronics', 3, 410, 287, NULL),
(9061, '2022-03-11', '09:45:00', 223, 'Male', 49, 'Clothing', 2, 335, 167.5, 670),
(9062, '2022-03-12', '12:10:00', 78, 'Female', 32, 'Beauty', NULL, 280, 140, 560),
(9063, '2022-03-13', '15:30:00', 145, 'Male', 58, 'Electronics', 1, 890, NULL, 890),
(9064, '2022-03-14', '08:20:00', 201, 'Female', 41, 'Clothing', 5, 210, 105, NULL),
(9065, '2022-03-15', '11:45:00', 134, 'Male', 36, 'Beauty', 3, 240, 120, 720),
(9066, '2022-03-16', '14:25:00', 89, 'Female', 53, 'Electronics', NULL, 640, 448, 1280),
(9067, '2022-03-17', '10:35:00', 156, 'Male', 30, 'Clothing', 4, 270, NULL, 1080),
(9068, '2022-03-18', '13:00:00', 245, 'Female', 46, 'Beauty', 2, 305, 152.5, NULL),
(9069, '2022-03-19', '16:25:00', 67, 'Male', 60, 'Electronics', 1, 750, 525, 750),
(9070, '2022-03-20', '09:10:00', 178, 'Female', 33, 'Clothing', NULL, 320, 160, 640),
(9071, '2022-03-21', '12:35:00', 123, 'Male', 44, 'Beauty', 5, 170, NULL, 850),
(9072, '2022-03-22', '15:05:00', 198, 'Female', 51, 'Electronics', 2, 510, 357, NULL),
(9073, '2022-03-23', '08:40:00', 234, 'Male', 28, 'Clothing', 3, 345, 172.5, 1035),
(9074, '2022-03-24', '11:15:00', 92, 'Female', 56, 'Beauty', NULL, 265, 132.5, 530),
(9075, '2022-03-25', '14:45:00', 167, 'Male', 39, 'Electronics', 1, 820, NULL, 820),
(9076, '2022-03-26', '10:25:00', 223, 'Female', 48, 'Clothing', 4, 255, 127.5, NULL),
(9077, '2022-03-27', '13:20:00', 78, 'Male', 35, 'Beauty', 3, 225, 112.5, 675),
(9078, '2022-03-28', '16:50:00', 145, 'Female', 63, 'Electronics', NULL, 590, 413, 1180),
(9079, '2022-03-29', '09:00:00', 201, 'Male', 42, 'Clothing', 2, 380, NULL, 760),
(9080, '2022-03-30', '12:25:00', 134, 'Female', 29, 'Beauty', 5, 145, 72.5, NULL),
(9081, '2022-03-31', '15:35:00', 89, 'Male', 57, 'Electronics', 1, 870, 609, 870),
(9082, '2022-04-01', '08:15:00', 156, 'Female', 34, 'Clothing', NULL, 305, 152.5, 610),
(9083, '2022-04-02', '11:40:00', 245, 'Male', 50, 'Beauty', 4, 215, NULL, 860),
(9084, '2022-04-03', '14:10:00', 67, 'Female', 37, 'Electronics', 3, 440, 308, NULL),
(9085, '2022-04-04', '10:30:00', 178, 'Male', 52, 'Clothing', 2, 360, 180, 720),
(9086, '2022-04-05', '13:55:00', 123, 'Female', 26, 'Beauty', NULL, 290, 145, 580),
(9087, '2022-04-06', '16:15:00', 198, 'Male', 61, 'Electronics', 1, 930, NULL, 930),
(9088, '2022-04-07', '09:20:00', 234, 'Female', 38, 'Clothing', 5, 230, 115, NULL),
(9089, '2022-04-08', '12:45:00', 92, 'Male', 45, 'Beauty', 3, 255, 127.5, 765),
(9090, '2022-04-09', '15:10:00', 167, 'Female', 54, 'Electronics', NULL, 670, 469, 1340),
(9091, '2022-04-10', '08:35:00', 223, 'Male', 31, 'Clothing', 4, 285, NULL, 1140),
(9092, '2022-04-11', '11:05:00', 78, 'Female', 47, 'Beauty', 2, 330, 165, NULL),
(9093, '2022-04-12', '14:30:00', 145, 'Male', 59, 'Electronics', 1, 810, 567, 810),
(9094, '2022-04-13', '10:45:00', 201, 'Female', 33, 'Clothing', NULL, 315, 157.5, 630),
(9095, '2022-04-14', '13:15:00', 134, 'Male', 46, 'Beauty', 5, 185, NULL, 925),
(9096, '2022-04-15', '16:40:00', 89, 'Female', 52, 'Electronics', 2, 550, 385, NULL),
(9097, '2022-04-16', '09:50:00', 156, 'Male', 29, 'Clothing', 3, 325, 162.5, 975),
(9098, '2022-04-17', '12:20:00', 245, 'Female', 58, 'Beauty', NULL, 270, 135, 540),
(9099, '2022-04-18', '15:45:00', 67, 'Male', 40, 'Electronics', 1, 710, NULL, 710),
(9100, '2022-04-19', '08:25:00', 178, 'Female', 36, 'Clothing', 4, 245, 122.5, NULL),
(9101, '2022-04-20', '11:50:00', 123, 'Male', 53, 'Beauty', 3, 235, 117.5, 705),
(9102, '2022-04-21', '14:20:00', 198, 'Female', 27, 'Electronics', NULL, 620, 434, 1240),
(9103, '2022-04-22', '10:40:00', 234, 'Male', 62, 'Clothing', 2, 370, NULL, 740),
(9104, '2022-04-23', '13:05:00', 92, 'Female', 39, 'Beauty', 5, 160, 80, NULL),
(9105, '2022-04-24', '16:30:00', 167, 'Male', 48, 'Electronics', 1, 840, 588, 840),
(9106, '2022-04-25', '09:15:00', 223, 'Female', 32, 'Clothing', NULL, 295, 147.5, 590),
(9107, '2022-04-26', '12:40:00', 78, 'Male', 55, 'Beauty', 4, 205, NULL, 820),
(9108, '2022-04-27', '15:05:00', 145, 'Female', 41, 'Electronics', 3, 460, 322, NULL),
(9109, '2022-04-28', '08:50:00', 201, 'Male', 34, 'Clothing', 2, 350, 175, 700),
(9110, '2022-04-29', '11:30:00', 134, 'Female', 60, 'Beauty', NULL, 285, 142.5, 570),
(9111, '2022-04-30', '14:55:00', 89, 'Male', 37, 'Electronics', 1, 760, NULL, 760),
(9112, '2022-05-01', '10:20:00', 156, 'Female', 49, 'Clothing', 5, 220, 110, NULL),
(9113, '2022-05-02', '13:35:00', 245, 'Male', 26, 'Beauty', 3, 250, 125, 750),
(9114, '2022-05-03', '16:05:00', 67, 'Female', 64, 'Electronics', NULL, 700, 490, 1400),
(9115, '2022-05-04', '09:25:00', 178, 'Male', 43, 'Clothing', 4, 275, NULL, 1100),
(9116, '2022-05-05', '12:00:00', 123, 'Female', 30, 'Beauty', 2, 310, 155, NULL),
(9117, '2022-05-06', '15:20:00', 198, 'Male', 56, 'Electronics', 1, 880, 616, 880),
(9118, '2022-05-07', '08:45:00', 234, 'Female', 38, 'Clothing', NULL, 330, 165, 660),
(9119, '2022-05-08', '11:10:00', 92, 'Male', 51, 'Beauty', 5, 175, NULL, 875),
(9120, '2022-05-09', '14:40:00', 167, 'Female', 35, 'Electronics', 2, 570, 399, NULL),
(9121, '2022-05-10', '10:55:00', 223, 'Male', 47, 'Clothing', 3, 340, 170, 1020),
(9122, '2022-05-11', '13:25:00', 78, 'Female', 28, 'Beauty', NULL, 295, 147.5, 590),
(9123, '2022-05-12', '16:45:00', 145, 'Male', 63, 'Electronics', 1, 950, NULL, 950),
(9124, '2022-05-13', '09:05:00', 201, 'Female', 40, 'Clothing', 4, 260, 130, NULL),
(9125, '2022-05-14', '12:30:00', 134, 'Male', 33, 'Beauty', 3, 265, 132.5, 795),
(9126, '2022-05-15', '15:00:00', 89, 'Female', 57, 'Electronics', NULL, 690, 483, 1380),
(9127, '2022-05-16', '08:30:00', 156, 'Male', 44, 'Clothing', 2, 385, NULL, 770),
(9128, '2022-05-17', '11:55:00', 245, 'Female', 31, 'Beauty', 5, 150, 75, NULL),
(9129, '2022-05-18', '14:15:00', 67, 'Male', 59, 'Electronics', 1, 820, 574, 820),
(9130, '2022-05-19', '10:35:00', 178, 'Female', 36, 'Clothing', NULL, 310, 155, 620),
(9131, '2022-05-20', '13:50:00', 123, 'Male', 52, 'Beauty', 4, 220, NULL, 880),
(9132, '2022-05-21', '16:20:00', 198, 'Female', 29, 'Electronics', 3, 480, 336, NULL),
(9133, '2022-05-22', '09:40:00', 234, 'Male', 61, 'Clothing', 2, 355, 177.5, 710),
(9134, '2022-05-23', '12:05:00', 92, 'Female', 38, 'Beauty', NULL, 275, 137.5, 550),
(9135, '2022-05-24', '15:35:00', 167, 'Male', 46, 'Electronics', 1, 730, NULL, 730),
(9136, '2022-05-25', '08:15:00', 223, 'Female', 34, 'Clothing', 5, 235, 117.5, NULL),
(9137, '2022-05-26', '11:40:00', 78, 'Male', 54, 'Beauty', 3, 245, 122.5, 735)


SELECT TOP 10 * FROM retail_sales


SELECT COUNT(*) as total_records FROM retail_sales

SELECT * FROM retail_sales
WHERE quantity IS NULL

DELETE FROM retail_sales
WHERE transaction_id IS NULL
	OR
 sale_date IS NULL
 OR 
 sale_time IS NULL 
 OR customer_id IS NULL
 OR gender IS NULL
 OR age IS NULL
 OR category IS NULL
 OR quantity IS NULL
 OR price_per_unit IS NULL
 OR cogs IS NULL 
 OR total_sale IS NULL


 SELECT * FROM retail_sales

 -- DATA EXPLORATION
 
 -- How many sales we have

 SELECT COUNT(*) as total_sales FROM retail_sales

 -- How many unique customers we have
 SELECT  COUNT(DISTINCT customer_id) as customers FROM retail_sales


 -- How many unique categories we have
 SELECT DISTINCT category as categories FROM retail_sales

 --Business Key Problems and Answers
 --Qn 1 - Retrieve all sales made on 2022-11-05

 SELECT * FROM retail_sales
 WHERE sale_date = '2022-11-05' AND category = 'Clothing'

 --Qn 2 - retrieve all transactions where category is Clothing and quantity sold is more than 10 in Nov 2022
 SELECT *,
 quantity as quantity_sold
 FROM retail_sales
 WHERE category = 'Clothing' AND FORMAT(sale_date,'yyyy-MM') ='2022-11'

 -- Qn 3 - write a query to calculate the total_sales for each category
 SELECT category, SUM(total_sale) as total_sales, COUNT(*) orders
 FROM retail_sales 
 GROUP BY
 category
 

 -- Qn 4 write a query to find the average age of customers who purchased items from 'Beauty' category
 SELECT category, AVG(age) as average_age
 FROM retail_sales
 GROUP BY 
 category
 HAVING
 category = 'Beauty'

 -- Qn 5 write a query to find all transactions where the total_sale is greater than 1000
 SELECT * FROM retail_sales
 WHERE total_sale > 1000


 --Qn 6 write a query to find the total number of transactions made by each gender
	SELECT category,gender, COUNT(transaction_id) as total_transactions 
	FROM retail_sales
	GROUP BY 
	category,gender
	ORDER BY
	category

-- Qn 7 write a query to calculate the avg sale for each month and find out the best selling month in each year
SELECT YEAR(sale_date) as sale_year,
       MONTH(sale_date) as sale_month,
	   ROUND(AVG(total_sale),2) as avg_total_sales
FROM retail_sales
GROUP BY YEAR(sale_date),
       MONTH(sale_date) 
ORDER BY 
     YEAR(sale_date),
	 avg_total_sales DESC


 -- Qn 8 write a query to find the top 5 customers based on highest total sales
 SELECT TOP 5 customer_id,SUM(total_sale) as total_sales FROM retail_sales
 GROUP BY
 customer_id
 ORDER BY
 total_sales DESC

 -- Qn 9 write a query to find the number of unique customers who purchased items from each category
 SELECT category,COUNT(DISTINCT customer_id) as unique_customers
 FROM retail_sales
 GROUP BY category
 ORDER BY category ASC


--Qn 10 write a sql query to create each shift and number of orders (example morning <= 12,)
SELECT *,
	CASE 
	   WHEN DATEPART(HOUR,sale_time) < 12 THEN 'Morning'
	   WHEN DATEPART(HOUR,sale_time) BETWEEN 12 AND 17 THEN 'Afternoon' 
	   ELSE 'Evening'
	END as shift_
FROM retail_sales



SELECT
     CASE 
	   WHEN DATEPART(HOUR,sale_time) < 12 THEN 'Morning'
	   WHEN DATEPART(HOUR,sale_time) BETWEEN 12 AND 17 THEN 'Afternoon' 
	   ELSE 'Evening'
	END as shift_,
	COUNT(transaction_id) as number_of_orders FROM retail_sales
GROUP BY 
CASE 
	   WHEN DATEPART(HOUR,sale_time) < 12 THEN 'Morning'
	   WHEN DATEPART(HOUR,sale_time) BETWEEN 12 AND 17 THEN 'Afternoon' 
	   ELSE 'Evening'
	END



	--end of project