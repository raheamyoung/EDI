create table #EMD214
(ID int, EDI int)
insert into #EMD214
select distinct edi.EntityID, edi.[type]
from EDIInOutbound edi (NOLOCK)
inner join [Load] ld (NOLOCK) on ld.ID=edi.EntityID
inner join LoadCustomer lcus (NOLOCK) on lcus.LoadID=ld.ID and lcus.Main=0 and lcus.CustomerID=44578
LEFT JOIN dbo.LoadStop AS ls WITH ( NOLOCK ) ON ls.LoadID = ld.id
left join TypeDetails tdprogress (NOLOCK) on tdprogress.TypeCategoryID=85 and tdprogress.id=ld.ProgressType
left join TypeDetails imdlprogress (NOLOCK) on imdlprogress.TypeCategoryID=182 and imdlprogress.ID=ld.ProgressType
where edi.[type]=214 and ls.UpdateDate >= REPLACE(CONVERT(VARCHAR(19), DATEADD(week, -1, GETDATE()), 120), '-', '/') and ld.ProgressType>=7 and ld.StateType=1 AND ls.Sequence = 2
select ld.ID, ld.LoadDate
, case when ld.Mode=1 then 'TL'
when ld.Mode=2 then 'LTL'
when ld.Mode=3 then 'IMDL'
else NULL end 'Mode'
, case when ld.mode in (1,2) then tdprogress.Code
when ld.Mode=3 then imdlprogress.Code else NULL end 'Progress'
, EMD.EDI
from [Load] ld (NOLOCK)
inner join LoadCustomer lcus (NOLOCK) on lcus.LoadID=ld.ID and lcus.Main=0 and lcus.CustomerID=44578
LEFT JOIN dbo.LoadStop AS ls WITH ( NOLOCK ) ON ls.LoadID = ld.id
left join TypeDetails tdprogress (NOLOCK) on tdprogress.TypeCategoryID=85 and tdprogress.id=ld.ProgressType
left join TypeDetails imdlprogress (NOLOCK) on imdlprogress.TypeCategoryID=182 and imdlprogress.ID=ld.ProgressType
left join #EMD214 EMD on EMD.ID=ld.ID
where ls.UpdateDate >= REPLACE(CONVERT(VARCHAR(19), DATEADD(week, -1, GETDATE()), 120), '-', '/') and ld.ProgressType>=(case when ld.mode=3 then 14 else 7 end)
and ld.StateType=1 AND ls.Sequence = 2 and EMD.EDI is NULL
Drop table #EMD214