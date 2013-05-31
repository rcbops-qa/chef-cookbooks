name "qa-openldap-precise"
description "This will create an openldap server for RPCS QA Team"
run_list(
  "recipe[network-interfaces]",
  "recipe[openldap::server]"
)
default_attributes(  { "openldap" => {
                            "rootpw" => "{SSHA}865wo+Nq14BWXpNuFvYWVXROgkz0QXWO", 
                            "basedn" => "dc=dev,dc=rcbops,dc=me",
                            "server" => "ldap.rcbops",
                            "auth_bindpw" => "{SSHA}865wo+Nq14BWXpNuFvYWVXROgkz0QXWO",
                            "slapd_type" => "master"
                            }   
                      }
                  )
