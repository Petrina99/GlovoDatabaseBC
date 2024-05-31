create table "City" (
	"Id" SERIAL primary key not null,
	"CityName" text
);

create table "Restaurant" (
	"Id" SERIAL primary key not null,
	"RestaurantName" text not null,
	"RestaurantAddres" text,
	"RestaurantType" text,
	"CityId" int,
	constraint "FK_Restaurant_City_CityId"
		foreign key ("CityId")
		references "City"("Id")
		on delete set NULL
);

create table "DeliveryCourier" (
	"Id" SERIAL primary key not null,
	"CourierName" text not null,
	"Age" smallint not null,
	"Rating" decimal,
	"CityId" int,
	constraint "FK_DeliveryCourier_City_CityId"
		foreign key ("CityId")
		references "City"("Id")
		on delete set NULL
);

create table "Customer"(
	"Id" SERIAL primary key not null,
	"Username" text not null,
	"Email" text not null,
	"CityId" int,
	constraint "FK_Customer_City_CityId"
		foreign key ("CityId")
		references "City"("Id")
		on delete set NULL
);

create table "FoodOrder"(
	"Id" SERIAL primary key not null,
	"Price" decimal not null,
	"OrderDate" timestamp,
	"RestaurantId" int,
	"CustomerId" int,
	"DeliveryCourierId" int,
	constraint "FK_FoodOrder_Restaurant_RestaurantId"
		foreign key ("RestaurantId")
		references "Restaurant"("Id")
		on delete set null,
	constraint "FK_FoodOrder_Customer_CustomerId"
		foreign key ("CustomerId")
		references "Customer"("Id")
		on delete set null,
	constraint "FK_FoodOrder_DeliveryCourier_DeliveryCourierId"
		foreign key ("DeliveryCourierId")
		references "DeliveryCourier"("Id")
		on delete set NULL
);

create table "MenuItemCategory"(
	"Id" SERIAL primary key not null,
	"CategoryName" text not null,
	"CategoryType" text not null,
	"RestaurantId" int,
	constraint "FK_MenuItemCategory_Restaurant_RestaurandId"
		foreign key ("RestaurantId")
		references "Restaurant"("Id")
		on delete set NULL
);

create table "MenuItem"(
	"Id" SERIAL primary key not null,
	"ItemName" text not null,
	"ItemPrice" decimal not null,
	"MenuItemCategoryId" int,
	"RestaurantId" int,
	constraint "FK_MenuItem_MenuItemCategory_MenuItemCategoryId"
		foreign key ("MenuItemCategoryId")
		references "MenuItemCategory"("Id")
		on delete set null,
	constraint "FK_MenuItem_Restaurant_RestaurantId"
		foreign key ("RestaurantId")
		references "Restaurant"("Id")
		on delete set NULL
);

create table "MenuItemsOrder"(
	"Id" SERIAL primary key not null,
	"MenuItemId" int,
	"OrderId" int,
	constraint "FK_MenuItemsOrder_MenuItem_MenuItemId"
		foreign key ("MenuItemId")
		references "MenuItem"("Id")
		on delete set null,
	constraint "FK_MenuItemsOrder_FoodOrder_FoodOrderId"
		foreign key ("OrderId")
		references "FoodOrder"("Id")
		on delete set NULL
);

drop table "City" , "Restaurant", "MenuItemsOrder"  , "FoodOrder"  
, "MenuItemCategory"  , "MenuItem"  , "DeliveryCourier"  , "Customer"  