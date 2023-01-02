class MovieActorsController < ApplicationController

  def create
    MovieActor.create(permitted_params)

    redirect_to "/movies/#{permitted_params[:movie_id]}"
  end

  private

  def permitted_params
    params.permit(:actor_id, :movie_id)
  end
end