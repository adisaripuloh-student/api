class Unsur < ApplicationRecord
  has_attached_file :ikon, path: ":root_dir",
      :path => ":rails_root/public/images/:filename",
      :url => "/images/:filename"
  validates_attachment_content_type :ikon, content_type: /\Aimage\/.*\z/
  validates :simbol, presence: true
  validates :nama_unsur, presence: true
  validates :masa_atom, presence: true
  validates :nomor_atom, presence: true
  validates :deskripsi, presence: true
  # validates :golongan, presence: true
  # validates :periode, presence: true
  validates :ikon, presence: true
end
