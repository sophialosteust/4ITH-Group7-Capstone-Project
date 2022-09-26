require "application_system_test_case"

class AuditLogsTest < ApplicationSystemTestCase
  setup do
    @audit_log = audit_logs(:one)
  end

  test "visiting the index" do
    visit audit_logs_url
    assert_selector "h1", text: "Audit Logs"
  end

  test "creating a Audit log" do
    visit audit_logs_url
    click_on "New Audit Log"

    fill_in "Date", with: @audit_log.date
    fill_in "Event", with: @audit_log.event
    fill_in "User", with: @audit_log.user
    click_on "Create Audit log"

    assert_text "Audit log was successfully created"
    click_on "Back"
  end

  test "updating a Audit log" do
    visit audit_logs_url
    click_on "Edit", match: :first

    fill_in "Date", with: @audit_log.date
    fill_in "Event", with: @audit_log.event
    fill_in "User", with: @audit_log.user
    click_on "Update Audit log"

    assert_text "Audit log was successfully updated"
    click_on "Back"
  end

  test "destroying a Audit log" do
    visit audit_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Audit log was successfully destroyed"
  end
end
