class AuditLogsController < ApplicationController
  before_action :set_audit_log, only: %i[ show edit update destroy ]

  # GET /audit_logs or /audit_logs.json
  def index
    @audit_logs = AuditLog.all
  end

  # GET /audit_logs/1 or /audit_logs/1.json
  def show
  end

  # GET /audit_logs/new
  def new
    @audit_log = AuditLog.new
  end

  # GET /audit_logs/1/edit
  def edit
  end

  # POST /audit_logs or /audit_logs.json
  def create
    @audit_log = AuditLog.new(audit_log_params)

    respond_to do |format|
      if @audit_log.save
        format.html { redirect_to audit_log_url(@audit_log), notice: "Audit log was successfully created." }
        format.json { render :show, status: :created, location: @audit_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @audit_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audit_logs/1 or /audit_logs/1.json
  def update
    respond_to do |format|
      if @audit_log.update(audit_log_params)
        format.html { redirect_to audit_log_url(@audit_log), notice: "Audit log was successfully updated." }
        format.json { render :show, status: :ok, location: @audit_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @audit_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audit_logs/1 or /audit_logs/1.json
  def destroy
    @audit_log.destroy

    respond_to do |format|
      format.html { redirect_to audit_logs_url, notice: "Audit log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audit_log
      @audit_log = AuditLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def audit_log_params
      params.require(:audit_log).permit(:user, :event, :date)
    end
end
