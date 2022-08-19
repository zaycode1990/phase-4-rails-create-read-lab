class ChangeDataTypeForPrice < ActiveRecord::Migration[6.1]
  def self.up
    change_table :plants do |t|
      t.change :price, :decimal
    end
  end

def self.down
  change_table :plants do |t|
    t.change :price, :integer
  end
end

end
