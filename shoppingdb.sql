CREATE TABLE products(
	product_id int AUTO_INCREMENT PRIMARY KEY,
	product_name NVARCHAR(100) NOT NULL,
	product_des NVARCHAR(255) NOT NULL,
	product_price FLOAT NOT NULL,
	product_img_source VARCHAR(255) NOT NULL,
	product_type VARCHAR(100) NOT NULL,
	product_brand VARCHAR(100) NOT NULL
);

CREATE TABLE orders(
	order_id int AUTO_INCREMENT PRIMARY KEY,
	order_user NVARCHAR(100) NOT NULL,
    order_address NVARCHAR(255) NOT NULL,
	order_discount NVARCHAR(8) NOT NULL
);

CREATE TABLE orders_detail(
	order_id INT NOT NULL,
	product_id INT NOT NULL,
    product_price FLOAT NOT NULL,
    product_amount INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 11 Pro Max 512GB',N'Màn hình: 6.5", Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',43.990,'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 11 Pro Max 256GB',N'Màn hình: 6.5", Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',37.990,'https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-black-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xs Max 256GB',N'Màn hình: 6.5", Super Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 4 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',32.990,'https://cdn.tgdd.vn/Products/Images/42/190322/iphone-xs-max-256gb-white-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone X 256GB',N'Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',27.990,'https://cdn.tgdd.vn/Products/Images/42/190324/iphone-xs-256gb-white-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xs 64GB',N'Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 4 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',24.990,'https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gold-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xr 128GB',N'Màn hình: 6.1", Liquid Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',17.990,'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xr 128GB',N'Màn hình: 6.1", Liquid Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',17.990,'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 8 Plus 64GB',N'Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',16.590,'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 7 Plus 32GB',N'Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 3 GB, ROM: 32 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',12.490,'https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 7 32GB',N'Màn hình: 4.7", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 2 GB, ROM: 32 GB
Camera: 12 MP, Selfie: 7 MP',10.490,'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-600x600.jpg','cellphone',
'apple');
