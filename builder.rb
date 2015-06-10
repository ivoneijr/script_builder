class Builder
  require 'json'
  file = File.read('produto.json')
  data = JSON.parse(file)


  # attr_accessor :name
  table_name = data['name']
  columns = ""

  data['columns'].each do |column|

    name = column['name']
    type = column['type']
    length = column['length']
    precision = column['precision']
    scale = column['scale']
    nullable = column['nullable']

    columns += "#{name} #{type}(#{length}) #{nullable} "
  end

  @script = "CREATE TABLE #{table_name} ( #{columns} )"
  p @script
end

