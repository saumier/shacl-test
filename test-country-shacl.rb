# bundle exec ruby test-country.rb

require 'shacl'
require 'linkeddata'

puts "starting..."
graph = RDF::Graph.load("country-shacl.ttl")
shacl = SHACL.open("https://www.w3.org/ns/shacl-shacl") #, { logger: Logger.new(STDOUT) })
report = shacl.execute(graph)
puts report.conform?
puts report.to_s
#=> ValidationReport(conform?, results*)