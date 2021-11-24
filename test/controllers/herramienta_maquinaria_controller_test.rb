require "test_helper"

class HerramientaMaquinariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @herramienta_maquinarium = herramienta_maquinaria(:one)
  end

  test "should get index" do
    get herramienta_maquinaria_url
    assert_response :success
  end

  test "should get new" do
    get new_herramienta_maquinarium_url
    assert_response :success
  end

  test "should create herramienta_maquinarium" do
    assert_difference('HerramientaMaquinarium.count') do
      post herramienta_maquinaria_url, params: { herramienta_maquinarium: { cantidadAlmacen: @herramienta_maquinarium.cantidadAlmacen, fechaActualizacion: @herramienta_maquinarium.fechaActualizacion, fechaAdquisicion: @herramienta_maquinarium.fechaAdquisicion, fechaCreacion: @herramienta_maquinarium.fechaCreacion, marca: @herramienta_maquinarium.marca, modelo: @herramienta_maquinarium.modelo, nombre: @herramienta_maquinarium.nombre } }
    end

    assert_redirected_to herramienta_maquinarium_url(HerramientaMaquinarium.last)
  end

  test "should show herramienta_maquinarium" do
    get herramienta_maquinarium_url(@herramienta_maquinarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_herramienta_maquinarium_url(@herramienta_maquinarium)
    assert_response :success
  end

  test "should update herramienta_maquinarium" do
    patch herramienta_maquinarium_url(@herramienta_maquinarium), params: { herramienta_maquinarium: { cantidadAlmacen: @herramienta_maquinarium.cantidadAlmacen, fechaActualizacion: @herramienta_maquinarium.fechaActualizacion, fechaAdquisicion: @herramienta_maquinarium.fechaAdquisicion, fechaCreacion: @herramienta_maquinarium.fechaCreacion, marca: @herramienta_maquinarium.marca, modelo: @herramienta_maquinarium.modelo, nombre: @herramienta_maquinarium.nombre } }
    assert_redirected_to herramienta_maquinarium_url(@herramienta_maquinarium)
  end

  test "should destroy herramienta_maquinarium" do
    assert_difference('HerramientaMaquinarium.count', -1) do
      delete herramienta_maquinarium_url(@herramienta_maquinarium)
    end

    assert_redirected_to herramienta_maquinaria_url
  end
end
