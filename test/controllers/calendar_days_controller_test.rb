require 'test_helper'

class CalendarDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendar_day = calendar_days(:one)
  end

  test "should get index" do
    get calendar_days_url
    assert_response :success
  end

  test "should get new" do
    get new_calendar_day_url
    assert_response :success
  end

  test "should create calendar_day" do
    assert_difference('CalendarDay.count') do
      post calendar_days_url, params: { calendar_day: { date: @calendar_day.date, notes: @calendar_day.notes } }
    end

    assert_redirected_to calendar_day_url(CalendarDay.last)
  end

  test "should show calendar_day" do
    get calendar_day_url(@calendar_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_calendar_day_url(@calendar_day)
    assert_response :success
  end

  test "should update calendar_day" do
    patch calendar_day_url(@calendar_day), params: { calendar_day: { date: @calendar_day.date, notes: @calendar_day.notes } }
    assert_redirected_to calendar_day_url(@calendar_day)
  end

  test "should destroy calendar_day" do
    assert_difference('CalendarDay.count', -1) do
      delete calendar_day_url(@calendar_day)
    end

    assert_redirected_to calendar_days_url
  end
end
