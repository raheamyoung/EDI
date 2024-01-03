SELECT  PartnerEDICode ,
        EDIShipmentId ,
        CreateDate ,
        TransactionTypeId ,
        [Description] ,
        *
FROM    dbo.EDIInboundTransactionFailure AS eitf
WHERE   EDIShipmentId LIKE '%4517869912%'
