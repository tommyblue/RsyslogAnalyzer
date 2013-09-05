class Log < ActiveRecord::Base
  def self.table_name
    "SystemEvents"
  end

  self.primary_key = "ID"

  scope :last_50, -> { order("ID DESC").limit(50) }
end
