require "application_system_test_case"

class HuequitosTest < ApplicationSystemTestCase
  setup do
    @huequito = huequitos(:one)
  end

  test "visiting the index" do
    visit huequitos_url
    assert_selector "h1", text: "Huequitos"
  end

  test "creating a Huequito" do
    visit huequitos_url
    click_on "New Huequito"

    fill_in "Direccion", with: @huequito.direccion
    fill_in "Localidad", with: @huequito.localidad
    fill_in "Ranking", with: @huequito.ranking
    fill_in "Tamanio", with: @huequito.tamanio
    click_on "Create Huequito"

    assert_text "Huequito was successfully created"
    click_on "Back"
  end

  test "updating a Huequito" do
    visit huequitos_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @huequito.direccion
    fill_in "Localidad", with: @huequito.localidad
    fill_in "Ranking", with: @huequito.ranking
    fill_in "Tamanio", with: @huequito.tamanio
    click_on "Update Huequito"

    assert_text "Huequito was successfully updated"
    click_on "Back"
  end

  test "destroying a Huequito" do
    visit huequitos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Huequito was successfully destroyed"
  end
end
