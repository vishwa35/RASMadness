class Comps < ActiveRecord::Migration[5.1]
  def change
    # TODO: Add keys in the users table for name, points, and team affiliation

    create_table :chaos_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :bor_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :ats_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :drd_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :dd_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :gateway_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :rcr_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :masti_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :mayhem_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :rangeelo_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :sanedo_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :ccr_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :space_city_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :mania_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :rodeo_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :royalty_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :r2b2_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :gwa_preds do |t|
      t.integer :uid, null: false
      t.string :first, null: false
      t.string :second, null: false
      t.string :third, null: false
      t.integer :points, default: 0
      t.timestamps null: false
    end

    create_table :users do |t|
      t.string :email, null: false
      t.integer :points
      t.string :full_name, null: false
      t.string :team_affiliation
      t.boolean :admin, default: false
      t.boolean :predictions_bool, default: false
      t.string :photo
      t.timestamps null: false
    end
  end
end
