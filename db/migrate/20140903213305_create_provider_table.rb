class CreateProviderTable < ActiveRecord::Migration
  def change
    create_table :spree_providers do |t|
      t.string :name
      t.string :tel
      t.string :address
      t.timestamps
    end
  end
end
