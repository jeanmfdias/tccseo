class Artigo < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :admin_user

  mount_uploader :imagem, ImagemUploader
end
