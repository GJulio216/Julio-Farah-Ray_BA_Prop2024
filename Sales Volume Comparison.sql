SELECT od.order_date_DateOrders,
    od.Order_Country,
    od.Order_Item_Cardprod_Id,
    od.Order_State,
    od.Sales,
    od.Order_Zipcode,
    pd.Product_Card_Id,
    pd.Category_Name
    

FROM OrderData AS od
    LEFT JOIN ProductData AS pd
        ON od.Order_Item_Cardprod_Id = pd.Product_Card_Id

WHERE (Order_Country = 'Estados Unidos')
    OR (Order_Country = 'Alemania')
    OR (Order_Country = 'Francia')
    
--GROUP BY Order_State

ORDER BY Order_State asc 


