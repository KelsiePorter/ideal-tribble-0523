class MovieActors < ApplicationController

  def create

    redirect_to
  end

  private

  def permitted_params
    params.permit(:actor_id, :movie_id)
  end
end