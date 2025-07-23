CREATE PROCEDURE sp_calculate_ftp_rate
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert a new FTP rate for each product type based on avg loan interest rate (dummy logic)
    INSERT INTO ft_ftp_rates (product_type, ftp_rate, effective_date)
    SELECT
        p.product_type,
        ROUND(AVG(l.interest_rate) * 0.9, 2) AS ftp_rate,
        CAST(GETDATE() AS DATE)
    FROM fact_loan l
    INNER JOIN dim_product p ON l.product_id = p.product_id
    GROUP BY p.product_type;
END;
