require "test_helper"

class FAmigosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_amigo = f_amigos(:one)
  end

  test "should get index" do
    get f_amigos_url
    assert_response :success
  end

  test "should get new" do
    get new_f_amigo_url
    assert_response :success
  end

  test "should create f_amigo" do
    assert_difference('FAmigo.count') do
      post f_amigos_url, params: { f_amigo: { email: @f_amigo.email, first_name: @f_amigo.first_name, last_name: @f_amigo.last_name, phone: @f_amigo.phone, twitter: @f_amigo.twitter } }
    end

    assert_redirected_to f_amigo_url(FAmigo.last)
  end

  test "should show f_amigo" do
    get f_amigo_url(@f_amigo)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_amigo_url(@f_amigo)
    assert_response :success
  end

  test "should update f_amigo" do
    patch f_amigo_url(@f_amigo), params: { f_amigo: { email: @f_amigo.email, first_name: @f_amigo.first_name, last_name: @f_amigo.last_name, phone: @f_amigo.phone, twitter: @f_amigo.twitter } }
    assert_redirected_to f_amigo_url(@f_amigo)
  end

  test "should destroy f_amigo" do
    assert_difference('FAmigo.count', -1) do
      delete f_amigo_url(@f_amigo)
    end

    assert_redirected_to f_amigos_url
  end
end
