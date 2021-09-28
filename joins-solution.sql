-- 1. Get all customers and their addresses.
SELECT "first_name", "last_name", "addresses"."street" from "customers"
JOIN "addresses" ON "addresses"."customer_id" = "customers"."id";

-- 2. Get all orders and their line items (orders, quantity and product)
SELECT "orders"."order_date", "products"."description", "line_items"."order_id", "line_items"."quantity"  FROM "products"
JOIN "line_items" ON "products"."id"="line_items"."product_id" 
JOIN "orders" ON "orders"."id"="line_items"."order_id";

-- 3. Which warehouses have cheetos?
SELECT "warehouse"."warehouse" FROM "warehouse"
JOIN "warehouse_product" on "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "products"."id"="warehouse_product"."product_id"
WHERE "products"."description" = 'cheetos';

-- 4. Which warehouses have diet pepsi?
SELECT "warehouse"."warehouse" FROM "warehouse"
JOIN "warehouse_product" on "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "products"."id"="warehouse_product"."product_id"
WHERE "products"."description" = 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results. (This lists the order count but not name)
SELECT count("orders"."id") FROM "orders"
JOIN "addresses" on "orders"."address_id"="addresses"."id"
JOIN "customers" ON "customers"."id"="addresses"."customer_id" GROUP BY "customer_id"; 


-- 6. How many customers do we have?
SELECT count(*) from "customers";

-- 7. How many products do we carry?
SELECT count(*) from "products";