class TodolistsController < ApplicationController
  before_action :set_todolist, only: %i[ show edit update destroy ]
  before_action:authenticate_user!
  # GET /todolists or /todolists.json
  def index
    @todolists = Todolist.all
  end

  # GET /todolists/1 or /todolists/1.json
  def show
  end

  # GET /todolists/new
  def new
    @todolist = Todolist.new
  end

  # GET /todolists/1/edit
  def edit
  end

  # POST /todolists or /todolists.json
  def create
    @todolist = Todolist.new(todolist_params)
    @todolist.save
        redirect_to action:"index"
  end

  # PATCH/PUT /todolists/1 or /todolists/1.json
  def update
     @todolist.update(todolist_params)
        redirect_to action:"index"

  end

  # DELETE /todolists/1 or /todolists/1.json
  def destroy
    @todolist.destroy
    respond_to do |format|
      format.html { redirect_to todolists_url, notice: "Todolist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todolist
      @todolist = Todolist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todolist_params
      params.permit(:task, :completed)
    end
end
