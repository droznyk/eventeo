class CreateEventsWithTitle < ActiveRecord::Migration[5.0]
  def change
    create_table :events_with_titles do |t|
      t.string :title

      t.timestamps
    end
  end
end
