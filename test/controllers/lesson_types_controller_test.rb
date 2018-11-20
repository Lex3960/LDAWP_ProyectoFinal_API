require 'test_helper'

class LessonTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_type = lesson_types(:one)
  end

  test "should get index" do
    get lesson_types_url, as: :json
    assert_response :success
  end

  test "should create lesson_type" do
    assert_difference('LessonType.count') do
      post lesson_types_url, params: { lesson_type: { activity_type_id: @lesson_type.activity_type_id, lesson_id: @lesson_type.lesson_id } }, as: :json
    end

    assert_response 201
  end

  test "should show lesson_type" do
    get lesson_type_url(@lesson_type), as: :json
    assert_response :success
  end

  test "should update lesson_type" do
    patch lesson_type_url(@lesson_type), params: { lesson_type: { activity_type_id: @lesson_type.activity_type_id, lesson_id: @lesson_type.lesson_id } }, as: :json
    assert_response 200
  end

  test "should destroy lesson_type" do
    assert_difference('LessonType.count', -1) do
      delete lesson_type_url(@lesson_type), as: :json
    end

    assert_response 204
  end
end
