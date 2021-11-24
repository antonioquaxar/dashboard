require "test_helper"

class ObrasProyectosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obras_proyecto = obras_proyectos(:one)
  end

  test "should get index" do
    get obras_proyectos_url
    assert_response :success
  end

  test "should get new" do
    get new_obras_proyecto_url
    assert_response :success
  end

  test "should create obras_proyecto" do
    assert_difference('ObrasProyecto.count') do
      post obras_proyectos_url, params: { obras_proyecto: { MontoObra: @obras_proyecto.MontoObra, TipoObra: @obras_proyecto.TipoObra, descripcion: @obras_proyecto.descripcion, fechaActualizacion: @obras_proyecto.fechaActualizacion, fechaCreacion: @obras_proyecto.fechaCreacion, fechaFin: @obras_proyecto.fechaFin, fechaInicio: @obras_proyecto.fechaInicio, nombre: @obras_proyecto.nombre, responsable: @obras_proyecto.responsable, ubicacion: @obras_proyecto.ubicacion } }
    end

    assert_redirected_to obras_proyecto_url(ObrasProyecto.last)
  end

  test "should show obras_proyecto" do
    get obras_proyecto_url(@obras_proyecto)
    assert_response :success
  end

  test "should get edit" do
    get edit_obras_proyecto_url(@obras_proyecto)
    assert_response :success
  end

  test "should update obras_proyecto" do
    patch obras_proyecto_url(@obras_proyecto), params: { obras_proyecto: { MontoObra: @obras_proyecto.MontoObra, TipoObra: @obras_proyecto.TipoObra, descripcion: @obras_proyecto.descripcion, fechaActualizacion: @obras_proyecto.fechaActualizacion, fechaCreacion: @obras_proyecto.fechaCreacion, fechaFin: @obras_proyecto.fechaFin, fechaInicio: @obras_proyecto.fechaInicio, nombre: @obras_proyecto.nombre, responsable: @obras_proyecto.responsable, ubicacion: @obras_proyecto.ubicacion } }
    assert_redirected_to obras_proyecto_url(@obras_proyecto)
  end

  test "should destroy obras_proyecto" do
    assert_difference('ObrasProyecto.count', -1) do
      delete obras_proyecto_url(@obras_proyecto)
    end

    assert_redirected_to obras_proyectos_url
  end
end
