class CreateJobs < ActiveRecord::Migration
  def change
    create_table :Jobs do |t|
      t.string :title
      t.string :compay
      t.string :location

      t.timestamps
    end
  end
end
