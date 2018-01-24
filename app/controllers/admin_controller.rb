class AdminController < ApplicationController
  before_action :required_user

  def index
    @unsurs = Unsur.all
  end

  def create
  end

  def store
    @unsur = Unsur.new(unsur_params)
    if @unsur.save
      flash[:success] = "Unsur telah disimpan"
      redirect_to adminCreate_path
    else
      flash[:danger] = "Unsur gagal disimpan"
      redirect_to adminCreate_path
    end
  end

  def show
    @unsur = Unsur.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @unsur = Unsur.find(params[:id])
    @unsur.ikon.destroy
    @unsur.destroy

    redirect_to admin_path
  end

  private
  def unsur_params
    params.require(:unsur).permit(:simbol, :nama_unsur, :masa_atom, :nomor_atom, :deskripsi, :golongan, :periode, :ikon)
  end
end
