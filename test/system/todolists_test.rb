require "application_system_test_case"

class TodolistsTest < ApplicationSystemTestCase
  setup do
    @todolist = todolists(:one)
  end

  test "visiting the index" do
    visit todolists_url
    assert_selector "h1", text: "Todolists"
  end

  test "creating a Todolist" do
    visit todolists_url
    click_on "New Todolist"

    check "Completed" if @todolist.completed
    fill_in "Task", with: @todolist.task
    click_on "Create Todolist"

    assert_text "Todolist was successfully created"
    click_on "Back"
  end

  test "updating a Todolist" do
    visit todolists_url
    click_on "Edit", match: :first

    check "Completed" if @todolist.completed
    fill_in "Task", with: @todolist.task
    click_on "Update Todolist"

    assert_text "Todolist was successfully updated"
    click_on "Back"
  end

  test "destroying a Todolist" do
    visit todolists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Todolist was successfully destroyed"
  end
end
