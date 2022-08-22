%dw 2.0
output application/json
---
payload pluck (value,key)  -> {
  Test: {
    Key: key,
    Value: value
  }
}
