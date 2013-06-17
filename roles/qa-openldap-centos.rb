name "qa-openldap-centos"
description "This will create an openldap server for RPCS QA Team"
run_list(
  "recipe[network-interfaces]",
  "recipe[yum::yum]",
  "recipe[yum::epel]",
  "recipe[openssh]",
  "recipe[openldap::server]"
)
default_attributes(  { "openldap" => {
                            "rootpw" => "{SSHA}8XIbA1eWvWxXdS1oCuPn4T9HUx9J9hvX", 
                            "basedn" => "dc=rcb,dc=me",
                            "server" => "ldap.rcbops",
                            "auth_bindpw" => "{SSHA}8XIbA1eWvWxXdS1oCuPn4T9HUx9J9hvX",
                            "slapd_type" => "master"
                            }   
                      }
                  )
