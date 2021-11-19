class AddNotificationPresenceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :notification_presence, :string, :default => "mail"
  end
end
