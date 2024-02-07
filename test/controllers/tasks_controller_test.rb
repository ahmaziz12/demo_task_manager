require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { name: "Test Task", description: "This is a test task" } }
    end

    assert_redirected_to task_url(Task.last)
  end

end
