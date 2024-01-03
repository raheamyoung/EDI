select l.id, l.LoadDateStripped, c.code, c.name from load l (NOLOCK)
join LoadCustomer lc (NOLOCK) on lc.loadid = l.id and lc.main = 1 
join customer c (NOLOCK) on c.id = lc.CustomerID
where 
l.StateType = 1 and
l.loaddate > '2017' and
l.source = 2 and
l.mode = 1 and
l.EquipmentType in ('V','R','V,R') and
l.EquipmentLength = 0
