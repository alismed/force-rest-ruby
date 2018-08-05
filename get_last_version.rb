$LOAD_PATH << '.'

require 'util' 

  def get
    response = Util.get_last_version
    p response
  end

get
