module = "project-predefined-role"{
source  			= "mahesh-madipally/db_Role_template/google"
target_level     = "project"
target_id        = "db-sample-314713"
role_id          = "role_dev_predef_GKE"
title            = "role_dev_predef_GKE"
description 		= "Predefined Role Description"
base_roles       =["roles/iam.serviceAccountAdmin"]
permissions 		=["iam.roles.list", "iam.roles.create"]
excluded_permissions =  		=["iam.serviceAccounts.setIamPolicy"] 
 }
