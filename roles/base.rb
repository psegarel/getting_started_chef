name "base"
description "Base role applied to all nodes."
run_list(
  # "recipe[users::sysadmins]",
  "recipe[chef-client::bluepill]",
  "recipe[sudo]",
  "recipe[yum]",
  "recipe[build-essential]",
  "recipe[vim]",
  "recipe[git]",
) 
override_attributes(
  :authorization => {
    :sudo => {
      :users => ["centos", "vagrant"],
      :passwordless => true
    }
  }
)