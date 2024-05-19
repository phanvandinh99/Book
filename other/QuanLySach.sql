create database BookStore
go
use BookStore
go
create table KhachHang
(
	MaKhachHang int identity(1,1) primary key,
	HoTen nvarchar(50) not null,
	TaiKhoan varchar(50),
	MatKhau nvarchar(50),
	Email nvarchar(100),
	DiaChi nvarchar(500),
	DienThoai varchar(12),
	GioiTinh nvarchar(5),
	NgaySinh datetime,
	TrangThai int default(0),
)
go
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Thảo Lê', 'thaole', 'abc123', 'ThaoLe@gmail.com', N'Hà Tĩnh', '0975252514', 'Nữ', '6/7/1999');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Trần Như Tuyết', 'tuyet', 'abc123', 'Tuyet@gmail.com', N'Hà Nội', '0971010265', 'Nữ', '1/2/1995');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Phan Tấn Đẩu', 'tandau', 'abc123', 'TanDau@gmail.com', N'Khánh Hòa', '0346857452', 'Nam', '12/12/2000');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Quách Trương', 'quachtruong', 'abc123', 'QuachTruong@gmail.com', N'Khánh Hòa', '0635241254', 'Nam', '6/7/1998');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Khách Hàng', 'abc', 'abc123', 'ThaoLe@gmail.com', N'Hà Tĩnh', '0365254251', 'Nữ', '6/7/1999');
go
create table TacGia
(
	MaTacGia int identity (1,1) primary key,
	TenTacGia nvarchar(100) ,
	Diachi nvarchar(200),
	TieuSu nvarchar(100),
	DienThoai varchar(12)
)
go
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Nam Cao',N'Hà Nam',N'một trong những nhà văn tiêu biểu thế kỷ 20','0971010282');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Xuân Diệu',N'Binh Định',N'ông hoàng thơ tình','072352456');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Nguyễn Du',N'Thăng Long',N'Đại thi hào dân tộc','0349758544');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Hoàng Thi Thơ',N'Quảng Trị',N'là một nhạc sĩ Việt Nam','0971010283');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Nguyễn Du',N'Hà Nội',N'Nhà văn học Việt Nam','0635241254');
go
create table ChuDe
(
	MaChuDe int identity(1,1) primary key,
	TenChuDe nvarchar(50) not null
)
go
insert into ChuDe (TenChuDe) values (N'Tin Học');
insert into ChuDe (TenChuDe) values (N'Văn Học');
insert into ChuDe (TenChuDe) values (N'Khoa Học');
insert into ChuDe (TenChuDe) values (N'Nhân Văn Học');
insert into ChuDe (TenChuDe) values (N'Kinh Tế');
insert into ChuDe (TenChuDe) values (N'Giáo Khoa');
insert into ChuDe (TenChuDe) values (N'Thiếu Nhi');
insert into ChuDe (TenChuDe) values (N'Nước Ngoài');
insert into ChuDe (TenChuDe) values (N'Sách Khác');
go
create table NhaXuatBan
(
	MaNXB int identity(1,1) primary key,
	TenNXB nvarchar(50) ,
	DiaChi nvarchar(200),
	DienThoai varchar(12)
)
go
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Kim đồng',N'55 Quang Trung, Hai Bà Trưng, Hà Nội','02439434730');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Trẻ',N'161B Lý Chính Thắng, Phường 7, Quận 3, Thành phố Hồ Chí Minh.','02839316289');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Chính trị quốc gia',N'Số 24 Quang Trung, Hoàn Kiếm, Hà Nội.','028049221');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Giáo dục',N'81 Trần Hưng Đạo, Hà Nội',' 02438220801');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Lao động',N'175 Giảng Võ, Đống Đa, Hà Nội','02438515380');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Hà Nội',N'Số 65 Nguyễn Du, Hà Nội','02438222135');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Văn Học',N' P. Trúc Bạch, Q. Ba Đình, Tp. Hà Nội','842437161518');
go
create table DonHang
(
	MaDonHang int identity(1,1) primary key,
	DaThanhToan int default(0),
	TinhTrangGiaoHang int default(0),
	NgayDat date default(getdate()),
	NgayGiao date,
	MaKhachHang int,
	foreign key (MaKhachHang) references KhachHang(MaKhachHang) on delete cascade on update cascade,
)
go
insert into DonHang (TinhTrangGiaoHang, NgayDat, NgayGiao, MaKhachHang) values ('0', '2/2/2021', '3/2/2021', 1);
insert into DonHang (TinhTrangGiaoHang, NgayDat, NgayGiao, MaKhachHang) values ('1', '2/2/2021', '3/2/2021', 1);
insert into DonHang (TinhTrangGiaoHang, NgayDat, NgayGiao, MaKhachHang) values ('2', '2/2/2021', '3/2/2021', 1);
insert into DonHang (TinhTrangGiaoHang, NgayDat, NgayGiao, MaKhachHang) values ('3', '2/2/2021', '3/2/2021', 1);
insert into DonHang (TinhTrangGiaoHang, NgayDat, NgayGiao, MaKhachHang) values ('0', '2/2/2021', '3/2/2021', 1);
go
create table Sach
(
	MaSach int identity(1,1) primary key,
	TenSach nvarchar(200) ,
	GiaBan decimal(18,0),
	MoTa nvarchar(max),
	AnhBia nvarchar(max),
	NgayCapNhat datetime default(getdate()),
	SoLuongTon int default(0),
	SoLuongDaBan int default(0),
	Moi int default(0),

	MaNXB int not null,
	MaChuDe int not null,
	foreign key (MaNXB) references NhaXuatBan(MaNXB) on delete cascade on update cascade,
	foreign key (MaChuDe) references ChuDe(MaChuDe) on delete cascade on update cascade,
)
go

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TIN HỌC VĂN PHÒNG - CÔNG THỨC & HÀM EXCEL','40000',N'Tin Học Văn Phòng - Công Thức & Hàm Excel

- Khám phá và khai thác triệt để sức mạnh của công thức và hàm trong excel.

- Học cách tạo công thức mới, hiệu chỉnh công thức tự tạo, ứng dụng các công thức ấy trong tính toán và phân tích.

