-- 1. Get all customers and their addresses.
SELECT "first_name", "last_name", "addresses"."street" from "customers"
JOIN "addresses" ON "addresses"."customer_id" = "customers"."id";

-- 2. Get all orders and their line items (orders, quantity and product)
SELECT "orders"."order_date", "products"."description", "line_items"."order_id", "line_items"."quantity"  FROM "products"
JOIN "line_items" ON "products"."id"="line_items"."product_id" 
JOIN "orders" ON "orders"."id"="line_items"."order_id";