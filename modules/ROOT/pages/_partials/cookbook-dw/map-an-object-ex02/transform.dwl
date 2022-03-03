output application/csv
---
valuesOf(
    payload
        groupBy ((item, index) -> (
            item.FirstName ++ item.LastName ++ item.Age))
        mapObject ((value, key, index) ->
            (index): {
                "Sr.No.": value."Sr.No." joinBy ":",
                "FirstName": value.FirstName[0],
                "LastName": value.LastName[0],
                "Age": value.Age[0],
                "Team Name": value."Team Name" joinBy ":",
                "Role": value.Role joinBy ":"
            })
)
