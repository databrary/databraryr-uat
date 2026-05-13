# Testing Databrary API

################ Load package
library(databraryr)

################ Login, status, stats
login_db()
whoami()
get_db_stats()

################  Volume functions

get_volume_by_id()
get_volume_collaborator_by_id(vol_id = 1, collaborator_id = 1) # Karen

# list_volume_activity(vol_id = 31) # Very slow
list_volume_assets(vol_id = 1, vb = TRUE)
list_volume_collaborators(vol_id = 1, vb = TRUE)
list_volume_folders(vol_id = 1, vb = TRUE)
list_volume_funding(vol_id = 1, vb = TRUE)
list_volume_info(vol_id = 1, vb = TRUE)
list_volume_links(vol_id = 1 , vb = TRUE)

list_volume_records(
  vol_id = 2,
  category_id = 1,
  # Participant
  vb = TRUE
)
list_volume_records(
  vol_id = 2,
  category_id = 2,
  # Pilot
  vb = TRUE
)
list_volume_records(
  vol_id = 2,
  category_id = 3,
  # Exclusion
  vb = TRUE
)
list_volume_records(
  vol_id = 2,
  category_id = 4,
  # Condition
  vb = TRUE
)
list_volume_records(
  vol_id = 2,
  category_id = 5,
  # Group
  vb = TRUE
)
list_volume_records(
  vol_id = 2,
  category_id = 6,
  # Task
  vb = TRUE
)
list_volume_records(
  vol_id = 2,
  category_id = 7,
  # Context
  vb = TRUE
)

list_volume_session_assets(vol_id = 2,
                           session_id = 11,
                           vb = TRUE)

list_volume_sessions(vol_id = 1, vb = TRUE)

list_volume_tags(vol_id = 1, vb = TRUE)

list_volumes(search = "PLAY", vb = TRUE)

################  Session functions

get_session_by_id(session_id = 6256,
                  vol_id = 1,
                  vb = TRUE)
get_session_by_name(vb = TRUE) # Name contains "Advisory Board Meeting"
get_session_file(vb = TRUE, file_id = 27227) # PDF agenda from volume 1
list_session_assets(session_id = 6256,
                    vol_id = 1,
                    vb = TRUE)

# The following is very slow, and there are only 22 rows.
list_session_activity(vol_id = 1,
                      session_id = 6256,
                      vb = TRUE)

################  Materials (folder) functions

get_folder_by_id(folder_id = 9807,
                 vol_id = 1,
                 vb = TRUE)
get_folder_file(
  vol_id = 1,
  folder_id = 9807,
  file_id = 1,
  vb = TRUE
)
list_folder_assets(folder_id = 9807,
                   vol_id = 1,
                   vb = TRUE)

################ Institution functions

get_institution_avatar(institution_id = 1, 
                       dest_path = "databrary.png",
                       vb = TRUE)      
get_institution_by_id(institution_id = 12,
                      vb = TRUE)  
list_institution_affiliates(institution_id = 12,
                            vb = TRUE)
list_institutions(search_string = "The Pennsylvania",
                  vb = TRUE)

################ User functions

get_user_avatar(user_id = 6,
                dest_path = "rog.png",
                vb = TRUE)
get_user_by_id(user_id = 6,
               vb = TRUE)
list_user_affiliates(user_id = 6,
                     vb = TRUE)

# The following takes a _very_ long time
list_user_history(user_id = 6,
                  vb = TRUE)

list_user_sponsors(user_id = 6,
                   vb = TRUE)
list_user_volumes(user_id = 6,
                  vb = TRUE)
list_users(search = "Gilmore",
           vb = TRUE)
search_users(search_string = "Gilmore", vb = TRUE)

################ Asset functions

# list_folder_assets(9807, 1) |> 
#   download_folder_assets_fr_df(vb = TRUE)
# 
# download_session_asset()

# download_session_assets_fr_df() # Fix
# download_single_folder_asset_fr_df() # Fix
# download_single_session_asset_fr_df() # Fix

list_asset_formats(vb = TRUE)

################ Logout

logout_db()