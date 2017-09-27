class RemoveImageUrlFromScraps < ActiveRecord::Migration[5.1]
	def change
		remove_column :scraps, :image_url, :string
  end
end
