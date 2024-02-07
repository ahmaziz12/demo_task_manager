require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "should not save task without name" do
    task = Task.new
    assert_not task.save, "Saved the task without a name"
  end

  test "should save task with valid attributes" do
    task = Task.new(name: "Test Task", description: "This is a test task")
    assert task.save, "Failed to save the task with valid attributes"
  end

end
