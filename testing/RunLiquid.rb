
require 'liquid'
require 'json'

#puts 'template_path, parameters_path ?'

template_path = ARGV[0]

parameters_path = ARGV[1]

#template_path = gets.strip

template_path = 'output_views.liquid'

parameters_path = '../param_definitions/LDM_geo.json'

template = Liquid::Template.parse(File.read(template_path))

puts template.render(JSON.parse(File.read(parameters_path)))
