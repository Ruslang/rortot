class AddRadarToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :radar, :string
  end
end
