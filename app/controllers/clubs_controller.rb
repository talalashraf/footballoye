class ClubsController < ApplicationController
  
  def new
  	@club = Club.new
  end

  def create
  	@club = Club.new(club_params)
  	respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: @club }
      else
        format.html { render :new }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	set_club
  end

  def edit
    set_club
  end

  def update
    set_club
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: @club }
      else
        format.html { render :edit }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def set_club
  	@club = Club.find_by_slug(params[:id])
  end

  def club_params
  	params.require(:club).permit(:name, :nickname, :league, :info, :slug)
  end
end
