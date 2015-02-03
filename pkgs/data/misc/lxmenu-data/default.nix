{ stdenv, fetchurl, intltool }:

stdenv.mkDerivation rec {
  name = "lxmenu-data-${version}";
  version = "0.1.4";

  src = fetchurl {
    url = "http://downloads.sourceforge.net/lxde/${name}.tar.xz";
    sha256 = "077v9cbvw72rv9xls9ck9g2jgcgf63mnv4m2y3dq1b2civ4gn0l8";
  };

  buildInputs = [ intltool ];

  meta = with stdenv.lib; {
    homepage = "http://blog.lxde.org/?tag=lxmenu-data";
    license = licenses.gpl2Plus;
    description = "LXDE freedesktop.org menu specification";
    maintainers = [ maintainers.lfont ];
    platforms = platforms.linux;
  };
}
