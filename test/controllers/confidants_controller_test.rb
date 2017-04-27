require 'test_helper'

class ConfidantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confidant = confidants(:one)
  end

  test "should get index" do
    get confidants_url
    assert_response :success
  end

  test "should get new" do
    get new_confidant_url
    assert_response :success
  end

  test "should create confidant" do
    assert_difference('Confidant.count') do
      post confidants_url, params: { confidant: { arcana: @confidant.arcana, name: @confidant.name, notes: @confidant.notes, start_date: @confidant.start_date } }
    end

    assert_redirected_to confidant_url(Confidant.last)
  end

  test "should show confidant" do
    get confidant_url(@confidant)
    assert_response :success
  end

  test "should get edit" do
    get edit_confidant_url(@confidant)
    assert_response :success
  end

  test "should update confidant" do
    patch confidant_url(@confidant), params: { confidant: { arcana: @confidant.arcana, name: @confidant.name, notes: @confidant.notes, start_date: @confidant.start_date } }
    assert_redirected_to confidant_url(@confidant)
  end

  test "should destroy confidant" do
    assert_difference('Confidant.count', -1) do
      delete confidant_url(@confidant)
    end

    assert_redirected_to confidants_url
  end
end
