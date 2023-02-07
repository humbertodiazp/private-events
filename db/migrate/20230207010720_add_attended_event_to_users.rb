class AddAttendedEventToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :attended_event, null: false, foreign_key: {to_table: :events }
  end
end
