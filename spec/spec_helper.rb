require 'simplecov'
require 'simplecov-rcov'
require 'simplecov-cobertura'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::RcovFormatter,
  SimpleCov::Formatter::CoberturaFormatter
]

SimpleCov.start

require_relative '../bin/string_ops'
require_relative '../bin/string_ops_2'
