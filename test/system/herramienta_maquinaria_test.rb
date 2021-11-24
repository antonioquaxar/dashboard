require "application_system_test_case"

class HerramientaMaquinariaTest < ApplicationSystemTestCase
  setup do
    @herramienta_maquinarium = herramienta_maquinaria(:one)
  end

  test "visiting the index" do
    visit herramienta_maquinaria_url
    assert_selector "h1", text: "Herramienta Maquinaria"
  end

  test "creating a Herramienta maquinarium" do
    visit herramienta_maquinaria_url
    click_on "New Herramienta Maquinarium"

    fill_in "Cantidadalmacen", with: @herramienta_maquinarium.cantidadAlmacen
    fill_in "Fechaactualizacion", with: @herramienta_maquinarium.fechaActualizacion
    fill_in "Fechaadquisicion", with: @herramienta_maquinarium.fechaAdquisicion
    fill_in "Fechacreacion", with: @herramienta_maquinarium.fechaCreacion
    fill_in "Marca", with: @herramienta_maquinarium.marca
    fill_in "Modelo", with: @herramienta_maquinarium.modelo
    fill_in "Nombre", with: @herramienta_maquinarium.nombre
    click_on "Create Herramienta maquinarium"

    assert_text "Herramienta maquinarium was successfully created"
    click_on "Back"
  end

  test "updating a Herramienta maquinarium" do
    visit herramienta_maquinaria_url
    click_on "Edit", match: :first

    fill_in "Cantidadalmacen", with: @herramienta_maquinarium.cantidadAlmacen
    fill_in "Fechaactualizacion", with: @herramienta_maquinarium.fechaActualizacion
    fill_in "Fechaadquisicion", with: @herramienta_maquinarium.fechaAdquisicion
    fill_in "Fechacreacion", with: @herramienta_maquinarium.fechaCreacion
    fill_in "Marca", with: @herramienta_maquinarium.marca
    fill_in "Modelo", with: @herramienta_maquinarium.modelo
    fill_in "Nombre", with: @herramienta_maquinarium.nombre
    click_on "Update Herramienta maquinarium"

    assert_text "Herramienta maquinarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Herramienta maquinarium" do
    visit herramienta_maquinaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Herramienta maquinarium was successfully destroyed"
  end
end
