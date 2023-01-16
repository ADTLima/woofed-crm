class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :deal, null: true, index: true
      t.references :contact, null: true, index: true
      t.references :account, null: false, foreign_key: true
      t.references :event_kind, null: false, foreign_key: true

      # t.references :record, polymorphic: true, null: false
      t.datetime :due, null: true
      t.boolean :done, null: true
      t.datetime :done_at, null: true
      t.boolean :from_me, null: true
      t.jsonb :custom_attributes, default: {}

      t.timestamps
    end
  end
end
