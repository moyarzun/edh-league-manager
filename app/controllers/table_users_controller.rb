class TableUsersController < ApplicationController
  before_action :set_table_user, only: %i[ show edit update destroy ]

  # GET /table_users or /table_users.json
  def index
    @table_users = TableUser.all
  end

  # GET /table_users/1 or /table_users/1.json
  def show
  end

  # GET /table_users/new
  def new
    @table_user = TableUser.new
  end

  # GET /table_users/1/edit
  def edit
  end

  # POST /table_users or /table_users.json
  def create
    @table_user = TableUser.new(table_user_params)

    respond_to do |format|
      if @table_user.save
        notice = "Table user was successfully created."
        redirect_to request.referer || root_path # fallback a root_path si request.referer es nil
      else
        flash[:alert] = "There was a problem creating the Table user."
      end
    rescue ActiveRecord::RecordNotUnique
      flash[:alert] = "User already registered for this table."
      redirect_to request.referer || root_path # fallback a root_path si request.referer es nil
    end
  end

  # PATCH/PUT /table_users/1 or /table_users/1.json
  def update
    respond_to do |format|
      if @table_user.update(table_user_params)
        format.html { redirect_to table_user_url(@table_user), notice: "Table user was successfully updated." }
        format.json { render :show, status: :ok, location: @table_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_users/1 or /table_users/1.json
  def destroy
    @table_user.destroy!

    respond_to do |format|
      flash[:notice] = "Table user was successfully destroyed."
      redirect_to request.referer || root_path # fallback a root_path si request.referer es nil
      format.json { head :no_content }
    end
  end

  def join_table
    @table_user = TableUser.new(table_user_params)
    @table_user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_user
      @table_user = TableUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_user_params
      params.require(:table_user).permit(:table_id, :user_id)
    end
end
