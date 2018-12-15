class RenameServersToSocietyServers < ActiveRecord::Migration[5.2]
  def change
    rename_table :servers, :society_servers
  end
end
