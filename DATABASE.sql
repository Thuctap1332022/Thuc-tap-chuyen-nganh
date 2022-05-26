/*
Created		2/4/2022
Modified		2/4/2022
Project		
Model		
Company		
Author		
Version		
Database		MS SQL 7 
*/
USE [master]
GO
CREATE DATABASE [QLTV_ThucTap]
GO
USE [QLTV_ThucTap]
GO
Create table [SINHVIEN] (
	[maSV] Integer NOT NULL,
	[hotenSV] Nvarchar(50) NULL,
	[gioitinhSV] Nvarchar(10) NULL,
	[ngaySinhSV] Datetime NULL,
	[lopSV] Char(20) NULL,
	[ngayLamThe] Datetime NULL,
	[NgayHetHan] Datetime NULL,
	[anhSV] Nvarchar(50) NULL,
Primary Key  ([maSV])
) 
go

Create table [NHANVIEN] (
	[maNV] Integer NOT NULL,
	[gioiTinhNV] Nvarchar(50) NULL,
	[ngaysinhNV] Datetime NULL,
	[diachiNV] Nvarchar(100) NULL,
	[ngayVaoLam] Datetime NULL,
	[sdtNV] Varchar(50) NULL,
	[anhNV] Nvarchar(50) NULL,
	[userName] Varchar(50) NULL,
	[matKhau] Nvarchar(50) NULL,
Primary Key  ([maNV])
) 
go

Create table [SACH] (
	[maSach] Integer NOT NULL,
	[maTL] Integer NOT NULL,
	[maTG] Integer NOT NULL,
	[maNXB] Integer NOT NULL,
	[tenSach] Nvarchar(50) NULL,
	[anhMinhHoa] Nvarchar(50) NULL,
	[gia] Float NULL,
	[soLuong] Integer NULL,
	[soLuongTon] Integer NULL,
Primary Key  ([maSach])
) 
go

Create table [TACGIA] (
	[maTG] Integer NOT NULL,
	[tenTG] Nvarchar(50) NULL,
	[ghiChu] Nvarchar(50) NULL,
Primary Key  ([maTG])
) 
go

Create table [THELOAI] (
	[maTL] Integer NOT NULL,
	[tenTL] Nvarchar(30) NULL,
	[ghiChu] Nvarchar(50) NULL,
Primary Key  ([maTL])
) 
go

Create table [NHAXUATBAN] (
	[maNXB] Integer NOT NULL,
	[tenNXB] Nvarchar(50) NULL,
	[ghiChu] Nvarchar(50) NULL,
	[diaChiNXB] Nvarchar(100) NULL,
	[dienThoaiNXB] Char(11) NULL,
	[websiteNXB] Char(100) NULL,
Primary Key  ([maNXB])
) 
go

Create table [PHIEUMUON] (
	[maPhieu] Integer NOT NULL,
	[maNV] Integer NOT NULL,
	[maSV] Integer NOT NULL,
	[NgayMuon] Date NULL,
Primary Key  ([maPhieu])
) 
go

Create table [TRASACH] (
	[maPhieu] Integer NOT NULL,
	[maNV] Integer NOT NULL,
	[maSach] Integer NOT NULL,
	[ngayTra] Date NULL,
	[tenSach] Nvarchar(50) NULL,
	[tinhTrang] Nvarchar(50) NULL,
Primary Key  ([maPhieu])
) 
go

Create table [CT_PHIEUMUON] (
	[maPhieu] Integer NOT NULL,
	[maSach] Integer NOT NULL,
	[ngayTra] Date NULL,
	[ngayMuon] Date NULL,
	[soLuong] Integer NULL,
	[tinhTrang] Nvarchar(10) NULL,
Primary Key  ([maPhieu],[maSach])
) 
go


Alter table [PHIEUMUON] add  foreign key([maSV]) references [SINHVIEN] ([maSV]) 
go
Alter table [PHIEUMUON] add  foreign key([maNV]) references [NHANVIEN] ([maNV]) 
go
Alter table [TRASACH] add  foreign key([maNV]) references [NHANVIEN] ([maNV]) 
go
Alter table [TRASACH] add  foreign key([maSach]) references [SACH] ([maSach]) 
go
Alter table [CT_PHIEUMUON] add  foreign key([maSach]) references [SACH] ([maSach]) 
go
Alter table [SACH] add  foreign key([maTG]) references [TACGIA] ([maTG]) 
go
Alter table [SACH] add  foreign key([maTL]) references [THELOAI] ([maTL]) 
go
Alter table [SACH] add  foreign key([maNXB]) references [NHAXUATBAN] ([maNXB]) 
go
Alter table [CT_PHIEUMUON] add  foreign key([maPhieu]) references [PHIEUMUON] ([maPhieu]) 
go


Set quoted_identifier on
go

Set quoted_identifier off
go

insert into SINHVIEN values (1,N'Nguyễn Văn A',N'Nam',2001/2/3,N'CNTT1',2020/2/3,2024/2/3,'images/a1.jpg')
insert into SINHVIEN values (2,N'Nguyễn Văn B',N'Nam',2001/2/3,N'CNTT1',2020/2/3,2024/2/3,'images/a1.jpg')
insert into SINHVIEN values (3,N'Nguyễn Thị C',N'Nữ',2001/2/3,N'CNTT1',2020/2/3,2024/2/3,'images/a1.jpg')

insert into NHANVIEN values (1,N'Nam',2001/2/3,N'Hà Nội',2020/2/3,123456789,'images/a1.jpg','user1','user1')
insert into NHANVIEN values (2,N'Nữ',2001/2/3,N'Hà Nội',2020/2/3,123456789,'images/a1.jpg','user2','user2')
insert into NHANVIEN values (3,N'Nam',2001/2/3,N'Hà Nội',2020/2/3,123456789,'images/a1.jpg','user3',123456789)

insert into NHAXUATBAN values (1,N'NXB Giáo dục','',N'Hà Nội',123456789,N'NXBGD.VN')
insert into NHAXUATBAN values (2,N'NXB Hoa Hồng','',N'Hà Nội',123456789,N'NXBGD.VN')
insert into NHAXUATBAN values (3,N'NXB Hà Nội','',N'Hà Nội',123456789,N'NXBGD.VN')

insert into TACGIA values (1,N'Hà Nội',N'')
insert into TACGIA values (2,N'Hà Nam',N'')
insert into TACGIA values (3,N'Phú Thọ',N'')

insert into THELOAI values (1,N'Giáo dục',N'')
insert into THELOAI values (2,N'Khoa học',N'')
insert into THELOAI values (3,N'Văn học',N'')

insert into SACH values (1,1,1,1,N'Toán','images/a1.jpg',25000,20,25)
insert into SACH values (2,2,1,3,N'Toán','images/a1.jpg',25000,20,25)
insert into SACH values (3,1,1,1,N'Toán','images/a1.jpg',25000,20,25)

select *from NHANVIEN





