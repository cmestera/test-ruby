require 'simplecov'
require 'simplecov-rcov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::RcovFormatter
]

SimpleCov.start

require_relative '../bin/string_ops'
require_relative '../bin/string_ops_2'
