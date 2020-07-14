class CreateSpecialists < ActiveRecord::Migration[6.0]
  def change
    create_table :specialists  do |t|
      t.text :name

      t.timestamps
    end

    Specialist.create :name => 'Олеся Куралеся'
    Specialist.create :name => 'Валя Челканова'
    Specialist.create :name => 'Маша Хайер'
  end
end
