class PrettyCsv::Row

  attr_accessor :data, :index


  def self.set_methods headers
    headers.each do |header|
      define_method header.name do
        self.data.at(header.index)
      end
    end
  end


  def initialize(opts = {})
    @data = opts[:data]
    @index = opts[:index]
  end

end