class UserprofilesController < ApplicationController

  def destroy
    userprofile = Userprofile.find_by("id" => params["id"])
    userprofile.delete
    redirect_to "/userprofiles"
  end

  # Receive form submitted from /userprofiles/new
  def create
    Userprofile.create("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/userprofiles"
  end

  # Receive form submitted from /userprofiles/edit
  def update
    userprofile = Userprofile.find_by("id" => params["id"])
    userprofile.update("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/userprofiles"
  end


 def userpreferenceupdate
    userprofile = Userprofile.find_by("name" => params["applicant_name"])
    chosenapartment = Apartmenttype.find_by("title" => params["chosen_apartmenttype"])
            # Ignore (Kept as backup):  Userprofile.update("name" => params["full_name"], "photo_url" => params["url"])
            # Ignore (Kept as backup):  Userprofile.create("name" => params["full_name"], "photo_url" => params["url"])
    Userpreference.create("apartmenttype_id" => params["chosen_apartmenttype"], "userprofile_id" => params["applicant_name"], "preference" => params["living_as"])
            # Ignore (Kept as backup):  params["chosen_apartmenttype_id"]
    redirect_to "/userprofiles"
  end


end
