module Wealth
  #manipulates the money in terms of rupees and paisa
  class Money
    def initialize(rupees=0, paisa=0)
      @paisa = paisa.to_i + rupees.to_i * 100
    end

    def amount_in_rupees
      @paisa / 100.0
    end

    def amount_in_paisa
      @paisa
    end 

    def +(money)
      Money.new(0, @paisa + money.amount_in_paisa)
    end

    def -(money)
      Money.new(0, @paisa - money.amount_in_paisa)
    end

    def ==(money)
      self.amount_in_paisa == money.amount_in_paisa
    end

    def hash
      [@rupees, @paisa].hash
    end

    def to_s
      (@paisa / 100).to_s + " rupees, " + (@paisa % 100).to_s + " paisa"
    end
  
  end
end