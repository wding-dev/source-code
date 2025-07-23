CREATE PROCEDURE sp_generate_liquidity_report
AS
BEGIN
    SET NOCOUNT ON;

    -- Simple aggregation of liquidity transfers by source and destination product
    SELECT
        source_product,
        destination_product,
        SUM(transfer_amount) AS total_transfer_amount,
        CAST(GETDATE() AS DATE) AS report_date
    FROM ft_liquidity_transfer
    GROUP BY source_product, destination_product;
END;
