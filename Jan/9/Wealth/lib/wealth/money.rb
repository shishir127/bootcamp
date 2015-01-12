module Wealth
  #manipulates the money in terms of rupees and paisa
  class Money
    attr_reader :rupees, :paisa
    def initialize(rupees=0, paisa=0)
      @rupees = rupees.to_i
      @paisa = paisa.to_i
      add_overflow_from_paisa_to_rupees
    end

    def add_overflow_from_paisa_to_rupees
      @rupees += (@paisa / 100)
      @paisa %= 100
    end

    def amount_in_rupees
      @rupees + (@paisa / 100.0)
    end

    def amount_in_paisa
      (100 * @rupees) + @paisa
    end 

    def +(money)
      Money.new(@rupees + money.rupees, @paisa + money.paisa)
    end

    def ==(money)
      (@rupees == money.rupees) && (@paisa == money.paisa)
    end

    def hash
      [@rupees, @paisa].hash
    end
  end
end