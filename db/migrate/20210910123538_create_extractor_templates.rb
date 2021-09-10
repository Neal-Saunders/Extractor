class CreateExtractorTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :extractor_templates do |t|
      t.string :sheetID
      t.string :SheetName
      t.string :PrimaryKey

      t.timestamps
    end
  end
end
