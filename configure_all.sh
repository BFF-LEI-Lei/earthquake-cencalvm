../src/configure --prefix=/home/tools/cencalvm \
    --enable-testing \
    --enable-documentation \
    --config-cache \
    CPPFLAGS="-I${ETREE_INCDIR} -I${PROJ4_INCDIR} -I${CPPUNIT_INCDIR}" \
    LDFLAGS="-L${ETREE_LIBDIR} -L${PROJ4_LIBDIR} -L${CPPUNIT_LIBDIR}" \
