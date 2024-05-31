select 
	"CityName",
	"Username"
from "City" c
	full join "Customer" cu	on c."Id" = cu."CityId";

select 
	"CityName",
	"RestaurantName",
	"CourierName",
	"Username"
from "City" c 
	inner join "Restaurant" r ON c."Id" = r."CityId"
	inner join "DeliveryCourier" dc on c."Id" = dc."CityId"
	inner join "Customer" c2 ON c."Id" = c2."CityId" 
where c."CityName" = 'Osijek';

select 
	"ItemName",
	"ItemPrice",
	"CategoryName",
	"CategoryType"
from "MenuItem" mi 
	left join "MenuItemCategory" mic on mi."MenuItemCategoryId" = mic."Id" 
where "CategoryName" = 'Pizza';

