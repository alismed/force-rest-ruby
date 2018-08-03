$LOAD_PATH << '.'

require 'util' 

  def get
    response = Util.get_limits
    p response
  end

get
