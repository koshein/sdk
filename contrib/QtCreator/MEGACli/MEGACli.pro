CONFIG(debug, debug|release) {
    CONFIG -= debug release
    CONFIG += debug
}
CONFIG(release, debug|release) {
    CONFIG -= debug release
    CONFIG += release
}

TARGET = MEGAcmd
TEMPLATE = app
CONFIG += console
CONFIG += USE_MEGAAPI

win32 {
DEFINES += USE_READLINE_STATIC
}

LIBS += -lreadline

win32 {
    SOURCES += ../../../src/wincurl/console.cpp
    SOURCES += ../../../src/wincurl/consolewaiter.cpp
}
else {
    SOURCES += ../../../src/posix/console.cpp
    SOURCES += ../../../src/posix/consolewaiter.cpp
}

#SOURCES += ../../../examples/megacli.cpp
#HEADERS += ../../../examples/megacli.h
SOURCES += ../../../examples/megacmd.cpp
HEADERS += ../../../examples/megacmd.h
include(../../../bindings/qt/sdk.pri)
