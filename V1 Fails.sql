SELECT * FROM dbo.EDIInOutbound WITH (NOLOCK) 
WHERE [Type]=204 and PartnerEDICode = 'EMEMPERPOL' and ShipmentId LIKE '%4517869912%'
