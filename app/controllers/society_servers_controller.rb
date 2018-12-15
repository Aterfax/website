# frozen_string_literal: true

# Allows an admin user to record, edit and delete references to the game
# servers we run
class SocietyServersController < ApplicationController
  before_action :set_server, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /servers
  # GET /servers.json
  def index
    @servers = SocietyServer.all
  end

  # GET /servers/1
  # GET /servers/1.json
  def show; end

  # GET /servers/new
  def new
    @server = SocietyServer.new
  end

  # GET /servers/1/edit
  def edit; end

  # POST /servers
  # POST /servers.json
  # These controller methods are scaffolded to be like this by default - method
  # length shouldn't be a concern as long as it doesn't grow much.
  # rubocop:disable Metrics/MethodLength
  def create
    @server = SocietyServer.new(server_params)

    respond_to do |format|
      if @server.save
        format.html do
          redirect_to @server,
                      notice: 'Server was successfully created.'
        end
        format.json { render :show, status: :created, location: @server }
      else
        format.html { render :new }
        format.json do
          render json: @server.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /servers/1
  # PATCH/PUT /servers/1.json
  def update
    respond_to do |format|
      if @server.update(server_params)
        format.html do
          redirect_to @server,
                      notice: 'Server was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @server }
      else
        format.html { render :edit }
        format.json do
          render json: @server.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /servers/1
  # DELETE /servers/1.json
  def destroy
    @server.destroy
    respond_to do |format|
      format.html do
        redirect_to society_servers_url,
                    notice: 'Server was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end
  # rubocop:enable Metrics/MethodLength

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_server
    @server = SocietyServer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the whitelist
  # through.
  def server_params
    params.require(:society_server).permit(:game_id, :port)
  end
end
