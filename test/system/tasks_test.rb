require "test_helper"

class TasksTest < ActiveSupport::TestCase
  test "creating a Task" do
    visit tasks_url
    click_on "New Task"

    fill_in "Name", with: "Test Task"
    fill_in "Description", with: "This is a test task"
    check "Completed"
    click_on "Create Task"

    assert_text "Task was successfully created."
  end

end
