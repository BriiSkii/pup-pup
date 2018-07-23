class PetsController < ApplicationController
  before_action :set_pet, except: [:index, :new, :create, :destroy]
  before_action :authenticate_user!, except: [:show]

  def index
    @pets = current_user.pets
  end

  def new
    @pet = current_user.pets.build
  end

  def create
    @pet = current_user.pets.build(pet_params)
    if @pet.save
      redirect_to listing_pet_path(@pet)
    else
      render :new, notice: "Something went wrong"
    end
  end

  def show
  end

  def listing
  end

  def description
  end

  def photo_upload
  end

  def location
  end

  def update
    if @pet.update(pet_params)
      flash[:notice] = "Saved...."
      redirect_to listing_pet_path(@pet)
    else
      flash[:notice] = "Something went wrong"
    end
  end

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge

    redirect_back(fallback_location: photo_upload_pet_path)
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :gender, :color, :age, :description, :active, :address, :pet_avi, images: [])
  end
end
