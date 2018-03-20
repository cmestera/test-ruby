require 'simplecov'
require 'simplecov-cobertura'

SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter

SimpleCov.start

require_relative '../bin/string_ops'
require_relative '../bin/string_ops_2'
