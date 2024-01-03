SELECT DISTINCT Partnername FROM dbo.EDIPartnerFTPInfo AS epfi WHERE
Enabled = 1 and
Server like '%\\coyotelogistics.local\data\edifiles\cass%'


SELECT * FROM dbo.EDIPartnerFTPInfo
 WHERE server LIKE '%pride%'
 AND enabled = 1
 AND folder LIKE 'inbound'  

