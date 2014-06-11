class StudentdirectorsController < ApplicationController

  def destroy
    studentdirector = Studentdirector.find_by("id" => params["id"])
    studentdirector.delete
    redirect_to "/studentdirectors"
  end

  # Receive form submitted from /studentdirectors/new
  def create
    Studentdirector.create("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/studentdirectors"
  end

  # Receive form submitted from /studentdirectors/edit
  def update
    studentdirector = Studentdirector.find_by("id" => params["id"])
    studentdirector.update("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/studentdirectors"
  end

end
