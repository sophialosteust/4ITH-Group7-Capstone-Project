require 'test_helper'

class AuditLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audit_log = audit_logs(:one)
  end

  test "should get index" do
    get audit_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_audit_log_url
    assert_response :success
  end

  test "should create audit_log" do
    assert_difference('AuditLog.count') do
      post audit_logs_url, params: { audit_log: { date: @audit_log.date, event: @audit_log.event, user: @audit_log.user } }
    end

    assert_redirected_to audit_log_url(AuditLog.last)
  end

  test "should show audit_log" do
    get audit_log_url(@audit_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_audit_log_url(@audit_log)
    assert_response :success
  end

  test "should update audit_log" do
    patch audit_log_url(@audit_log), params: { audit_log: { date: @audit_log.date, event: @audit_log.event, user: @audit_log.user } }
    assert_redirected_to audit_log_url(@audit_log)
  end

  test "should destroy audit_log" do
    assert_difference('AuditLog.count', -1) do
      delete audit_log_url(@audit_log)
    end

    assert_redirected_to audit_logs_url
  end
end
