class PostersController < ApplicationController
    def index
      @posters = Poster.all
    end

    def show
      @poster = Poster.find(params[:id])
    end

    def new
      @poster = Poster.new
    end

    def edit
      @poster = Poster.find(params[:id])
    end

    def create
      @poster = Poster.new(poster_params)

      if @poster.save
        redirect_to @poster
      else
        render 'new'
      end
    end

    def update
      @poster = Poster.find(params[:id])

      if @poster.update(poster_params)
        redirect_to @poster
      else
        render 'edit'
      end
    end

    def destroy
      @poster = Poster.find(params[:id])
      @poster.destroy

      redirect_to posters_path
    end

    private
    def poster_params
      params.require(:poster).permit(
        :name,
        :description,
        :notes,
        :width,
        :height,
        :venue,
        :designer,
        :printer,
        :year
      )
    end
  end
