class AddCommandToHistory < ActiveRecord::Migration
  create_table :history do |t|
    t.string :command
  end
end
