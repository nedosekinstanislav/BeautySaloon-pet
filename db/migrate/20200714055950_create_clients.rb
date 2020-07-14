class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :client  do |item|
      item.text :name
      item.text :phone
      item.text :datestamp
      item.text :specialist
      item.text :color

      item.timestamps
    end
  end
end
