class CreateScraps < ActiveRecord::Migration[5.1]
  def change
    create_table :scraps do |t|
      t.string :caption
      t.string :image_url

      t.timestamps
    end
  end
end
