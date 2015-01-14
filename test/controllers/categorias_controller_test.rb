require 'test_helper'

class CategoriasControllerTest < ActionController::TestCase
  test "should get formulario" do
    get :formulario
    assert_response :success
  end

  test "should get todas" do
    get :todas
    assert_response :success
  end

  test "should get presentacion" do
    get :presentacion
    assert_response :success
  end

end