- Theo dõi tình hình tài chính cá nhân bằng excel.',N'image_140616.jpg','01/01/2017','100','2','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'XỬ LÝ ẢNH PHOTOSHOP CS5 ','80000',N'Dù bạn là người đã biết hay chưa từng sử dụng phần mềm này, bộ sách Photoshop CS5 dành cho người tự học gồm 4 tập là những tài liệu bạn cần có để trở thành một chuyên gia xử lý hình ảnh. Với những hướng dẫn, minh họa rõ ràng sẽ giúp bạn nắm vững và khám phá các đặc tính mới của Photoshop CS5 và ứng dụng trong công việc thực tế một cách hiệu quả nhất.',N'image_106956.jpg','06/06/2013','30','2','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'CHÍ PHÈO ','35000',N'...Cả làng Vũ Đại nhao lên. Họ bàn tán rất nhiều về vụ án không ngờ ấy. Có kẻ mừng thầm. Không thiếu kẻ mừng ra mặt. Có người nói xa xôi: Trời có mắt đấy, anh em ạ!. Người khác thì nói toạc: Thằng nào chứ hai thằng ấy chết thì không ai tiếc! Rõ thật bọn chúng nó giết nhau, nào có phải cần đến tay người khác đâu...',N'image_67304.jpg','10/10/2014','5','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'SỐNG MÒN (TRÍ VIỆT)','50000',N'Sống mòn hoàn thành vào năm 1944, xuất bản ban đầu với tên gọi Chết mòn năm 1956. Trong tác phẩm, Nam Cao đã miêu tả sâu sắc tấn bi kịch tinh thần của người trí thức nghèo trong xã hội cũ. Họ là những người có ý thức rất cao về nhân phẩm và danh dự, có khát vọng - hoài bão văn chương lớn lao nhưng lại bị gánh nặng cơm áo gạo tiền bóp nghẹt sự sống.',N'image_113908.jpg','01/08/2016','12','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'LUẬT NGÂN HÀNG NHÀ NƯỚC VIỆT NAM','6640',N'Luật Ngân Hàng Nhà Nước Việt Nam',N'image_79415.jpg','01/04/2014','15','3','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TÁC GIẢ TRONG NHÀ TRƯỜNG','60000',N'Bộ Sách Phê Bình Và Bình Luận Văn Học giới thiệu những bài viết của nhiều tác giả khác nhau về các "Tác Giả Trong Nhà Trường" như: Nam Cao, Xuân Diệu, Vũ Trọng Phụng, Nguyễn Trãi, Nguyễn Công Hoan, Nguyễn Đình Chiểu, Ngô Tất Tố, Tố Hữu, Hồ Xuân Hương và Nguyễn Du…',N'image_128447.jpg','01/04/2016','32','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TRUYỆN KIỀU', '75000', N'Ấn bản Truyện Kiều này là công trình khảo đính và chú giải của ông, một công trình được xem là mang tính khuôn mẫu choviệc xử lý các văn bản Hán-Nôm sau này do ông đảm nhiệm. Từ năm 1972 đến nay, bản Kiều này đã được tái bản 33 lần với số lượng hơn 200.000 bản, trở thành một trong các bản Kiều được tái bản nhiều nhất trong hơn bốn thập kỷ qua.', N'tk.jpg', '01/10/2017', '5','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'HỒ CHÍ MINH THƠ VÀ ĐỜI','10000',N'Cuốn sách gồm hai phần:Phần một: tác phẩmPhần hai: về tác phẩm và cuộc đời Hồ Chí Minh.',N'hcmtvd.png','06/06/2016','15','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TỤC NGỮ, CA DAO, DÂN CA VIỆT NAM','58500',N'Tục Ngữ, Ca Dao, Dân Ca Việt Nam Xấu lá gói chẳng đặng nem Bởi anh chậm bước nên em có chồng Cá xuống sông còn mến nước trên đồng Sao em lấy chồng không ở vậy chờ anh?',N'tncdvn.jpg','01/12/2015','50','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'MỌI CHUYỆN ĐỀU LÀ LỖI CỦA EM','40000',N'Những câu chuyện buồn nhưng nhìn từ một phương diện khác lại là thông điệp về hạnh phúc theo hướng tích cực. Đó là những tiếng yêu chân thành, nhẹ nhàng, dung dị và đầy thi vị',N'mcdllce.jpg','01/01/2018','40','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'MỖI NGÀY NHÌN LẠI','80000',N'“Mỗi ngày tồn tại trên một thân xác khác nhau. Mỗi ngày sống một cuộc đời khác nhau. Nhưng dù vậy, mỗi ngày trôi qua vẫn chỉ yêu duy nhất một cô gái”',N'mnnl.jpg','01/01/2018','32','7','2');




insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'THÁM TỬ LỪNG DANH CONAN - TẬP 94','35000',N'Dạo gần đây, Ran có những biểu hiện rất kì lạ... Trong lòng lo lắng không yên, Conan cùng thám tử Kogoro bắt đầu theo dõi cô...!? ',N'cn94.jpg','11/5/2018','100','1','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'MẮT BIẾC','50000',N'"Tôi không thể bắt Hà Lan phải giống tôi.
Tôi khác. Không ai bắt tôi phải hoài vọng kỷ niệm.
 Không ai bắt tôi phải nhớ da diết cái làng nhỏ xa xăm của mình mỗi khi chiều xuống',N'mb.jpg','11/02/2011','15','2','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TÔI THẤY HOA VÀNG TRÊN CỎ XANH','70000',N'Tác giả vẫn giữ cách kể chuyện bằng chính giọng trong sáng hồn nhiên của trẻ con. 81 chương ngắn là 81 câu chuyện hấp dẫn với nhiều chi tiết thú vị, cảm động, có những tình tiết bất ngờ, từ đó lộ rõ tính cách người. Cuốn sách, vì thế, có sức ám ảnh.',N'tthvtcx.jpg','12/01/2012','10','2','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'BẢY BƯỚC TỚI MÙA HÈ','40000',N'Câu chuyện về một mùa hè ngọt ngào, những trò chơi nghịch ngợm và bâng khuâng tình cảm tuổi mới lớn. Chỉ vậy thôi nhưng chứng tỏ tác giả đúng là nhà kể chuyện hóm hỉnh, khiến người đọc cuốn hút từ tựa đến trang cuối cùng, có lẽ chính vì giọng văn giản dị và trong trẻo của Nguyễn Nhật Ánh',N'bbdmh.jpg','01/03/2015','7','2','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'NGỮ PHÁP TIẾNG ANH THỰC HÀNH ','79500',N'Ngữ Pháp Tiếng Anh Thực Hành gồm 5 chương, trình bày những chủ điểm ngữ pháp tiếng Anh từ cơ bản đến nâng cao, phù hợp với mọi trình độ',N'nptath.jpg','01/10/2016','34','7','8');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'GIẢI THÍCH NGỮ PHÁP TIẾNG ANH','85000',N'Sách được biên soạn thành 18 chương, đề cập đến những vấn đề ngữ pháp từ cơ bản như: danh từ, đại từ, tính từ, trạng từ, so sánh tính từ và trạng từ, động từ, giới từ, cụm động từ, liên từ…',N'gtnpta.jpg','10/05/2016','4','4','8');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'BỮA TIỆC CỦA PINKIE','80000',N'',N'btcp.jpg','11/11/2016','30','5','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Nhà Giả Kim (Tái Bản 2020)','20000',N'Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.',N'nhagiakim.jpg','11/11/2016','30','6','2');

