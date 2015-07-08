# This migration comes from seven_careers (originally 20150408113718)
class CreateSevenCareersJobs < ActiveRecord::Migration
  def change
    create_table :seven_careers_jobs do |t|
      t.timestamps null: false
    end
    SevenCareers::Job.create_translation_table! title: :string, description: :text
  end
end
