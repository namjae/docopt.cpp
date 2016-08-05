DOCOPT_ROOT=$$(DOCOPT_ROOT) # get env var


isEmpty(DOCOPT_ROOT):DOCOPT_ROOT = $$PWD # fallback to default
else:DOCOPT_ROOT=$${DOCOPT_ROOT}

message("DOCOPT_ROOT=" $${DOCOPT_ROOT})

INCLUDEPATH += $${DOCOPT_ROOT}

HEADERS += $${DOCOPT_ROOT}/docopt.h \
        $${DOCOPT_ROOT}/docopt_private.h \
        $${DOCOPT_ROOT}/docopt_util.h \
        $${DOCOPT_ROOT}/docopt_value.h

SOURCES += $${DOCOPT_ROOT}/docopt.cpp

*-g++* {
    #QMAKE_CXXFLAGS += -Wno-unknown-pragmas
    QMAKE_CFLAGS_WARN_ON += -Wno-unknown-pragmas
    QMAKE_CXXFLAGS_WARN_ON += -Wno-unknown-pragmas
}

*-msvc* {
    #QMAKE_CXXFLAGS += -Wno-unknown-pragmas
    QMAKE_CFLAGS_WARN_ON += -Wno-unknown-pragmas
    QMAKE_CXXFLAGS_WARN_ON += -Wno-unknown-pragmas
}
