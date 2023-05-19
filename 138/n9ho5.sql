SELECT
  pfirstname
  , plastname
  , pstate
  , pdob
FROM
  people
WHERE
  pdob BETWEEN '2000-01-01' AND '2010-12-31 23:59:59'
  AND pstate = 'CA';