-- Khoa Học
insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Bình Luận Khoa Học Hiến Pháp Hiện Hành (2013)','200000',N'Để triển khai thi hành Hiến pháp năm 2013, việc tuyên truyền, phổ biến và làm rõ các nội dung cụ thể của Hiến pháp năm 2013 qua các hình thức tìm hiểu, hỏi – đáp và đặc biệt là bình luận khoa học để làm sáng rõ nội dung của Hiến pháp hiện hành cho toàn dân là điều hất sức cần thiết, góp phần đưa Hiến pháp năm 2013 vào đời sống đạt hiệu quả cao. Nhà xuất bản Chính trị quốc gia Sự thật xuất bản và phát hành cuốn sách Bình luận khoa học Hiến pháp nước cộng hòa xã hội chủ nghĩa Việt Nam năm 2013.',N'binhluankhoahoc.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Đất Trời Vần Vũ','100000',N'Đất trời vần vũ được đánh giá rất cao khi xuất bản lần đầu 10 năm trước, đoạt giải C tiểu thuyết Hội Nhà văn VN 2006-2010, tuy khi còn ở dạng bản thảo, đây từng được xem là 1 cuốn sách khó nhằn với giới chức kiểm duyệt. 
Nếu chờ đợi 1 tiểu thuyết thuật tả thông thường, dễ nắm bắt, thì sẽ ít nhiều thất vọng. Là 1 trong rất ít tiểu thuyết viết về Thiên chúa giáo ở Việt Nam, nhưng lồng trong đức tin Thiên chúa là câu chuyện về một vùng đất thiêng từ thời cổ sử lập đất đến thời hiện đại. Biểu tượng xuyên suốt những câu chuyện chồng chéo “xuyên không” là lưỡi dao thiêng ở vùng đất tên Cù lao Dao. Câu chuyện được kể bám theo biểu tượng đó:',N'vanvu.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Khoa Học Khám Phá','110000',N'Khoa Học Khám Phá - 5 Phương Trình Làm Thay Đổi Thế Giới

Cuốn sách mô tả về năm phương trình nổi tiếng có sức chuyển động thế giới. mỗi câu chuyện gắn liền giữa cuộc đời với những nghiên cứu khoa học của 5 nhân vật, giúp ta thấy được những yếu tố đã làm nên các nhà khoa học vĩ đại và các thành tựu khoa học lớn. Đó là Albert Einstein với phương trình năng lượng; Daniel Bernoulli với phương trình thủy động lực học; Michael Faraday với phương trình điện từ trường, Isaac Newton với phương trình vạn vật hấp dẫn, Rudolf Julius Emmanuel Clausius với phương trình nhiệt động lực học – bất đẳng thức nhiệ động lực học.',N'khoahockhampha.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Khoa Học Khám Phá - Trí Tuệ Giả Tạo','50000',N'Ngày nay Internet, được sự trợ giúp của công nghệ máy tính và đường truyền băng rộng, đã trở thành phần thiết yếu trong đời sống của con người. Gần như bất cứ hoạt động nào liên quan đến thông tin hay kiến thức, thậm chí quan hệ xã hội, đều có thể được con người thực hiện thông qua Internet.

Mặt tiện lợi đã thật sự rõ ràng, và cũng có thể vì thế mà chẳng mấy ai sẵn sàng nhìn vào mặt tối của Internet – nó đã khiến chúng ta phụ thuộc vào nó, biến đổi cách chúng ta tư duy, thậm chí làm thui chột trí tuệ của con người.',N'khoahocjkhampha.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Cuộc Chiến Lỗ Đen','20000',N'- Ngọc hoàng và anh học trò nghèo',N'cuocchienloden.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Khoa Học Khám Phá - Mật Mã','30000',N'Sách phác hoạ sự tiến hoá của mật mã từ khi nó xuất hiện cho tới nay và đồng thời là những chứng minh về sự hợp thời của nó.',N'matma.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Tư Duy Nhạy, Tiếp Thu Nhanh','40000',N'Bạn có biết bộ não nghĩ rằng nó vẫn đang sống ở 10.000 năm trước Công nguyên?

Vấn đề này nằm ở hệ limbic bên trong não - vốn không chịu tự thích nghi với thế giới đang đổi thay khủng khiếp xung quanh nó!

Bạn đã từng nghe đến trường hợp của Phineas Gage - một người đàn ông từng bị thủng sọ nhưng vẫn sống sót một cách kỳ lạ?

Một que sắt xuyên qua não của Gage, phá vỡ đỉnh sọ. Thế mà anh ấy vẫn sống và làm việc bình thường, có điều... tính tình của Gage lại không còn đáng yêu cho lắm…',N'tuduynhay.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Dẫn Nhập Ngắn Về Khoa Học - Trí Tuệ Nhân Tạo','20000',N'Qua nửa thế kỷ nghiên cứu, các nhà khoa học đã phát triển máy tính chơi cờ vua Deep Blue đánh bại được kỳ thủ cự phách nhất và tạo ra những robot hình người có khả năng tương tác. Nhưng liệu máy móc có thể tư duy thực sự không? Có thật ý thức chỉ là một chương trình máy tính phức tạp? Cuốn sách này sẽ tập trung khai thác những vấn đề đằng sau trí tuệ nhân tạo – một lĩnh vực khoa học “khó nhằn” bậc nhất.',N'dannhap.jpg','11/2/2021','10','1','3');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Bên Lề Khoa Học','60000',N'Phần I, “Khoa học và Giáo dục” có 14 tiểu đề, bàn về những vấn nạn trong nghiên cứu khoa học nói chung, những bất cập trong nghiên cứu và giáo dục tại Việt Nam nói riêng và vài bài tạp bút về khoa học, ngôn ngữ. Tác giả cũng dành 4 tiểu đề để tập trung luận bàn những cuốn sách của các học giả, chẳng hạn như cuốn “The quantum and the lotus” (Lượng tử và hoa sen) của hai nhà khoa học Matthieu Ricard & Trịnh Xuân Thuận.',N'benlekhoahoc.jpg','11/2/2021','10','1','3');
-- End Khoa Học

-- Nhân Văn
insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Không Đến Một (Bìa Cam)','20000',N'Nếu bạn muốn xây dựng một tương lai tốt đẹp hơn, bạn phải tin vào bí mật.

Bí mật lớn nhất của thời đại chúng ta là vẫn còn những lĩnh vực và phát minh mới cần chúng ta khám phá và tạo ra. Trong Không Đến Một, doanh nhân và nhà đầu tư huyền thoại Peter Thiel chỉ cho chúng ta biết cách tìm ra những cách thức độc đáo để tạo ra những thứ mới này.',N'khongdenmot.jpg','11/3/2021','10','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Dinh Dưỡng Cân Bằng','25000',N'Hiện nay chúng ta biết rất nhiều trường phái dinh dưỡng, mỗi trường phái đều có quan điểm và những lập luận rất thuyết phục làm chúng ta đôi lúc hoang mang. Cho nên chúng ta cần bức tranh tổng thể dinh dưỡng để tạo nền tảng để chúng ta đón nhận có chọn lọc những thông tin trên.

