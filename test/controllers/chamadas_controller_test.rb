require 'test_helper'

class ChamadasControllerTest < ActionController::TestCase
  setup do
    @chamada = chamadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chamadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chamada" do
    assert_difference('Chamada.count') do
      post :create, chamada: { : @chamada., descricao: @chamada.descricao, linha: @chamada.linha, parada_id: @chamada.parada_id, user_id: @chamada.user_id }
    end

    assert_redirected_to chamada_path(assigns(:chamada))
  end

  test "should show chamada" do
    get :show, id: @chamada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chamada
    assert_response :success
  end

  test "should update chamada" do
    patch :update, id: @chamada, chamada: { : @chamada., descricao: @chamada.descricao, linha: @chamada.linha, parada_id: @chamada.parada_id, user_id: @chamada.user_id }
    assert_redirected_to chamada_path(assigns(:chamada))
  end

  test "should destroy chamada" do
    assert_difference('Chamada.count', -1) do
      delete :destroy, id: @chamada
    end

    assert_redirected_to chamadas_path
  end
end
