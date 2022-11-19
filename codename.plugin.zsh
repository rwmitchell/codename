# Add OS codename to prompt
#
# $MyId$
# $Source$
# $Date$

# Determine OS
function codename() {
  case $(uname -s) in
    Darwin)
      osver=$(printf "%d" $(sw_vers -productVersion | sed 's/\..*//'))
      case $osver in
        13) oscode="Ventura";  ;;
        12) oscode="Monterey"; ;;
        11) oscode="Big Sur";  ;;
        10) oscode="Catalina"; ;;  # or any version older
        *)  oscode="Unknown";  ;;
      esac
      ;;
    Linux)
      eval $( grep CODENAME /etc/os-release )
      oscode=$VERSION_CODENAME
      ;;
    *)
      printf "Unexpected OS: %s\n" "$(uname -s)"
      ;;
  esac

  printf "%s\n" $oscode
}
