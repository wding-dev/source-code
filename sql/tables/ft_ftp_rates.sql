CREATE TABLE ft_ftp_rates (
    rate_id INT PRIMARY KEY IDENTITY(1,1),
    product_type VARCHAR(50) NOT NULL,
    ftp_rate DECIMAL(5, 2) NOT NULL,
    effective_date DATE NOT NULL
);
