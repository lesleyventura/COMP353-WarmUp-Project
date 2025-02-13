SELECT 
    L.LocationID,
    L.Name,
    L.Address,
    L.City,
    L.Province,
    L.PostalCode,
    L.Phone,
    L.WebAddress,
    L.Type,
    L.Capacity,
    CONCAT(P.FirstName, ' ', P.LastName) AS GeneralManager
    