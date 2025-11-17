
   --one way to define the model... configurations in the model file take priority
   
   {{config(materialized='view')}}
    SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM raw.customer