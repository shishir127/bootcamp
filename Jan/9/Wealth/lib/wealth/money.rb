module Wealth
  #manipulates the money in terms of rupees and paisa
  class Money
    attr_reader :rupees, :paisa
    def initialize(rupees=0, paisa=0)
      @rupees = rupees.to_i
      @paisa = paisa.to_i
      truncate
    end

    def truncate
      @rupees += (@paisa / 100)
      @paisa %= 100
    end

    def amountInRupees()
      @rupees + (@paisa / 100.0)
    end

    def amountInPaisa()
      (100 * @rupees) + @paisa
    end

    def +(money)
      Money.new(@rupees + money.rupees, @paisa + money.paisa)
    end

    def ==(money)
      (@rupees == money.rupees) && (@paisa == money.paisa)
    end
  end
end