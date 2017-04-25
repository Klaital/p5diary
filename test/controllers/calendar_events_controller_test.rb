require 'test_helper'

class CalendarEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendar_event = calendar_events(:one)
  end

  test "should get index" do
    get calendar_events_url
    assert_response :success
  end

  test "should get new" do
    get new_calendar_event_url
    assert_response :success
  end

  test "should create calendar_event" do
    assert_difference('CalendarEvent.count') do
      post calendar_events_url, params: { calendar_event: { date: @calendar_event.date, event_requirements: @calendar_event.event_requirements, events: @calendar_event.events, notes: @calendar_event.notes, time_slot: @calendar_event.time_slot, weather: @calendar_event.weather, weather_modifier: @calendar_event.weather_modifier } }
    end

    assert_redirected_to calendar_event_url(CalendarEvent.last)
  end

  test "should show calendar_event" do
    get calendar_event_url(@calendar_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_calendar_event_url(@calendar_event)
    assert_response :success
  end

  test "should update calendar_event" do
    patch calendar_event_url(@calendar_event), params: { calendar_event: { date: @calendar_event.date, event_requirements: @calendar_event.event_requirements, events: @calendar_event.events, notes: @calendar_event.notes, time_slot: @calendar_event.time_slot, weather: @calendar_event.weather, weather_modifier: @calendar_event.weather_modifier } }
    assert_redirected_to calendar_event_url(@calendar_event)
  end

  test "should destroy calendar_event" do
    assert_difference('CalendarEvent.count', -1) do
      delete calendar_event_url(@calendar_event)
    end

    assert_redirected_to calendar_events_url
  end
end
