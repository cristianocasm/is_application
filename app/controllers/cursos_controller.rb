# == Schema Information
#
# Table name: cursos
#
#  id         :integer          not null, primary key
#  nome       :string(255)
#  descricao  :text
#  situacao   :integer
#  created_at :datetime
#  updated_at :datetime
#

class CursosController < ApplicationController
  before_action :set_curso, only: [:show, :edit, :update, :destroy, :matriculados]

  # GET /cursos
  # GET /cursos.json
  def index
    @cursos = Curso.all
  end

  # GET /cursos/1
  # GET /cursos/1.json
  def show
  end

  # GET /cursos/new
  def new
    @curso = Curso.new
  end

  # GET /cursos/1/edit
  def edit
  end

  # POST /cursos
  # POST /cursos.json
  def create
    @curso = Curso.new(curso_params)

    respond_to do |format|
      if @curso.save
        format.html { redirect_to @curso, notice: 'Curso foi criado(a) com sucesso.' }
        format.json { render action: 'show', status: :created, location: @curso }
      else
        format.html { render action: 'new' }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursos/1
  # PATCH/PUT /cursos/1.json
  def update
    respond_to do |format|
      if @curso.update(curso_params)
        format.html { redirect_to @curso, notice: 'Curso foi atualizado(a) com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursos/1
  # DELETE /cursos/1.json
  def destroy
    @curso.destroy
    respond_to do |format|
      format.html { redirect_to cursos_url }
      format.json { head :no_content }
    end
  end

  # GET cursos/1/matriculados
  def matriculados
    @cursoEstud = @curso.estudantes
    @estudantes = Estudante.all

    respond_to do |format|
        format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso
      @curso = Curso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curso_params
      params.require(:curso).permit(:id, :nome, :descricao, :situacao)
    end
end
