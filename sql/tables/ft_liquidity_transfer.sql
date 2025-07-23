CREATE TABLE ft_liquidity_transfer (
    transfer_id INT PRIMARY KEY IDENTITY(1,1),
    source_product VARCHAR(50) NOT NULL,
    destination_product VARCHAR(50) NOT NULL,
    transfer_amount DECIMAL(18, 2) NOT NULL,
    transfer_date DATE NOT NULL
);
