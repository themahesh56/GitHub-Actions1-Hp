%dw 2.0
output application/java
---
(now() as String {format: "yyyy-MM-dd'T'HH:mm:ss"} >> "UTC") as DateTime 