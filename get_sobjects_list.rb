$LOAD_PATH << '.'

require 'util' 

  def get
    response = Util.get_sobjects_list
    p response
  end

get
