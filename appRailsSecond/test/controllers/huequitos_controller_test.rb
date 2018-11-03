require 'test_helper'

class HuequitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @huequito = huequitos(:one)
  end

  test "should get index" do
    get huequitos_url
    assert_response :success
  end

  test "should get new" do
    get new_huequito_url
    assert_response :success
  end

  test "should create huequito" do
    assert_difference('Huequito.count') do
      post huequitos_url, params: { huequito: { direccion: @huequito.direccion, localidad: @huequito.localidad, ranking: @huequito.ranking, tamanio: @huequito.tamanio } }
    end

    assert_redirected_to huequito_url(Huequito.last)
  end

  test "should show huequito" do
    get huequito_url(@huequito)
    assert_response :success
  end

  test "should get edit" do
    get edit_huequito_url(@huequito)
    assert_response :success
  end

  test "should update huequito" do
    patch huequito_url(@huequito), params: { huequito: { direccion: @huequito.direccion, localidad: @huequito.localidad, ranking: @huequito.ranking, tamanio: @huequito.tamanio } }
    assert_redirected_to huequito_url(@huequito)
  end

  test "should destroy huequito" do
    assert_difference('Huequito.count', -1) do
      delete huequito_url(@huequito)
    end

    assert_redirected_to huequitos_url
  end
end
