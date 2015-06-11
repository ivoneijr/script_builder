require 'json'
file = File.read('produto.json')
data = JSON.parse(file)

@table_name = data['name']
@columns = ''
@script

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



@script = "CREATE TABLE #{@table_name} ( #{@columns} )"
p @script
