
class Week3
  A_CONSTANT = "I'm a class CONSTANT"
  
  def initialize
    @name = 'Brandon'
  end

  def name
    @name
  end
  
  def name= new_name
    @name = new_name
  end
  
  def halve array
    array.first(array.length/2)
  end
  
  def halve! array
    array.slice!(array.length/2..-1)
    return array
  end
  
  def even? number
    number.to_i.even?
  end
  
  def configure *new_config
    default_config = {:path => './', :version  => '0.1.0', :mode => 'production'}
    if (new_config[0].nil?) then
      default_config
    else
      default_config.merge(new_config[0])
    end
  end
  
  def run_me
    num = 3
    yield(num)
  end
  
  def each_odd int_array
    odd_array = Array.new
    
    int_array.each do |value|
      yield(value, odd_array) unless value.even? 
    end
    
    odd_array
  end
end
