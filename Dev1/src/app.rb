# app.rb
require 'webrick'
require 'mysql2'

server = WEBrick::HTTPServer.new(
  :Port => 8080,
  :DocumentRoot => File.join(File.dirname(__FILE__), 'html')
)

trap('INT') { server.shutdown }

server.start
