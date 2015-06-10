require 'json'

file = File.read('produto.json')
data = JSON.parse(file)

table_name = data['name']
column = data['columns'].first
col_name = column['name']
col_type = column['type']
col_length = column['length']

col_precision = column['precision']
col_scale = column['scale']

col_nullable = column['nullable']


script = "CREATE TALBE #{table_name} ( #{col_name} #{col_type}(#{col_length}) #{col_nullable})"

 p script



def create
  p 'hi'
end
# GUIA
# CREATE TABLE produtos
# (
#   codproduto character varying(10) NOT NULL
# )


# data['columns'].each do |column|

#   puts column['name']
#   puts column['type']
#   puts column['length']
#   puts column['precision']
#   puts column['scale']
#   puts column['nullable']
# end




