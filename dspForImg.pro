#-------------------------------------------------
#
# Project created by QtCreator 2017-09-28T15:14:30
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = dspForImg
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        display.cpp \
    imageformat.cpp \
    videoreader.cpp \
    imgprocesser.cpp

HEADERS += \
        display.h \
    imageformat.h \
    videoreader.h \
    imgprocesser.h

FORMS += \
        display.ui

win32 {
    INCLUDEPATH += E:\downloads\opencv\build\include\
                   E:\downloads\opencv\build\include\opencv\
                   E:\downloads\opencv\build\include\opencv2
    LIBS += E:\downloads\opencv\build\x64\vc15/lib/opencv_*.lib
} else { # default is ubuntu
    INCLUDEPATH += /usr/local/include \
                    /usr/local/include/opencv \
                    /usr/local/include/opencv2
    LIBS += /usr/local/lib/libopencv_*.so
}
