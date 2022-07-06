SELECT
  x.idioma,
  COUNT(*) AS quant
FROM
  (
    SELECT
      CASE
        WHEN pa.idioma IS NULL THEN 'en'
        ELSE pa.idioma
      END AS idioma
    FROM
      prod_alt AS pa
  ) AS x
GROUP BY
  x.idioma
ORDER BY
  quant DESC