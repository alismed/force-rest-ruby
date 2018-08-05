$LOAD_PATH << '.'

require 'util' 

  def get
    response = Util.get_versions
    p response
  end

get
