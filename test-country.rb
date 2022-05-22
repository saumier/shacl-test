# bundle exec ruby test-country.rb

require 'shacl'
require 'linkeddata'

puts "starting..."
graph = RDF::Graph.load("country.ttl")
shacl = SHACL.open("country-shacl.ttl")
report = shacl.execute(graph)
puts report.conform?
puts report.to_s
#=> ValidationReport(conform?, results*)