“DINH DƯỠNG CÂN BẰNG – Ăn trong tỉnh thức” đưa ra các nguyên lý dinh dưỡng giúp chúng ta hiểu tại sao chúng ta lại ăn món này mà không ăn món kia. Nên lựa chọn phương pháp nào cho phù hợp. Liệu dinh dưỡng có giúp chúng ta nâng cao miễn dịch hay kéo dài tuổi thọ hay không ? Nhiều câu hỏi sẽ được giải đáp.',N'dinhduongcanbang.jpg','11/3/2021','2','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'MBA Căn Bản','10000',N'Bộ sách MBA căn bản trình bày các phương pháp cơ bản để xác định, lập kế hoạch và theo dõi một dự án, cũng như các kỹ thuật để lãnh đạo và xây dựng các nhóm dự án vững mạnh. Là giáo trình được sử dụng để giảng dạy về quản lý dự án trong hệ thống MBA tại Mỹ, được chấp bút bởi những chuyên gia hàng đầu trong lĩnh vực này, bộ sách sẽ giúp bạn thành thạo nghệ thuật quản lý, từ đó đẩy mạnh năng suất và giúp dự án của mình trở nên hiệu quả hơn.',N'mbacanban.jpg','11/3/2021','10','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Cỗ Máy Tri Giác','50000',N'Trí thông minh nhân tạo đang đóng một vai trò lớn hơn bao giờ hết trong xã hội ngày nay. Chúng ta sử dụng hệ thống điều khiển hành trình trong ô tô, thanh toán tự động tại hiệu thuốc và không thể sống thiếu điện thoại thông minh. Các cuộc thảo luận về AI là một sự phân cực tuyệt đối, một bên cho rằng các loại máy móc sẽ giải quyết mọi vấn đề cho con người, một bên lại nghĩ đám máy móc sẽ dẫn dắt xã hội vào một con đường tối tăm, đáng sợ.',N'comaytrigiac.jpg','11/3/2021','8','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Nghệ Thuật Ẩn Mình','180000',N'Trong cuốn sách này, Kevin Mitnick, hacker nổi tiếng nhất thế giới, sẽ hướng dẫn các biện pháp dễ thực hiện (và ít tốn kém) giúp bạn – trên cương vị một cá nhân bình thường và một người tiêu dùng – có thể giấu các thông tin nhận dạng cá nhân của mình trong kỷ nguyên của Dữ liệu Lớn, vốn không thiếu những scandal quy mô quốc tế về những vụ vi phạm dữ liệu người dùng thường xuyên xuất hiện trên các mặt báo. Mitnick bàn đến nhiều phương tiện mà chúng ta sử dụng hằng ngày – từ điện thoại, email, cho đến tin nhắn,… – chỉ ra những lỗ hổng mà người khác có thể lợi dụng để giành quyền kiểm soát các dữ liệu của chúng ta, đồng thời đưa ra những giải pháp phòng chống cụ thể và hữu hiệu mà bất kỳ ai cũng có thể thực hiện để tự bảo vệ mình.',N'anminh.jpg','11/4/2021','4','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Dấu Chân Trên Cát (Tái Bản 2020)','60000',N'Ngày nay, người ta biết đến triều đại các vua chúa Ai Cập thời cổ qua sách vở của người Hy Lạp. Sở dĩ các sử gia Hy Lạp biết được các chi tiết này vì họ đã học hỏi từ người Ai Cập bị đày biệt xứ tên là Sinuhe. Đây là một nhân vật lạ lùng, đã có công mang văn minh Ai Cập truyền vào Hy Lạp khi quốc gia này còn ở tình trạng kém mở mang so với Ai Cập lúc đó.',N'dauchantrencat.jpg','11/4/2021','4','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Không Gia Đình','10000',N'Không Gia Đình là tiểu thuyết nổi tiếng nhất trong sự nghiệp văn chương của Hector Malot. Hơn một trăm năm nay, tác phẩm giành giải thưởng của Viện Hàn Lâm Văn học Pháp này đã trở thành người bạn thân thiết của thiếu nhi và tất cả những người yêu mến trẻ khắp thế giới.',N'khonggiadinh.jpg','11/4/2021','10','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Hạ Đỏ (Tái Bản 2018)','50000',N'Kể về mối tình đầu trong sáng của một cậu học trò dành cho một cô gái quê 16 tuổi trong dịp về quê nghỉ hè, và những việc làm cao đẹp của cậu cho em bé quê chân chất chịu nhiều thiệt thòi ở nông thôn. Chuyện nhiều hình ảnh, dễ thương và trong sáng… vẫn không thiếu những “pha” thú vị cho ta những tiếng cười sảng khoái.',N'hado.jpg','11/4/2021','8','6','4');
-- End Nhân Văn

-- Sách Kinh Tế
insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Giá Trong Chiến Lược Kinh Doanh','60000',N'Khi đi mua sắm, yếu tố nào của sản phẩm khiến bạn quyết định mua nó ngay lập tức? Giá trị, thiết kế hay giá thành của sản phẩm đó? Hay bởi những lời chào mời có cánh như: “Giảm giá toàn bộ sản phẩm”, “Giảm giá 50% khi mua sản phẩm thứ 2”, hay “Giảm 50% cho khách hàng đặt trước một tháng”. Chúng ta, ở vị trí của một người têu dùng, đương nhiên sẽ rất vui sướng khi mua được món đồ tốt mà giá lại rẻ.',N'giatrongchienluockinhdoanh.jpg','11/03/2011','25','4','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Tiếp Thị 4.0','80000',N'Tiếp Thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số

Quyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sách sẽ giúp bạn lèo lái thế giới không ngừng kết nối và khách hàng không ngừng thay đổi để có được nhiều khách hàng hơn, xây dựng thương hiệu hiệu quả hơn, và cuối cùng kinh doanh thành công hơn. ',N'tiepthi40.jpg','11/03/2011','25','4','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Xấu Thế Nào, Đẹp Ra Sao (Tái Bản 2021)','140',N'Giải mã ngôn ngữ thiết kế, giúp người làm Marketing hiểu hơn về thẩm mỹ ứng dụng, nâng cao hiệu quả hoạt động quản trị và kiểm định hình ảnh của doanh nghiệp, Xấu thế nào - Đẹp ra sao là câu trả lời cho trăn trở của hơn 500 doanh nghiệp và 3000 Marketer về những vấn đề khi làm việc với hình ảnh và thiết kế. Cuốn sách mang tới cộng đồng sự kết hợp của Marketing và Design bài bản được chắt lọc từ quá trình làm việc thực tế cùng cách phân tích và cách tiếp cận mới. Với 9 bí kíp thẩm định thiết kế được trình bày đơn giản và dễ hiểu, checklist 20 câu hỏi gợi ý kiểm định cùng các trải nghiệm tương tác trực tiếp qua các trò chơi và thử thách thú vị, người đọc sẽ nhanh chóng nắm bắt các yếu tố cốt lõi trong thẩm mỹ cũng như dễ dàng ứng dụng thiết kế vào hoạt động Marketing thương hiệu bài bản.',N'xauthenao.jpg','11/03/2011','25','4','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Tiktok Marketing','110000',N'Tiktok Marketing

