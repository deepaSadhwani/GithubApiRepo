module  "project-custom-role"{
source			= "mahesh-madipally/db_Role_template/google"
target_level     = "project"
target_id        = "db-sample-314713"
role_id          = "role_dev_predef_GKE"
title            = "role_dev_predef_GKE"
description 		= "Predefined Role Description"
permissions 		=["iam.roles.list", "iam.roles.create"]
base_roles       =["roles/iam.serviceAccountAdmin"]

 }
