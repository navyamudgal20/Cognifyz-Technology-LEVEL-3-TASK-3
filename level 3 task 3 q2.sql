#LEVEL 3
#TASK 3
#Q2. DETERMINE IF HIGHER PRICED REST ARE MORE LIKELY TO OFFER THESE SERVICES

SELECT
    'price range',
    COUNT(*) AS total_restaurants,
    SUM(CASE WHEN 'has online delivery' = 'Yes' THEN 1 ELSE 0 END) AS online_delivery_count,
    ROUND( (SUM(CASE WHEN 'has online delivery' = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS online_delivery_percent,
    
    SUM(CASE WHEN 'has table booking' = 'Yes' THEN 1 ELSE 0 END) AS table_booking_count,
    ROUND( (SUM(CASE WHEN 'HAS TABLE BOOKING' = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS table_booking_percent

FROM
    COGNIFYZ
GROUP BY
    'price range'
ORDER BY
    'price range';
