module Wealth
  class MoneyFormatter

    def initialize(money)
      @money = money
      @format = "Sum = "
    end

    def output_in_rupees
      @format + "Rs. " + @money.amount_in_rupees.to_s
    end

    def output_in_paisa
      @format + @money.amount_in_paisa.to_s + " paisa"
    end

  end
end