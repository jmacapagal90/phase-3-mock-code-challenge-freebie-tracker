class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.belongs_to :company ##this sets the company_id of the company which freebie is from/belongs to
      t.belongs_to :dev ##this sets the dev_id of the dev whom freebie belongs to
    end
  end
end
