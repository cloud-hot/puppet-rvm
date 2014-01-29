class rvm($branch='master', $version='latest', $install_rvm=true) {
#  stage { 'rvm-install': before => Stage['main'] }

  if $install_rvm {
    class {
      'rvm::dependencies': before => Class['rvm::system'];
      'rvm::system':       branch => $branch, version => $version;
    }
  }
}
