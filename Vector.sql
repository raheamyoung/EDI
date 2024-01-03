SELECT  PartnerEDICode, Type, ID, Message, EntityID, CreateDate
FROM    dbo.EDIInOutbound AS eio
WHERE   [State] = 22
        AND Direction = 1
        AND CreateDate > '2018/8/13 00:00:00'
		AND PartnerEDICode <> 'NFIANJ'
		AND Type <> '204'

--State 22 is Rejected and State 6 is Conversion failed, NFIANJ is Mars Petcare. 

select EDIID, Code, Name from customer where EDIID = 'PSLC'
IN (
'ULTMSAOD',
'005070479TMAN',
'001981570',
'CHREVERGREEN',
'UPS',
'ULTMSBLUE'
)
'005070479TMAN',
'CHREVERGREEN',
'005070479TMAN',
'CHREVERGREEN',
'005070479TMAN',
'CHREVERGREEN'
)