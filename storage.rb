require 'json'

class Storage
  def initialize(relative_path)
    @relative_path = relative_path
  end

  def preserve(data, file_name)
    File.write("./#{@relative_path}/#{file_name}", data.to_json)
  end

  def read(file_name)
    file = File.read("./#{@relative_path}/#{file_name}")
    data = JSON.parse(file)
  end
end