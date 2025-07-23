-- Add rate_type column to ft_ftp_rates table
ALTER TABLE ft_ftp_rates
ADD rate_type VARCHAR(50);

-- Update existing records with rate_type from dim_rate_type
UPDATE f
SET f.rate_type = rt.rate_type_name
FROM ft_ftp_rates f
INNER JOIN dim_rate_type rt ON f.rate_type_id = rt.rate_type_id;

-- Make rate_type NOT NULL after populating data
ALTER TABLE ft_ftp_rates
ALTER COLUMN rate_type VARCHAR(50) NOT NULL;