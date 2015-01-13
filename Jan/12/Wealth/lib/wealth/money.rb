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
  end
end