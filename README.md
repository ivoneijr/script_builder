# script_builder

Ruby code to construct a road map to "create table" (PostgreSQL) from a JSON file with an exported schema from an ODBC database, then the relationship "from-to" type of data is:

CLARION TO POSTGRES TYPES

"decimal"     = numeric(p, s)
"char"        = char
"integer"     = integer
"tinyint"     = integer
"date"        = date
"time"        = time with time zone
"longvarchar" = character varying
