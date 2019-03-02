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

      upload if params[:poster][:picture]

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

    def upload
      uploaded_io = params[:poster][:picture]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
    end

    private
    def poster_params
      params.require(:poster).permit(
        :name,
        :description,
        :artists,
        :notes,
        :width,
        :height,
        :venue,
        :designer,
        :printer,
        :year,
        :picture
      )
    end
  end
