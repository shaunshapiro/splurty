class AlterQuotesAddSource < ActiveRecord::Migration
  def change
  	add_column :quotes, :source_url, :string
  end
end
