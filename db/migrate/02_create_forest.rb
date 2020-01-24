class CreateForest < ActiveRecord::Migration[5.2]
    
    def change
        create_table :forests do |t|
            # t.string :name
            t.string :location
            t.float :size
            # LIMIT 10
        end
        # add_index :forests :location, unique: true
    end


end
