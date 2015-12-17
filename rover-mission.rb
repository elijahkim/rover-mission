require_relative "app"

ARGV.each do |arg|
  app = App.new(File.read(arg))
  puts app.run
end
