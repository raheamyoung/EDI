SELECT  PartnerEDICode ,
        COUNT(*) 'Number of Rejected Transactions'
FROM    EDIInOutbound
WHERE   [state] = 22
		AND Type = 210
        AND CreateDate >= REPLACE(CONVERT(VARCHAR(19), DATEADD(DAY, -14, GETDATE()), 120),'-', '/')
GROUP BY PartnerEDICode
ORDER BY COUNT(*) DESC 