SELECT * FROM dbo.DocumentInvoiceDeliveryPath


INSERT dbo.DocumentInvoiceDeliveryPath
        ( LocationName ,
          FolderName ,
          FormatString
        )
VALUES  ( 'Technical Traffic' , -- LocationName - varchar(100)
          '\\coyotelogistics.local\data\edifiles\TechnicalTraffic\images' , -- FolderName - varchar(100)
          '{0}-{1}.PDF'  -- FormatString - varchar(100)
        )