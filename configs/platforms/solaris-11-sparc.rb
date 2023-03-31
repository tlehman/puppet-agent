platform "solaris-11-sparc" do |plat|
  plat.servicedir "/lib/svc/manifest"
  plat.defaultdir "/lib/svc/method"
  plat.servicetype "smf"
  plat.cross_compiled true
  plat.vmpooler_template "solaris-11-x86_64"
  plat.add_build_repository 'http://ci-ipsrepo-prod-1.delivery.puppetlabs.net', 'puppetlabs.com'
  plat.install_build_dependencies_with "pkg install ", " || [[ $? -eq 4 ]]"
  plat.output_dir File.join("solaris", "11", "puppet7")
end
