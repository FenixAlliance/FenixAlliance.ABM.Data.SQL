-- Get all billingitemrecords
SELECT id, quantity, TotalAmountInUSD FROM billingitemrecord;

-- Update Billing Records with 0 items
UPDATE billingitemrecord
SET quantity = 1
WHERE quantity = 0;

-- Update Billing Records with 0 items
UPDATE billingitemrecord
SET TotalAmountInUSD = 1
WHERE TotalAmountInUSD = 0;