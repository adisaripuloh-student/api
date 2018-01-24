class CreateUnsurs < ActiveRecord::Migration[5.1]
  def change
    create_table :unsurs do |t|
      t.string :simbol
      t.string :nama_unsur
      t.string :masa_atom
      t.integer :nomor_atom
      t.text :deskripsi
      t.integer :golongan
      t.integer :periode
      t.attachment :ikon
    end
  end
end
