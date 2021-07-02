md build
cd build

cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPOE="Release" ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^ 
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_LIBDIR=lib ..

if errorlevel 1 exit 1

make
if errorlevel 1 exit 1

make install
if errorlevel 1 exit 1
