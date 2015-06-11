require 'json'
require 'pg'

file = File.read('produto.json')
data = JSON.parse(file)

@table_name = data['name']
@columns=''
@script

# Assert type between Clarion and PostgreSql
def assert_type(type, length, precision, scale)
  if type == 'longvarchar'
    return "character varying(#{length})"
  end

  if type == 'time'
    return "time with time zone"
  end

  if type == 'tinyint' || type == 'integer'
    return "integer"
  end

  if type == 'char'
    return "\"char\""
  end

  if type == 'decimal'
    return "numeric(#{precision},#{scale})"
  end

  if type == 'date'
    return "date"
  end

end

# iteration to form columns
data['columns'].each_with_index do |column, index|

  name      = column['name']
  type      = column['type']
  length    = column['length']
  precision = column['precision']
  scale     = column['scale']
  nullable  = column['nullable']

  formated_type = assert_type(type,length, precision, scale)
  nullable ? nullable = 'NOT NULL' : nullable = ''

  unless (index == data['columns'].size-1)
    @columns << "#{name} #{formated_type} #{nullable},"
  else
    @columns << "#{name} #{formated_type} #{nullable}"
  end

end

# Script content
@script = "CREATE TABLE #{@table_name} ( #{@columns} )"

# Create .sql file
out_file = File.new("create.sql", "w")
out_file.puts(@script)
out_file.close


# Connect to database and script excecute
# Test if database and table exsists
begin
  conn = PGconn.open(:dbname => 'db_from_script')
rescue
  p "Connected refused to database"
else
  p "Connected successful to database"
  begin
    conn.exec("SELECT 1 FROM #{@table_name}").getvalue(0,0)
  rescue
    conn.exec(@script)
    p "Script success"
  else
    p "#{@table_name} already exists"
  end
end

