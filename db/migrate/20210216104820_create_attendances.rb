class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :event, index: true, null: false
      t.string :stripe_customer_id, null: false, default: ""
      
    end
  end
end
