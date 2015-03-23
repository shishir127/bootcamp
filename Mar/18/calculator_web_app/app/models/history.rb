class History < ActiveRecord::Base

  self.table_name = "history"

  validates :command, presence: true

  def self.get_last_n_operations(n)
    History.last(n)
  end

end