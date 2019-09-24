# frozen_string_literal: true

class Duck
  def fly
    puts "#{self.class} flying"
  end
end

class Airplane
  def fly
    puts 'Airplane flying'
  end
end

class Whale
  def swim
    puts 'Whale Swimming'
  end
end

duck = Duck.new
airplane = Airplane.new
whale = Whale.new

begin
  # [duck, airplane, whale].each do |animal|
  #   animal.fly
  # end
  [duck, airplane, whale].each(&:fly)
rescue NoMethodError => e
  puts e
end
