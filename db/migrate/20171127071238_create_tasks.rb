class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp' # => http://theworkaround.com/2015/06/12/using-uuids-in-rails.html#postgresql
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
