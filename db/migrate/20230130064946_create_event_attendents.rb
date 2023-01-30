class CreateEventAttendents < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendents do |t|

      t.timestamps
    end
  end
end
