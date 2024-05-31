insert into "City" ("CityName") values ('Osijek'),('Zagreb'),('Split'),('Rijeka');

insert into "Restaurant"  ("RestaurantName" , "RestaurantAddres" , "RestaurantType" , "CityId") 
values ('Corolla', 'adresa 2', 'pizzeria', 1), ('Rustika', 'adresa 3', 'pizzeria', 2),('kebab split', 'adresa 5', 'kebabdinica', 3);

insert into "DeliveryCourier"  ("CourierName" , "Age" , "Rating" , "CityId")
values('Mirko', 26, 4.5, 1),('Ivan', 29, 4.9, 3),('Mario', 35, 5.0, 4);

insert into "Customer"  ("Username" , "Email" , "CityId")
values ('markoosijek', 'markoos@mail.com', 1),('anasplit', 'anast@mail.com', 3);

insert into "MenuItemCategory"  ("CategoryName" , "CategoryType", "RestaurantId") 
values ('Pizza', 'Meat and pasta', 1), ('Grill', 'Meat', 1), ('Sandwiches', 'Meat and bread', 1);

insert into "MenuItem" ("ItemName", "ItemPrice", "MenuItemCategoryId", "RestaurantId")
values ('Pizza - cheese and ham', 9.50, 1, 1), ('Cevapi', 7.80, 1, 2);

insert into "FoodOrder" ("Price", "RestaurantId", "CustomerId", "DeliveryCourierId")
values (17.30, 1, 1, 1);

insert into "MenuItemsOrder" ("MenuItemId", "OrderId")
values (1, 1),(2, 1);