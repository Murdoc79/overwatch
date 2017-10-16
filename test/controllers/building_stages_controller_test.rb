require 'test_helper'

class BuildingStagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @building_stage = building_stages(:one)
  end

  test "should get index" do
    get building_stages_url
    assert_response :success
  end

  test "should get new" do
    get new_building_stage_url
    assert_response :success
  end

  test "should create building_stage" do
    assert_difference('BuildingStage.count') do
      post building_stages_url, params: { building_stage: { stage: @building_stage.stage } }
    end

    assert_redirected_to building_stage_url(BuildingStage.last)
  end

  test "should show building_stage" do
    get building_stage_url(@building_stage)
    assert_response :success
  end

  test "should get edit" do
    get edit_building_stage_url(@building_stage)
    assert_response :success
  end

  test "should update building_stage" do
    patch building_stage_url(@building_stage), params: { building_stage: { stage: @building_stage.stage } }
    assert_redirected_to building_stage_url(@building_stage)
  end

  test "should destroy building_stage" do
    assert_difference('BuildingStage.count', -1) do
      delete building_stage_url(@building_stage)
    end

    assert_redirected_to building_stages_url
  end
end
