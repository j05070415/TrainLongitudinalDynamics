#-------------------------------------------------
#
# Project created by QtCreator 2018-07-21T16:53:48
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = TrainLongitudinalDynamics
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += "D:/GitHub/nodeeditor-master/include" \
                $PWD/models

DEFINES += NODE_EDITOR_SHARED

CONFIG(debug, debug|release) {
    LIBS += -l"D:/GitHub/nodeeditor-master/build/lib/Debug/nodes"
} else {
    LIBS += -l"D:/GitHub/nodeeditor-master/build/lib/Release/nodes"
}

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    framelesswindow/framelesswindow.cpp \
    framelesswindow/windowdragger.cpp \
    DarkStyle.cpp \
    models/ImageLoaderModel.cpp \
    models/ImageShowModel.cpp

HEADERS += \
        mainwindow.h \
    framelesswindow/framelesswindow.h \
    framelesswindow/windowdragger.h \
    DarkStyle.h \
    models/ImageLoaderModel.hpp \
    models/ImageShowModel.hpp

FORMS += \
        mainwindow.ui \
    framelesswindow/framelesswindow.ui

RESOURCES += widget.qrc \
             framelesswindow.qrc \
             qdarkstyle/style.qrc
