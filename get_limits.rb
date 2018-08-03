$LOAD_PATH << '.'

require 'util' 

  def get
    response = Util.get_limits
    pp response
  end

get
