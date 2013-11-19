
TEMPLATE = app
TARGET = 
DESTDIR = ../projMain
DEPENDPATH += . 
INCLUDEPATH += . 
LIBS += -lIL
OBJECTS_DIR += .tmp/objs
MOC_DIR += .tmp/moc
FORMS +=   Source/particleSystemTest.ui
UI_HEADERS_DIR += .tmp/UISrc
UI_SOURCES_DIR += .tmp/UISrc

HEADERS += Source/glSparkle.h Source/image.h Source/mathUtils.h Source/mainWindow.h Source/chain.h Source/particleSystem.h
SOURCES += Source/glSparkle.cpp \
           Source/chain.cpp \
           Source/image.cpp \
           Source/main.cpp \
           Source/mathUtils.cpp \
           Source/mainWindow.cpp \
		   Source/particleSystem.cpp
	   
QT += opengl
CONFIG += opengl
