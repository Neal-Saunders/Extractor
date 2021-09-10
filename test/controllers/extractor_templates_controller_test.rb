require 'test_helper'

class ExtractorTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extractor_template = extractor_templates(:one)
  end

  test "should get index" do
    get extractor_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_extractor_template_url
    assert_response :success
  end

  test "should create extractor_template" do
    assert_difference('ExtractorTemplate.count') do
      post extractor_templates_url, params: { extractor_template: {  sheetID: @extractor_template. sheetID, PrimaryKey: @extractor_template.PrimaryKey, SheetName: @extractor_template.SheetName } }
    end

    assert_redirected_to extractor_template_url(ExtractorTemplate.last)
  end

  test "should show extractor_template" do
    get extractor_template_url(@extractor_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_extractor_template_url(@extractor_template)
    assert_response :success
  end

  test "should update extractor_template" do
    patch extractor_template_url(@extractor_template), params: { extractor_template: {  sheetID: @extractor_template. sheetID, PrimaryKey: @extractor_template.PrimaryKey, SheetName: @extractor_template.SheetName } }
    assert_redirected_to extractor_template_url(@extractor_template)
  end

  test "should destroy extractor_template" do
    assert_difference('ExtractorTemplate.count', -1) do
      delete extractor_template_url(@extractor_template)
    end

    assert_redirected_to extractor_templates_url
  end
end
