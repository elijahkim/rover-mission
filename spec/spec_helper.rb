require "pry"
require_relative "../app"

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
