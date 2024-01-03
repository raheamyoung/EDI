SELECT *
FROM dbo.EDIPartnerFTPInfo AS epfi WITH ( NOLOCK )
WHERE Folder = ''
AND [Enabled] = 1