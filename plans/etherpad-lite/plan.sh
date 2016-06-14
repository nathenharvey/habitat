pkg_origin=nathenharvey
pkg_name=etherpad-lite
pkg_version=1.6.0
pkg_maintainer="Nathen Harvey <nharvey@chef.io>"
pkg_license=('Apache-2.0')
# zip file
pkg_source=https://github.com/ether/${pkg_name}/archive/${pkg_version}.zip
pkg_shasum="d0635f2904f0c06295bde9d37ec950329cea319ae2dc7d2fdedcb1a281dbbad8"

# tar.gz file
# pkg_source=https://github.com/ether/${pkg_name}/archive/${pkg_version}.tar.gz
# pkg_shasum="6506dac99a18ccd373cf0224ace4a50d0aab2c2a9d051e76f7d7f6fa5c43e30c"
pkg_deps=(core/node core/curl)
pkg_build_deps=(core/unzip)
pkg_bin_dirs=(bin)
# pkg_service_run="bin/run.sh --settings ${pkg_svc_config_path}/settings.json"
# pkg_include_dirs=(include)
# pkg_lib_dirs=(lib)
pkg_expose=(9001)

do_build() {
  # this is shell...you can't have an empty function but you can return 0 ;)
  # attach # pry-like!
  return 0
}

do_install() {
  ./bin/installDeps.sh
  cp -vr ./* ${pkg_prefix}
}
