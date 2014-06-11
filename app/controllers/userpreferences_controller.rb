  
class UserpreferencesController < ApplicationController
  

  # Receive form submitted from /userpreferences/new
  def create
    userprofile = Userprofile.find_by("name" => params["applicant_name"])
   			# Ignore (Kept as backup): Userprofile.update("name" => params["full_name"], "photo_url" => params["url"])
   			# Ignore (Kept as backup): Userprofile.create("name" => params["full_name"], "photo_url" => params["url"])
    Userprofile.update("name" => params["full_name"])
    Userpreference.create("apartmenttype_id" => singlestudio.id, "userprofile_id" => userprofile.id, "preference" => params["living_as"])
    		# Ignore (Kept as backup): params["chosen_apartmenttype_id"]
    redirect_to "/userprofiles"
  end


  def destroy
    userprofile = Userprofile.find_by("id" => params["id"])
    userprofile.delete
    redirect_to "/userprofiles"
  end


  # Receive form submitted from /userprofiles/edit
  def update
    redirect_to "/userprofiles"
  end

end
