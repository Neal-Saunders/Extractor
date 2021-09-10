require "application_system_test_case"

class ExtractorTemplatesTest < ApplicationSystemTestCase
  setup do
    @extractor_template = extractor_templates(:one)
  end

  test "visiting the index" do
    visit extractor_templates_url
    assert_selector "h1", text: "Extractor Templates"
  end

  test "creating a Extractor template" do
    visit extractor_templates_url
    click_on "New Extractor Template"

    fill_in " sheetid", with: @extractor_template. sheetID
    fill_in "Primarykey", with: @extractor_template.PrimaryKey
    fill_in "Sheetname", with: @extractor_template.SheetName
    click_on "Create Extractor template"

    assert_text "Extractor template was successfully created"
    click_on "Back"
  end

  test "updating a Extractor template" do
    visit extractor_templates_url
    click_on "Edit", match: :first

    fill_in " sheetid", with: @extractor_template. sheetID
    fill_in "Primarykey", with: @extractor_template.PrimaryKey
    fill_in "Sheetname", with: @extractor_template.SheetName
    click_on "Update Extractor template"

    assert_text "Extractor template was successfully updated"
    click_on "Back"
  end

  test "destroying a Extractor template" do
    visit extractor_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Extractor template was successfully destroyed"
  end
end