TikTok đang bùng nổ ở mọi nơi và đã trở thành một trong những ứng dụng được tải xuống nhiều nhất thế giới. Không có gì ngạc nhiên khi các nhà tiếp thị đã bắt đầu nhìn thấy tiềm năng của nền tảng này. Kinh doanh đi cùng với xu hướng thì mới có thể phát triển và tiếp cận gần hơn với nhiều tập khách hàng. TikTok đã thu hút được sự chú ý lớn từ nhiều nhà kinh doanh khi mạng xã hội này có thể tạo ra những content vô cùng đặc sắc, đồng thời còn là một kênh marketing hiệu quả.',N'tiktok.jpg','11/03/2011','25','4','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Kỹ Năng Bán Hàng Tuyệt Đỉnh','50000',N'Kỹ Năng Bán Hàng Tuyệt Đỉnh

Kỹ năng bán hàng tuyệt đỉnh sẽ cho bạn đọc biết được những quy tắc bán hàng, vốn là điều kiện tiên quyết để gặt hái thành công trong bất kỳ lĩnh vực nào, với bất kỳ ai, bất kỳ ở đâu.',N'kynangbanhangtd.jpg','11/03/2011','25','4','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Chào Hàng Chuyên Nghiệp Để Bán Hàng Thành Công','20000',N'Chào Hàng Chuyên Nghiệp Để Bán Hàng Thành Công

Vì sao nhân viên bán hàng đi sớm về khuya mà vẫn không hoàn thành nhiệm vụ?

Vì sao nhân viên bán hàng chăm chỉ cần cù, nỗ lực cống hiến nhưng thành tích lúc nào cũng trung bình?

Vì sao nhân viên bán hàng rất mực chân thành nhưng lại không chiếm được thiện cảm của khách hàng?',N'chaohang.jpg','11/03/2011','25','4','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Những Đòn Tâm Lý Trong Bán Hàng (Tái Bản 2021)','40000',N'Những Đòn Tâm Lý Trong Bán Hàng (Psychology Of Selling) chính là nghệ thuật bán hàng mà Brian Tracy, một doanh nhân thành đạt, đúc rút từ chính câu chuyện khởi nghiệp của cuộc đời ông.

Trong bán hàng, bạn chỉ cần giỏi hơn và khác biệt chút đỉnh trong mỗi công đoạn để tích lũy và dần tạo nên một khác biệt lớn về thu nhập.

Nếu bạn là người bán hàng mà lại sợ bị từ chối, bạn đã chọn sai cách kiếm sống.

Khách hàng không quan tâm sản phẩm của bạn là gì. Họ chỉ quan tâm sản phẩm hay dịch vụ của bạn có ích gì cho họ.',N'tamly.jpg','11/03/2011','25','4','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Nghệ Thuật Bán Hàng Của Người Do Thái','70000',N'Được mệnh danh là "quốc gia khởi nghiệp", Israel là nơi sản sinh ra nhiều doanh nhân thành công trong nhiều lĩnh vực và ở mọi quốc gia. Để làm được điều này, người Do Thái đã tiếp thu và thấm nhuần những triết lý và công cụ để tạo dựng uy tín, xây dựng và duy trì một cộng đồng khách hàng trung thành, thực hiện marketing sáng tạo và tối đa hóa doanh số cho công ty của mình – những phương pháp mà người Do Thái đã áp dụng từ rất lâu. Tất cả những điều này sẽ được tác giả Yaniv Zaid chia sẻ và lý giải trong quyển sách Nghệ thuật bán hàng của người Do Thái.',N'dothai.jpg','11/03/2011','25','4','5');

-- End Kinh Tế



-- lập trình
insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'ĐIỀU KHIỂN LOGIC LẬP TRÌNH PLC','35000',N'',N'dkltlg.jpg','12/11/2011','35','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'ĐIỀU KHIỂN LOGIC LẬP TRÌNH PLC','35000',N'',N'dkltlg.jpg','12/11/2011','35','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Hành Trang Lập Trình','140000',N'Cuốn sách gồm 2 nội dung chính:

• Chương I: Phần này trình bày những suy nghĩ và kĩ năng mềm cần thiết để bạn có thể hòa nhập và tiến xa được trong lĩnh vực công nghệ phần mềm. Nội dung trong phần này lại được chia thành những mục nhỏ hơn tương ứng với từng giai đoạn học tập và làm việc:

o Giai đoạn 1 – Học nghề: Trình bày những thái độ và kĩ năng học tập cần thiết để có thể học tập hiệu quả ở trường, cũng như chuẩn bị hành trang cho quá trình làm việc sau này.

o Giai đoạn 2 – Vào nghề: Cung cấp một vài thông tin hữu ích liên quan tới việc tìm kiếm và ứng tuyển vào những công ty công nghệ, phần này cũng đưa ra vài góc nhìn liên quan tới việc đánh giá và so sánh nơi làm việc để bạn tìm ra được công ty phù hợp.

o Giai đoạn 3 – Phát triển trong nghề: Sau khi đã tìm được nơi làm việc, phần này sẽ trình bày những suy nghĩ và cách tư duy làm việc để giúp bạn có thể tiến bộ hơn trong sự nghiệp lập trình viên.',N'hanhtranglaptrinh.jpg','12/11/2011','35','4','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Kỹ Thuật Lập Trình C','100000',N'Giáo Trình Kỹ Thuật Lập Trình C Cơ Sở Và Nâng Cao

Cùng với sự phát triển như vũ bão của khoa học kỹ thuật nói chung, ngành Công nghệ Thông tin nói riêng đã và đang thâm nhập vào thực tiễn của mọi lĩnh vực trong cuộc sống và hoạt động của con người, trong đó công nghệ lập trình cũng không ngừng phát triển và ngày một ứng dụng rộng rãi hơn.Trong các ngôn ngữ lập trình, ngôn ngữ lập trình C từ lâu đã trở thành ngôn ngữ phổ biến vì tính đa dụng và linh hoạt của nó. Từ một nhà lập trình có tên tuổi cho đến một sinh viên công nghệ thông tin hoặc người yêu thích công nghệ thông tin đều không thể phủ nhận khả năng giải quyết vì xử lý nhanh một bài toán, từ đơn giản đến phức tạp, trên nhiều lĩnh vực khác nhau của ngôn ngữ C. Để đáp ứng nhu cầu mong muốn của nhiều bạn đọc, Nhà xuất bản Thông tin và Truyền thông trân trọng giới thiệu cuốn sách “Giáo trình Kỹ thuật lập trình C: Cơ sở và nâng cao” của PGS. TS Phạm Văn Ất, một tên tuổi quen thuộc với bạn đọc yêu thích ngôn ngữ C.',N'laptrinhc.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Giáo Trình C++ Và Lập Trình Hướng Đối Tượng','250000',N'Giáo Trình C++ Và Lập Trình Hướng Đối Tượng

