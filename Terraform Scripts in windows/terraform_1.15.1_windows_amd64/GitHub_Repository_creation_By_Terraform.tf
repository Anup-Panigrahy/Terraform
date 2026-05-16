terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "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"
}

resource "github_repository" "repository_crteation_in_GitHub_by_terraform" {
  name        = "repository_crteation_in_GitHub_by_terraform"
  description = "My awesome codebase"
  visibility  = "public"
}
-----------------------------------------------------------------------------------------------------------------------
I have done this in windows OS in my local machine by installing Terraform in my system
-----------------------------------------------------------------------------------------------------------------------
D:\DevOps_Cloud\DevOps\Terraform\Terraform Scripts in windows\terraform_1.15.1_windows_amd64>terraform init
Initializing provider plugins found in the configuration...
- Reusing previous version of integrations/github from the dependency lock file
- Using previously-installed integrations/github v6.12.1

Initializing the backend...

Initializing provider plugins found in the state...


Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

D:\DevOps_Cloud\DevOps\Terraform\Terraform Scripts in windows\terraform_1.15.1_windows_amd64>terraform validate
Success! The configuration is valid.


D:\DevOps_Cloud\DevOps\Terraform\Terraform Scripts in windows\terraform_1.15.1_windows_amd64>terraform fmt
GitHub_Repository_creation_By_Terraform.tf

D:\DevOps_Cloud\DevOps\Terraform\Terraform Scripts in windows\terraform_1.15.1_windows_amd64>terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.repository_crteation_in_GitHub_by_terraform will be created
  + resource "github_repository" "repository_crteation_in_GitHub_by_terraform" {
      + allow_auto_merge                        = false
      + allow_forking                           = (known after apply)
      + allow_merge_commit                      = true
      + allow_rebase_merge                      = true
      + allow_squash_merge                      = true
      + archived                                = false
      + default_branch                          = (known after apply)
      + delete_branch_on_merge                  = false
      + description                             = "My awesome codebase"
      + etag                                    = (known after apply)
      + fork                                    = (known after apply)
      + full_name                               = (known after apply)
      + git_clone_url                           = (known after apply)
      + html_url                                = (known after apply)
      + http_clone_url                          = (known after apply)
      + id                                      = (known after apply)
      + ignore_vulnerability_alerts_during_read = false
      + merge_commit_message                    = "PR_TITLE"
      + merge_commit_title                      = "MERGE_MESSAGE"
      + name                                    = "repository_crteation_in_GitHub_by_terraform"
      + node_id                                 = (known after apply)
      + primary_language                        = (known after apply)
      + private                                 = (known after apply)
      + repo_id                                 = (known after apply)
      + source_owner                            = (known after apply)
      + source_repo                             = (known after apply)
      + squash_merge_commit_message             = "COMMIT_MESSAGES"
      + squash_merge_commit_title               = "COMMIT_OR_PR_TITLE"
      + ssh_clone_url                           = (known after apply)
      + svn_url                                 = (known after apply)
      + topics                                  = (known after apply)
      + visibility                              = "public"
      + vulnerability_alerts                    = (known after apply)
      + web_commit_signoff_required             = (known after apply)

      + security_and_analysis (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

D:\DevOps_Cloud\DevOps\Terraform\Terraform Scripts in windows\terraform_1.15.1_windows_amd64>terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.repository_crteation_in_GitHub_by_terraform will be created
  + resource "github_repository" "repository_crteation_in_GitHub_by_terraform" {
      + allow_auto_merge                        = false
      + allow_forking                           = (known after apply)
      + allow_merge_commit                      = true
      + allow_rebase_merge                      = true
      + allow_squash_merge                      = true
      + archived                                = false
      + default_branch                          = (known after apply)
      + delete_branch_on_merge                  = false
      + description                             = "My awesome codebase"
      + etag                                    = (known after apply)
      + fork                                    = (known after apply)
      + full_name                               = (known after apply)
      + git_clone_url                           = (known after apply)
      + html_url                                = (known after apply)
      + http_clone_url                          = (known after apply)
      + id                                      = (known after apply)
      + ignore_vulnerability_alerts_during_read = false
      + merge_commit_message                    = "PR_TITLE"
      + merge_commit_title                      = "MERGE_MESSAGE"
      + name                                    = "repository_crteation_in_GitHub_by_terraform"
      + node_id                                 = (known after apply)
      + primary_language                        = (known after apply)
      + private                                 = (known after apply)
      + repo_id                                 = (known after apply)
      + source_owner                            = (known after apply)
      + source_repo                             = (known after apply)
      + squash_merge_commit_message             = "COMMIT_MESSAGES"
      + squash_merge_commit_title               = "COMMIT_OR_PR_TITLE"
      + ssh_clone_url                           = (known after apply)
      + svn_url                                 = (known after apply)
      + topics                                  = (known after apply)
      + visibility                              = "public"
      + vulnerability_alerts                    = (known after apply)
      + web_commit_signoff_required             = (known after apply)

      + security_and_analysis (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

github_repository.repository_crteation_in_GitHub_by_terraform: Creating...
github_repository.repository_crteation_in_GitHub_by_terraform: Creation complete after 7s [id=repository_crteation_in_GitHub_by_terraform]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

D:\DevOps_Cloud\DevOps\Terraform\Terraform Scripts in windows\terraform_1.15.1_windows_amd64>
