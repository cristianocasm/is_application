# == Schema Information
#
# Table name: salas
#
#  id           :integer          not null, primary key
#  estudante_id :integer
#  curso_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class SalasController < ApplicationController
  before_action :set_sala, only: [:show, :edit, :update, :destroy]

  # GET /salas
  # GET /salas.json
  def index
    @filtering = params[:curso] || params[:estudante]
    
    @salas = if params[:curso]
               Curso.find(params[:curso]).salas
             elsif params[:estudante]
               Estudante.find(params[:estudante]).salas
             else
               Sala.all
             end
  end

  # GET /salas/1
  # GET /salas/1.json
  def show
  end

  # GET /salas/new
  def new
    @sala = Sala.new
    @cursos = Curso.all
    @estudantes = Estudante.all
  end

  # POST /salas
  # POST /salas.json
  def create
    @curso = Curso.find(sala_params[:curso_id])
    @curso.estudantes = Estudante.where(id: sala_params[:estudante_ids])

    respond_to do |format|
      if @curso
        format.html { redirect_to salas_path, notice: 'Sala was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sala }
      else
        format.html { render action: 'new' }
        format.json { render json: @sala.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salas/1
  # PATCH/PUT /salas/1.json
  def update
    respond_to do |format|
      if @sala.update(sala_params)
        format.html { redirect_to @sala, notice: 'Sala was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sala.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salas/1
  # DELETE /salas/1.json
  def destroy
    @sala.destroy
    respond_to do |format|
      format.html { redirect_to salas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala
      @sala = Sala.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sala_params
      params.require(:sala).permit(:id, :curso_id, estudante_ids: [])
    end
end