Lập trình cấu trúc là phương pháp tổ chức, phân chia chương trình thành các hàm, thủ tục. Chúng được dùng để xử lý dữ liệu nhưng lại tách rời các cấu trúc dữ liệu.

Lập trình hướng đối tượng dựa trên việc tổ chức chương trình thành các lớp. Khác với hàm và thủ tục, lớp là một đơn vị bao gồm cả dữ liệu và các phương thức xử lý.',N'giaotrinhc.jpg', default,'5','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Tớ Học Lập Trình','35000',N'Cẩm nang hướng dẫn hoàn chỉnh và đơn giản nhất dành cho bạn trẻ bắt đầu học lập trình

Ngôn ngữ lập trình Scratch đặc biệt phù hợp cho bạn trẻ mới học, vì tính tương tác trực quan, đồ họa sống động, ra sản phẩm liền tay mà vẫn đảm bảo khoa học và liên thông tri thức sau này.

Chỉ cần nắm và kéo các khối lệnh đầy màu sắc có sẵn để lắp ghép thành một kịch bản điều khiển các đối tượng trên màn hình.

Không có những dòng lệnh logic khô cứng và dễ lỗi, những khái niệm kỹ thuật khó hiểu, những quy tắc luật lệ chằng chịt và mệt mỏi trong các ngôn ngữ lập trình kiểu người lớn.',N'tohoclaptrinh.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình Với Scratch 3.0 (Tái Bản 2019)','35000',N'Lập Trình Với Scratch 3.0

“Lập trình với Scratch 3.0” là cuốn sách phiên bản mới của “Lập trình với Scratch” do VIETSTEM biên soạn. Dành riêng cho học sinh và người học bắt đầu làm quen với môn lập trình kéo thả. Thực hành - Trải nghiệm - Trực quan vẫn là phương pháp được áp dụng trong cách viết sách. Đặc biệt “Lập trình với Scratch 3.0” phù hợp cho các đơn vị, tổ chức giáo dục làm tài liệu giảng dạy cho học sinh.
Mục đích cuốn sách

Giới thiệu về ngôn ngữ lập trình kéo thả phổ biến nhất thế giới cho học sinh phổ thông, Scratch 3.0 (phiên bản mới, phát hành năm 2019). Cuốn sách kế thừa hoàn toàn những quan điểm về nội dung, cách trình bày của cuốn sách “Lập trình với Scratch” xuất bản năm 2016 tại NXBGD (viết cho phiên bản Scratch 2.0), đồng thời bổ sung những thông tin mới về giao diện, cách lập trình cũng như các khối lệnh của phiên bản Scratch 3.0.',N'scratch.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình Quỹ Đạo Cuộc Đời','35000',N'Lập trình Quỹ Đạo Cuộc Đời đem đến cho bạn những hệ tư duy khiến bạn hiểu vấn đề một cách tường tận qua những ví dụ và lập luận logic. Bạn có cơ hội được đi sâu khám phá bản chất của mọi hành vi. Mình muốn bạn trước khi phát triển bản thân, có thể nhận thức được mọi thứ rõ như ban ngày. Đọc vị được chính bạn, sau đó đến người khác và các chiến thuật tồn tại ở cái thế kỷ XXI hỗn loạn này.',N'quydaocuocdoi.jpg', default,'8','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình ToT Với Arduino - Esp8266 Và Xbee','35000',N'Sách được biên soạn cho người đã làm quen với Arduino, qua các bài tập thực hành cơ bản điều khiển Led đơn, LCD, Led ma trận, động cơ DC, động cơ servo, động cơ bước nay muốn lập trình hệ thống nhúng cũng như lập trình IOT nâng cao qua những ứng dụng điều khiển và thu nhận dữ liệu từ xa qua truyền không dâu (Wifi).

Tương ứng với từng bài tập đều có mã (code) chương trình với những giải thích giúp người học dễ theo dõi, cho phép một người có kiến thức cơ bản về Điện - Điện tử có thể từ ba tới năm ngày thực hành là bắt đầu khai thác và sử dụng Arduino trong lập trình IOT.',N'Arduino.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Ứng Xử Thông Minh Lập Trình Sự Nghiệp','35000',N'Trong văn phòng của bạn, sư cạnh tranh có thể không khôc liệt đến mức khiến người này tranh kẻ kia cướp, tuy nhiên nếu như bạn không muốn bản thân mình bị tổn thương, muốn công việc được giải quyết một cách thuận lợi và có một sự nghiệp tươi sáng, hãy là ngừoi thông minh trong giao tiếp, ứng xử với cấp trên, với đồng nghiệp và với khách hàng. Bên cạnh đó, hiểu rõ và biết cách nâng cao giá trị của bản thân, xây dựng cho mình một hình tượng chuyên nghiệp, khi cơ hội đến chỉ cần nhanh chóng nắm bắt, bạn sẽ trở thành một nhân vật sáng giá, không ai có thể thay thế được nơi công sở.

Minh họa độc đáo, ví dụ cụ thể, cùng những lời khuyên hữu ích, Ứng xử thông minh, lập trình sự nghiệp là cuốn sách chứa đựng đầy đủ những bài học cần biết về ứng xử và xây dựng hình ảnh bản thân dành cho những nhân viên trẻ, những người mới đi làm trong môi trường công sở.',N'laptrinhsunghiep.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình Windows Form Và Web Form Với C#','35000',N'Sách gồm 3 phần:
Phần 1: Ứng dụng Windows form
Phần 2: Xây dụng ứng dụng quản lý bán hàng
Phần 3: Xây dụng ứng dụng quản lý tuyển sinh',N'winform.jpg', default,'6','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Người Trong Muôn Nghề: Ngành It Có Gì?','130000',N'"Học công nghệ thông tin rồi đi lắp máy tính với cài win dạo à?"

"Sao lại lao đầu vào cái nghề toàn số má với mấy dòng lệnh khó hiểu thế?"

"Dân làm máy tính vừa “đụt” vừa khô khan, ai yêu nổi, yêu nổi ai?"

"Lập trình khó lắm, chắc phải siêu sao toán mới học được."

"Làm công nghệ lương nghìn đô như bỡn!"

Đó chắc hẳn là những câu hội thoại, những lời đánh giá mà các bạn đang học/làm Công nghệ thông tin (CNTT) gặp phải ít nhất 1 lần trong đời, còn những người không theo học/làm CNTT từng nghĩ đến ít nhất 1 lần trong đời (trung thực với bản thân và thừa nhận đi!).

