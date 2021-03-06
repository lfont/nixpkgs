{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "fzy-${version}";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "jhawthorn";
    repo = "fzy";
    rev = version;
    sha256 = "1gkzdvj73f71388jvym47075l9zw61v6l8wdv2lnc0mns6dxig0k";
  };

  makeFlags = "PREFIX=$(out)";

  meta = with stdenv.lib; {
    description = "A better fuzzy finder";
    homepage = https://github.com/jhawthorn/fzy;
    license = licenses.mit;
    maintainers = with maintainers; [ dywedir ];
    platforms = platforms.all;
  };
}
