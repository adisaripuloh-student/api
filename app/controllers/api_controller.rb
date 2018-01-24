class ApiController < ApplicationController
  before_action :set_unsur, only: [:show]

  # GET /unsurs
  def all
    @unsurs = Unsur.all

    render json: @unsurs
  end

  # GET /unsur/1
  def show
    render json: @unsur
  end

  # GET /search
  def search
    key = "%#{params[:key]}%"
    @unsurs = Unsur.select('id, simbol, nama_unsur, golongan, periode, ikon_file_name').where('simbol LIKE ? OR nama_unsur LIKE ? OR nomor_atom LIKE ? OR masa_atom LIKE ? OR deskripsi LIKE ?', key, key, key, key, key).order(:nama_unsur)

    render json: @unsurs
  end

  # GET /golongan/1
  def golongan
    @unsur = Unsur.find(params[:golongan])
    render json: @unsur
  end

  # GET /periode/1
  def periode
    @unsur = Unsur.find(params[:periode])
    render json: @unsur
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_unsur
    @unsur = Unsur.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def unsur_params
    params.require(:unsur).permit(:simbol, :nama_unsur, :masa_atom, :nomor_atom, :deskripsi, :golongan, :periode, :ikon_file_name)
  end
end
