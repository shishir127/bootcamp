module Wealth
  class MoneyFormatter

    def initialize
    end

    def rupee_output(money)
      "Sum = Rs. " + money.to_s
    end

    def paisa_output(money)
      "Sum = " + money.to_s + " paisa"
    end

  end
end