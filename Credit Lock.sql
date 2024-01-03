Select * From EntityLock Where EntityType = 16

SELECT
ID
FROM dbo.Credit c WITH (NOLOCK)
WHERE c.EntityType = 3 AND c.EntityID = 
(SELECT
ID
FROM dbo.Customer (NOLOCK)
WHERE Code = '##PHGLPA01') -- bazooka customer code here