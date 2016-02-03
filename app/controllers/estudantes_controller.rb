class EstudantesController < ApplicationController
  before_action :set_estudante, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @estudantes = Estudante.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_estudante
    @reward = Estudante.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def estudante_params
    params.require(:estudante).permit(:id, :nome, :numero_de_registro, :situacao)
  end
end