Trong quá trình thực hiện bộ sách hướng nghiệp cho các bạn trẻ, chúng tôi cũng không ngừng trăn trở: Ngành CNTT có thật sự như vậy không? Làm sao để giúp các bạn trẻ có được một cái nhìn toàn diện và khách quan nhất về lĩnh vực rộng lớn này? Những cuốn sách về CNTT hiện có trên thị trường thường là tài liệu nặng tính kỹ thuật dành cho dân chuyên ngành, hoặc những bài viết ngắn với thông tin khá chung chung, hoặc chỉ có góc nhìn từ một cá nhân nên thiếu tính đa chiều. Vậy là nhóm độc giả nằm “lưng chừng” như những bạn học sinh cấp 3, sinh viên Đại học và các bậc phụ huynh đang quan tâm, muốn tìm hiểu về ngành CNTT bị bỏ mặc “bơ vơ”, biết đọc gì đây?',N'nguoitrongmuonnghe.jpg', default,'10','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Code Dạo Kí Sự - Lập Trình Viên Đâu Phải Chỉ Biết Code','35000',N'Nếu các bạn có đọc các blog về lập trình ở Việt Nam thì có lẽ cái tên Tôi đi code dạo không có gì quá xa lạ đối với các bạn.

Về tác giả của blog Tôi đi code dạo, anh tên thật là Phạm Huy Hoàng, một Developer Full Stack, cựu sinh viên trường FPT University, hiện tại anh đang học Thạc sĩ Computer Science tại Đại học Lancaster ở Anh (học bổng $18000). Trước khi qua Xứ Sở Sương Mù, anh đã từng làm việc tại FPT Software và ASWIG Solutions.',N'codedao.jpg', default,'9','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Chạy Đua Với Robot','35000',N'Nhân loại đang trải qua một cuộc cách mạng khác trong cách loài người làm việc và kiếm sống – và một lần nữa, cuộc cách mạng này lại đốt bỏ những điều tưởng chừng hiển nhiên của quá khứ trong đống tro tàn lịch sử. Một lần nữa, công nghệ mới đã tạo tiền đề cho cách mạng. Nhưng thay vì là hạt giống, là máy dệt, hay là đầu máy hơi nước; động cơ của cuộc cách mạng này là công nghệ kỹ thuật số và robot.',N'chayduavoirobot.jpg', default,'1','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Hello World - Làm Người Trong Kỷ Nguyên Máy Móc','35000',N'“Hello World” là một đoạn mang tính nghi thức của những người học lập trình, nhiệm vụ đầu tiên của một người mới học là lập trình sao cho máy tính hiện ra cụm từ này. Nhưng đồng thời nó cũng là một lời nhắc nhở về thời khắc của cuộc đối thoại giữa con người và máy tính trong kỷ nguyên máy móc, đánh dấu sự khởi đầu của một mối quan hệ mà một bên không thể tồn tại nếu thiếu bên kia.',N'helloword.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'AI - Trí Tuệ Nhân Tạo - 101 Điều Cần Biết Về Tương Lai','35000',N'Chính xác thì AI - trí tuệ nhân tạo là gì?
• Cách mạng Công nghiệp Lần thứ Tư là gì và nó liên quan đến trí tuệ nhân tạo như thế nào?
• Trí tuệ nhân tạo sẽ làm biến đổi những ngành nghề nào và biến đổi ra sao?
• Trí tuệ nhân tạo đang thay đổi thị trường lao động và việc làm theo hướng nào?
• Robot, xe hơi tự hành và cuộc sống của chúng ta?
• Cuộc chạy đua trí tuệ nhân tạo của các công ty công nghệ lớn
• Liệu trí tuệ nhân tạo có thể giúp chúng ta đạt được hoà bình thế giới? Hay chúng có khơi mào cho một cuộc chiến tranh công nghệ?
• Ta có thể chuẩn bị gì cho kỉ nguyên AI?',N'ai.jpg', default,'20','6','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Huyễn Tưởng Về Trí Tuệ Nhân Tạo','100000',N'Loài người đang bước vào kỷ nguyên máy móc, thời đại của Dữ liệu lớn, chứng kiến những khả năng siêu phàm mà máy tính đạt được: sở hữu bộ nhớ hoàn hảo, khả năng thu thập, xử lý và truy xuất lượng thông tin khổng lồ với tốc độ nhanh chóng mặt. Điều này đã khiến nhiều người lo sợ cho tương lai của nhân loại, một nỗi sợ hãi được bồi thêm và kích động bởi hàng loạt tên sách và phim ảnh giật gân.

Nhưng, bằng những lập luận, bằng chứng thông minh, dí dỏm từ các ví dụ thực tiễn trong kinh tế, chính trị, thống kê xã hội học, Gary Smith sẽ chứng minh cho chúng ta thấy, nỗi lo sợ đó đầy màu sắc huyễn tưởng.',N'huyentuongvetrituenhantao.jpg', default,'2','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Phân Tích Dữ Liệu Với R (Tái Bản 2019)','35000',N'Cuốn sách bạn đang cầm trên tay là một nổ lực nhằm giới thiệu các phương pháp phân tích mô hình và thống kê phổ biến. các phương pháp gồm mô hình hồi qui tuyết tính, hồi qui logistic, phân tích tổng hợp (meta - anlysis), mô hình phân tích sống còn (survival anlysis), phương pháp phân tích chuỗi dữ liệu theo thời gian (time series data) phương pháp bayes, phương pháp bootstrap, v.v.. Với một nội dung khá rộng như thế, cuốn sách này sẽ giúp ích cho các nhà nghiên cứu, giảng viên cao đẳng và đại học, sinh viên, hay bất cứ ai muốn học về thống kê và phương pháp phân tích dữ liệu.',N'dulieur.jpg', default,'18','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'AI Trong Marketing','35000',N'Trong những năm gần đây, AI đã thúc đẩy sự phát triển nhảy vọt của các phương thức kinh doanh. Khi mà tối ưu hóa, tự động hóa quy trình sản xuất và hậu cần đang trở thành trọng tâm của Công nghiệp 4.0, AI ngày càng mở rộng phạm vi ảnh hưởng khi xâm nhập vào các quy trình quản lý, lập kế hoạch trong marketing và bán hàng, từ đó tạo tiền đề để công ty hướng đến ứng dụng dữ liệu và tự động hóa.

Trong cuốn sách “AI trong Marketing”, Peter Gentsch sẽ cung cấp cho chúng ta những thông tin về lịch sử phát triển của AI, cũng như cách áp dụng nó vào các lĩnh vực như thu thập dữ liệu khách hàng và ước lượng rủi ro, từ đó tối ưu hóa hiệu quả kinh doanh và đem lại lợi nhuận lớn nhất cho doanh nghiệp.',N'aitrongmarketting.jpg', default,'20','5','1');
-- end Sách Lập Trình





