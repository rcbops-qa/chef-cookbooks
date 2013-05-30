name "qa-openldap-precise"
description "This will create an openldap server for RPCS QA Team"
run_list(
  "recipe[network-interfaces]",
  "recipe[openldap::server]"
)
default_attributes(  { "openldap" => {
                            "rootpw" => "{SSHA}WAIUIwjUCgtv3UmoR2Sou3c+u3NAj85g", 
                            "basedn" => "dc=dev,dc=rcbops,dc=me",
                            "server" => "ldap.rcbops",
                            "auth_bindpw" => "{SSHA}WAIUIwjUCgtv3UmoR2Sou3c+u3NAj85g",
                            "slapd_type" => "master"
                            }   
                      }
                  )
