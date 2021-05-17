cp 0008-add-intl-to-pkg-file.patch packages/mingw-w64-fontconfig || exit 1
cd packages || exit 1
git apply --ignore-space-change --ignore-whitespace '../mingw-w64-fontconfig.patch' || exit 1
cd mingw-w64-fontconfig || exit 1
dos2unix PKGBUILD || exit 1
MINGW_ARCH=mingw32 makepkg-mingw -sLf --nosign --noconfirm --skippgpcheck --noprogressbar --skipchecksums || exit 1
