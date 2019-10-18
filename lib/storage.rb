class Storage
  def initialize
    @store = {}
  end
  def get_value(key)
    @store[key]
  end
  def set_value(key, value)
    @store[key] = value
  end
end