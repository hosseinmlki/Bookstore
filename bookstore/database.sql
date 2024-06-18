CREATE DATABASE BookStore;
USE BookStore;

CREATE TABLE Book(
    BookID varchar(50),
	BookTitle varchar(200),
    Price double(12,0),
    Author varchar(128),
    Type varchar(128),
    Image varchar(128),
    PRIMARY KEY (BookID)
);

CREATE TABLE Users(
    UserID int not null AUTO_INCREMENT,
    UserName varchar(128),
    Password varchar(16),
    PRIMARY KEY (UserID)
);

CREATE TABLE Customer (
	CustomerID int not null AUTO_INCREMENT,
    CustomerName varchar(128),
    CustomerPhone varchar(12),
	CustomerAddress varchar(200),
    CustomerGender varchar(10),
    UserID int,
    PRIMARY KEY (CustomerID),
    CONSTRAINT FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE `Order`(
	OrderID int not null AUTO_INCREMENT,
    CustomerID int,
    BookID varchar(50),
    DatePurchase datetime,
    Quantity int,
    TotalPrice double(12,2),
    Status varchar(1),
    PRIMARY KEY (OrderID),
    CONSTRAINT FOREIGN KEY (BookID) REFERENCES Book(BookID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE SET NULL ON UPDATE CASCADE
);

/*CREATE TABLE Cart(
	CartID int not null AUTO_INCREMENT,
    CustomerID int,
    BookID varchar(50),
    Price double(12,2),
    Quantity int,
    TotalPrice double(12,2),
    PRIMARY KEY (CartID),
    CONSTRAINT FOREIGN KEY (BookID) REFERENCES Book(BookID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE SET NULL ON UPDATE CASCADE
);*/


INSERT INTO `book`(`BookID`, `BookTitle`, `Price`, `Author`, `Image`) VALUES ('B-001','سیاره تنهایی استرالیا',30000,'محمد رمضانی','image/travel.jpg');
INSERT INTO `book`(`BookID`, `BookTitle`, `Price`, `Author`, `Image`) VALUES ('B-002','مدیریت منابع خدمه ویرایش دوم',59000,'Barbara Kanki','image/technical.jpg');
INSERT INTO `book`(`BookID`, `BookTitle`, `Price`, `Author` , `Image`) VALUES ('B-003','مسیریابی و سوییچ ccna',40000,'کیانوش عطائی','image/technology.jpg');
INSERT INTO `book`(`BookID`, `BookTitle`, `Price`, `Author`, `Image`) VALUES ('B-004','کتاب آشپزی آسان گیاهخواری',75000,'Rockridge Press','image/food.jpg');