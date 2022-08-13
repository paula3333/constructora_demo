require "application_system_test_case"

class ConstructionsTest < ApplicationSystemTestCase
  setup do
    @construction = constructions(:one)
  end

  test "visiting the index" do
    visit constructions_url
    assert_selector "h1", text: "Constructions"
  end

  test "should create construction" do
    visit constructions_url
    click_on "New construction"

    fill_in "Cost", with: @construction.cost
    fill_in "End date", with: @construction.end_date
    fill_in "Initial date", with: @construction.initial_date
    fill_in "Name", with: @construction.name
    click_on "Create Construction"

    assert_text "Construction was successfully created"
    click_on "Back"
  end

  test "should update Construction" do
    visit construction_url(@construction)
    click_on "Edit this construction", match: :first

    fill_in "Cost", with: @construction.cost
    fill_in "End date", with: @construction.end_date
    fill_in "Initial date", with: @construction.initial_date
    fill_in "Name", with: @construction.name
    click_on "Update Construction"

    assert_text "Construction was successfully updated"
    click_on "Back"
  end

  test "should destroy Construction" do
    visit construction_url(@construction)
    click_on "Destroy this construction", match: :first

    assert_text "Construction was successfully destroyed"
  end
end