go
create table ChiTietDonHang
(
	MaDonHang int,
	MaSach int,
	primary key(MaDonHang, MaSach),
	SoLuong int ,
	DonGia decimal,
	foreign key (MaDonHang) references DonHang(MaDonHang) on delete cascade on update cascade,
	foreign key (MaSach) references Sach(MaSach) on delete cascade on update cascade,
)
go
insert into ChiTietDonHang (MaDonHang, MaSach, SoLuong, DonGia) values (1,1,2,400000);
insert into ChiTietDonHang (MaDonHang, MaSach, SoLuong, DonGia) values (1,2,2,400000);
insert into ChiTietDonHang (MaDonHang, MaSach, SoLuong, DonGia) values (1,3,2,400000);
go
create table ThamGia
(
	MaSach int,
	MaTacGia int,
	primary key(MaSach, MaTacGia),
	VaiTro nvarchar(50),
	ViTri nvarchar(50),
	foreign key (MaSach) references Sach(MaSach) on delete cascade on update cascade,
	foreign key (MaTacGia) references TacGia(MaTacGia) on delete cascade on update cascade,
)
go
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (1, 1, N'Biên Soạn', 'Nhân Viên');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (2, 4, N'Biên Kiện', 'Nhân Viên');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (3, 2, N'Thiết Kế', 'Giám Sát');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (4, 4, N'CEO', 'Nhân Viên');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (5, 2, N'Quản Lý', 'Giám Đốc');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (3, 1, N'Thiết Kế', 'Nhân Viên');
-- ============================== cập nhật thêm csdl
Create table NhanVien
(
	TaiKhoanNV varchar(50) primary key,
	MatKhauNV varchar(50) not null,
	TenNhanVien nvarchar(50) not null,
	NgaySinh Date not null,
	GioiTinh nvarchar(10) null,
	Email varchar(50) null unique, -- email không được trùng
	SoDienThoai varchar(10) not null,
	QueQuan nvarchar(500) not null,
	Quyen int not null,
	TrangThai int default(0),

)
go
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin@gmail.com', '0971010281', N'Đà Nẵng',1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin2', 'admin123', 'Nhân Viên Giao Hàng', '2/2/1999', N'Nam', 'admin2@gmail.com', '0971010281', N'Đà Nẵng',2);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin3', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin3@gmail.com', '0971010281', N'Đà Nẵng',1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('adm', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin4@gmail.com', '0971010281', N'Đà Nẵng',1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin5', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin5@gmail.com', '0971010281', N'Đà Nẵng',1);
go
	--Bảng Phiếu Nhập--
Create table PhieuNhap
(
	MaPhieuNhap int identity(1,1) primary key,
	TenNhaCungCap int not null,
	TaiKhoanNV varchar(50) not null,
	NgayNhapKho date  null default(getdate()), -- lấy ngày nhập tự động hôm dó --
	ThanhTien money not null,
		
	-- các khóa ngoại--
	foreign key (TaiKhoanNV) references NhanVien(TaiKhoanNV) on update cascade on delete cascade,
)
go
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('1', 'admin', '7/7/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap,  TaiKhoanNV, NgayNhapKho, ThanhTien) values ('2', 'admin', '3/2/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('1', 'admin', '8/1/2019', '4000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('4', 'admin', '2/2/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('3', 'admin', '3/7/2018', '8000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('1', 'admin', '7/7/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap,  TaiKhoanNV, NgayNhapKho, ThanhTien) values ('6', 'admin', '8/9/2010', '8000000');
insert into PhieuNhap (TenNhaCungCap,  TaiKhoanNV, NgayNhapKho, ThanhTien) values ('5', 'admin', '3/4/2008', '8000000');
go
	--Bảng Chi Tiết Phiếu Nhập--
Create table ChiTietPhieuNhap
(
	MaPhieuNhap int not null,
	MaSach int not null,
	SoLuongSachNhap int not null,
		check (SoLuongsachNhap >=0 ),
	GiaSachNhap money not null,
	ThanhTien money null, -- mặc định để trống sau code thành tiền = số lượng * giá sách nhập --
	-- các khóa --
	primary key (MaPhieuNhap, MaSach),

	foreign key (MaPhieuNhap) references PhieuNhap(MaPhieuNhap) on update cascade on delete cascade,
	foreign key (MaSach) references Sach(MaSach) on update cascade on delete cascade,
)
go
insert into ChiTietPhieuNhap (MaPhieuNhap, MaSach, SoLuongSachNhap, GiaSachNhap) values (1,1, 5, 180000);
insert into ChiTietPhieuNhap (MaPhieuNhap,MaSach, SoLuongSachNhap, GiaSachNhap) values (1,2, 40, 180000);
insert into ChiTietPhieuNhap (MaPhieuNhap,MaSach, SoLuongSachNhap, GiaSachNhap) values (2,1, 50, 180000);
go
-- Số lượng khi nhập kho
 create trigger Trg_SoLuong
 On ChiTietphieuNhap
 after insert 
 as
 begin
	update Sach
	Set SoLuongTon = SoLuongTon + (select SoLuongSachNhap from inserted where MaSach= Sach.MaSach)
	from Sach
	Join inserted
	On Sach.MaSach = inserted.MaSach
End
-- Trigger cập nhật số lượng sách khi đặt hàng
go
 create trigger trg_DatHang
 on ChiTietDonHang
 after insert
 as
 begin
	update Sach
	set SoLuongTon = SoLuongTon - (select SoLuong from inserted where MaSach = Sach.MaSach)
	from Sach
	join inserted
	on Sach.MaSach = inserted.MaSach
end
go
 create trigger trg_HuyDatHang
 on ChiTietDonHang
 for delete
 as
 begin
	update Sach
	Set SoLuongTon = SoLuongTon + 
		(select SoLuong from deleted where MaSach=Sach.MaSach)
		from Sach
		join deleted
		on Sach.MaSach = deleted.MaSach
end
go
 create trigger trg_CapNhatDatHang
 on ChiTietDonHang
 after update
 as
 begin
	update Sach
	set SoLuongTon = SoLuongTon - 
	(select SoLuong from inserted where MaSach = Sach.MaSach) +
	(select SoLuong from deleted where maSach = Sach.MaSach)
	from Sach
	join deleted
	on Sach.MaSach = deleted.MaSach
end
-- Trigger thêm số lượng sách mua trong bảng sách
go
 create trigger trg_SoLuongDaBan
 on ChiTietDonHang
 after insert
 as
 begin
	update Sach
	set SoLuongDaBan = SoLuongDaBan + (select SoLuong from inserted where MaSach = Sach.MaSach)
	from Sach
	join inserted
	on Sach.MaSach = inserted.MaSach
end
go
 create trigger trg_Tru_SoLuongDaBan
 on ChiTietDonHang
 after delete
 as
 begin
	update Sach
	set SoLuongDaBan = SoLuongDaBan - (select SoLuong from deleted where MaSach = Sach.MaSach)
	from Sach
	join deleted
	on Sach.MaSach = deleted.MaSach
end
