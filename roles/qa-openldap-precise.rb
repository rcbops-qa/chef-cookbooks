name "qa-openldap-precise"
description "This will create an openldap server for RPCS QA Team"
run_list(
  "recipe[network-interfaces]",
  "recipe[openldap::server]"
)
default_attributes(  { "openldap" => {
                            "rootpw" => "{SSHA}Fu58XhERv/UK+xYN5yOmYSK9oXjMHQZK", 
                            "basedn" => "dc=dev,dc=rcbops,dc=me",
                            "server" => "ldap.rcbops",
                            "auth_bindpw" => "{SSHA}Fu58XhERv/UK+xYN5yOmYSK9oXjMHQZK",
                            "slapd_type" => "master"
                            }   
                      }
                  )
