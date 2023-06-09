SELECT
  ROUND(
    (
      1 - (
        CAST(lidesired - lipurchased AS NUMERIC) / CAST(lidesired AS NUMERIC)
      )
    ) * 100
    , 2
  ) || '%' AS "Fulfillment"
from
  listitems;
-- SELECT ROUND((1 -(CAST(lidesired - lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)))*100, 2) AS "Fulfillment" from listitems ORDER BY "Fulfillment" DESC;
-- SELECT ROUND((1 -(CAST(lidesired - lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)))*100, 2) || '%' AS "Fulfillment" from listitems ORDER BY "Fulfillment" DESC;
-- SELECT ROUND((1 -(CAST(lidesired - lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)))*100, 2) AS "Fulfillment", '%' from listitems ORDER BY "Fulfillment" DESC;