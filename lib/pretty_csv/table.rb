module PrettyCsv

  class Table

    require 'csv'

    attr_reader :headers, :rows


    def initialize(path)
      @path = (path)
      @headers = []
      @rows = []

      read_csv
      set_headers
      set_rows
    end


    def read_csv
      @array = CSV.read(@path, :encoding => 'windows-1251:utf-8')
    end


    def set_headers
      header_row = @array.delete_at(0)

      header_row.each_with_index do |name, index|
        @headers << Header.new(:name => name, :index => index)
      end
    end


    def set_rows
      Row.set_methods @headers

      @array.each_with_index do |data, index|
        @rows << Row.new(:data => data, :index => index)
      end
    end


    def header_names
      @headers.map(&:name)
    end

  end

end

require 'pretty_csv/header'
require 'pretty_csv/row'

