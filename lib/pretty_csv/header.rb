class PrettyCsv::Header

  attr_accessor :name, :index


  def initialize(opts = {})
    @name = opts[:name].underscore.parameterize.underscore
    @index = opts[:index]
  end

end