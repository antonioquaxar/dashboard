require "application_system_test_case"

class ObrasProyectosTest < ApplicationSystemTestCase
  setup do
    @obras_proyecto = obras_proyectos(:one)
  end

  test "visiting the index" do
    visit obras_proyectos_url
    assert_selector "h1", text: "Obras Proyectos"
  end

  test "creating a Obras proyecto" do
    visit obras_proyectos_url
    click_on "New Obras Proyecto"

    fill_in "Montoobra", with: @obras_proyecto.MontoObra
    fill_in "Tipoobra", with: @obras_proyecto.TipoObra
    fill_in "Descripcion", with: @obras_proyecto.descripcion
    fill_in "Fechaactualizacion", with: @obras_proyecto.fechaActualizacion
    fill_in "Fechacreacion", with: @obras_proyecto.fechaCreacion
    fill_in "Fechafin", with: @obras_proyecto.fechaFin
    fill_in "Fechainicio", with: @obras_proyecto.fechaInicio
    fill_in "Nombre", with: @obras_proyecto.nombre
    fill_in "Responsable", with: @obras_proyecto.responsable
    fill_in "Ubicacion", with: @obras_proyecto.ubicacion
    click_on "Create Obras proyecto"

    assert_text "Obras proyecto was successfully created"
    click_on "Back"
  end

  test "updating a Obras proyecto" do
    visit obras_proyectos_url
    click_on "Edit", match: :first

    fill_in "Montoobra", with: @obras_proyecto.MontoObra
    fill_in "Tipoobra", with: @obras_proyecto.TipoObra
    fill_in "Descripcion", with: @obras_proyecto.descripcion
    fill_in "Fechaactualizacion", with: @obras_proyecto.fechaActualizacion
    fill_in "Fechacreacion", with: @obras_proyecto.fechaCreacion
    fill_in "Fechafin", with: @obras_proyecto.fechaFin
    fill_in "Fechainicio", with: @obras_proyecto.fechaInicio
    fill_in "Nombre", with: @obras_proyecto.nombre
    fill_in "Responsable", with: @obras_proyecto.responsable
    fill_in "Ubicacion", with: @obras_proyecto.ubicacion
    click_on "Update Obras proyecto"

    assert_text "Obras proyecto was successfully updated"
    click_on "Back"
  end

  test "destroying a Obras proyecto" do
    visit obras_proyectos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Obras proyecto was successfully destroyed"
  end
end
