name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[users::sysadmins]",
  "recipe[sudo]",
  "recipe[yum]",
  "recipe[git]",
  "recipe[build-essential]",
  "recipe[vim]"
) 
override_attributes(
  :authorization => {
    :sudo => {
      :users => ["centos", "vagrant"],
      :passwordless => true
    }
  }
)