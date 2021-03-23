class AddKeywordsSizeToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :signups, :camper, :string
    add_column :signups, :activity, :string
  end
end
