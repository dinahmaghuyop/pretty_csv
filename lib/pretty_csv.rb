require "pretty_csv/version"

module PrettyCsv

  def self.import(path)
    Table.new(path)
  end

end

require 'pretty_csv/table'
require 'pretty_csv/header'
require 'pretty_csv/row'