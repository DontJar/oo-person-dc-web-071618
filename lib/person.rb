require "pry"

class Person

  # attr_accessor :bank_account, :happiness
  attr_reader :name, :happiness, :hygiene, :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def bank_account=(monies)

  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(buddy)
    self.happiness += 3
    buddy.happiness += 3
    return "Hi #{buddy.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(buddy, topic)
    if topic == "politics"
      self.happiness -= 2
      buddy.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      buddy.happiness += 1
      return "blah blah sun blah rain"
    else
      return 'blah blah blah blah blah'
    end
  end

  # def set_happiness
  #   self.happiness= 50
  #   # @happiness = 50
  # end

end

# binding.pry
# puts "hi"
# end
