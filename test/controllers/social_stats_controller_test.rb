require 'test_helper'

class SocialStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_stat = social_stats(:one)
  end

  test "should get index" do
    get social_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_social_stat_url
    assert_response :success
  end

  test "should create social_stat" do
    assert_difference('SocialStat.count') do
      post social_stats_url, params: { social_stat: { name: @social_stat.name, notes: @social_stat.notes, rank2: @social_stat.rank2, rank3: @social_stat.rank3, rank4: @social_stat.rank4, rank5: @social_stat.rank5 } }
    end

    assert_redirected_to social_stat_url(SocialStat.last)
  end

  test "should show social_stat" do
    get social_stat_url(@social_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_stat_url(@social_stat)
    assert_response :success
  end

  test "should update social_stat" do
    patch social_stat_url(@social_stat), params: { social_stat: { name: @social_stat.name, notes: @social_stat.notes, rank2: @social_stat.rank2, rank3: @social_stat.rank3, rank4: @social_stat.rank4, rank5: @social_stat.rank5 } }
    assert_redirected_to social_stat_url(@social_stat)
  end

  test "should destroy social_stat" do
    assert_difference('SocialStat.count', -1) do
      delete social_stat_url(@social_stat)
    end

    assert_redirected_to social_stats_url
  end
end
