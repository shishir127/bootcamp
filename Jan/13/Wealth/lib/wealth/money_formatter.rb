module Wealth
  class MoneyFormatter

    def initialize
    end

    def output(sum)
      "Sum = " + sum
    end

    def rupee_formatter(money)
      "Rs. " + money.to_s
    end

    def paisa_formatter(money)
      money.to_s + " paisa"
    end

  end
end