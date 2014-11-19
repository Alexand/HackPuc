require 'test_helper'

class TiposContatosControllerTest < ActionController::TestCase
  setup do
    @tipos_contato = tipos_contatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_contatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipos_contato" do
    assert_difference('TiposContato.count') do
      post :create, tipos_contato: { descricao: @tipos_contato.descricao }
    end

    assert_redirected_to tipos_contato_path(assigns(:tipos_contato))
  end

  test "should show tipos_contato" do
    get :show, id: @tipos_contato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipos_contato
    assert_response :success
  end

  test "should update tipos_contato" do
    patch :update, id: @tipos_contato, tipos_contato: { descricao: @tipos_contato.descricao }
    assert_redirected_to tipos_contato_path(assigns(:tipos_contato))
  end

  test "should destroy tipos_contato" do
    assert_difference('TiposContato.count', -1) do
      delete :destroy, id: @tipos_contato
    end

    assert_redirected_to tipos_contatos_path
  end
end
