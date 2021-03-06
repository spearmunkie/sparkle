#############################################################################
# Makefile for building: projMain
# Generated by qmake (2.01a) (Qt 4.7.1) on: Thu Feb 17 13:52:26 2011
# Project:  projMain.pro
# Template: app
# Command: /usr/bin/qmake -o Makefile projMain.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -march=x86-64 -mtune=generic -O2 -pipe -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -march=x86-64 -mtune=generic -O2 -pipe -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt/mkspecs/linux-g++-64 -I. -I/usr/include/QtCore -I/usr/include/QtGui -I/usr/include/QtOpenGL -I/usr/include -I. -I/usr/X11R6/include -I.tmp/moc -I.tmp/UISrc
LINK          = g++
LFLAGS        = -m64 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/X11R6/lib64 -L/usr/lib -lIL -lGLU -lGL -lQtOpenGL -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = .tmp/objs/

####### Files

SOURCES       = Source/glSparkle.cpp \
		Source/chain.cpp \
		Source/image.cpp \
		Source/main.cpp \
		Source/mathUtils.cpp \
		Source/mainWindow.cpp \
		Source/particleSystem.cpp .tmp/moc/moc_glSparkle.cpp \
		.tmp/moc/moc_mainWindow.cpp
OBJECTS       = .tmp/objs/glSparkle.o \
		.tmp/objs/chain.o \
		.tmp/objs/image.o \
		.tmp/objs/main.o \
		.tmp/objs/mathUtils.o \
		.tmp/objs/mainWindow.o \
		.tmp/objs/particleSystem.o \
		.tmp/objs/moc_glSparkle.o \
		.tmp/objs/moc_mainWindow.o
DIST          = /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/release.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/unix/opengl.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		projMain.pro
QMAKE_TARGET  = projMain
DESTDIR       = 
TARGET        = projMain

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): .tmp/UISrc/ui_particleSystemTest.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: projMain.pro  /usr/share/qt/mkspecs/linux-g++-64/qmake.conf /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/release.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/unix/opengl.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtOpenGL.prl \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -o Makefile projMain.pro
/usr/share/qt/mkspecs/common/g++.conf:
/usr/share/qt/mkspecs/common/unix.conf:
/usr/share/qt/mkspecs/common/linux.conf:
/usr/share/qt/mkspecs/qconfig.pri:
/usr/share/qt/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt/mkspecs/features/qt_functions.prf:
/usr/share/qt/mkspecs/features/qt_config.prf:
/usr/share/qt/mkspecs/features/exclusive_builds.prf:
/usr/share/qt/mkspecs/features/default_pre.prf:
/usr/share/qt/mkspecs/features/release.prf:
/usr/share/qt/mkspecs/features/default_post.prf:
/usr/share/qt/mkspecs/features/unix/opengl.prf:
/usr/share/qt/mkspecs/features/warn_on.prf:
/usr/share/qt/mkspecs/features/qt.prf:
/usr/share/qt/mkspecs/features/unix/thread.prf:
/usr/share/qt/mkspecs/features/moc.prf:
/usr/share/qt/mkspecs/features/resources.prf:
/usr/share/qt/mkspecs/features/uic.prf:
/usr/share/qt/mkspecs/features/yacc.prf:
/usr/share/qt/mkspecs/features/lex.prf:
/usr/share/qt/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtOpenGL.prl:
/usr/lib/libQtGui.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile projMain.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/objs/projMain1.0.0 || $(MKDIR) .tmp/objs/projMain1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/objs/projMain1.0.0/ && $(COPY_FILE) --parents Source/glSparkle.h Source/image.h Source/mathUtils.h Source/mainWindow.h Source/chain.h Source/particleSystem.h .tmp/objs/projMain1.0.0/ && $(COPY_FILE) --parents Source/glSparkle.cpp Source/chain.cpp Source/image.cpp Source/main.cpp Source/mathUtils.cpp Source/mainWindow.cpp Source/particleSystem.cpp .tmp/objs/projMain1.0.0/ && $(COPY_FILE) --parents Source/particleSystemTest.ui .tmp/objs/projMain1.0.0/ && (cd `dirname .tmp/objs/projMain1.0.0` && $(TAR) projMain1.0.0.tar projMain1.0.0 && $(COMPRESS) projMain1.0.0.tar) && $(MOVE) `dirname .tmp/objs/projMain1.0.0`/projMain1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/objs/projMain1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: .tmp/moc/moc_glSparkle.cpp .tmp/moc/moc_mainWindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) .tmp/moc/moc_glSparkle.cpp .tmp/moc/moc_mainWindow.cpp
.tmp/moc/moc_glSparkle.cpp: Source/mathUtils.h \
		Source/image.h \
		Source/particleSystem.h \
		Source/chain.h \
		Source/glSparkle.h
	/usr/bin/moc $(DEFINES) $(INCPATH) Source/glSparkle.h -o .tmp/moc/moc_glSparkle.cpp

.tmp/moc/moc_mainWindow.cpp: .tmp/UISrc/ui_particleSystemTest.h \
		Source/glSparkle.h \
		Source/mathUtils.h \
		Source/image.h \
		Source/particleSystem.h \
		Source/chain.h \
		Source/mainWindow.h
	/usr/bin/moc $(DEFINES) $(INCPATH) Source/mainWindow.h -o .tmp/moc/moc_mainWindow.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: .tmp/UISrc/ui_particleSystemTest.h
compiler_uic_clean:
	-$(DEL_FILE) .tmp/UISrc/ui_particleSystemTest.h
.tmp/UISrc/ui_particleSystemTest.h: Source/particleSystemTest.ui
	/usr/bin/uic Source/particleSystemTest.ui -o .tmp/UISrc/ui_particleSystemTest.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

.tmp/objs/glSparkle.o: Source/glSparkle.cpp Source/particleSystem.h \
		Source/chain.h \
		Source/image.h \
		Source/mathUtils.h \
		Source/glSparkle.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/glSparkle.o Source/glSparkle.cpp

.tmp/objs/chain.o: Source/chain.cpp Source/chain.h \
		Source/image.h \
		Source/mathUtils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/chain.o Source/chain.cpp

.tmp/objs/image.o: Source/image.cpp Source/image.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/image.o Source/image.cpp

.tmp/objs/main.o: Source/main.cpp Source/mainWindow.h \
		.tmp/UISrc/ui_particleSystemTest.h \
		Source/glSparkle.h \
		Source/mathUtils.h \
		Source/image.h \
		Source/particleSystem.h \
		Source/chain.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/main.o Source/main.cpp

.tmp/objs/mathUtils.o: Source/mathUtils.cpp Source/mathUtils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/mathUtils.o Source/mathUtils.cpp

.tmp/objs/mainWindow.o: Source/mainWindow.cpp Source/mainWindow.h \
		.tmp/UISrc/ui_particleSystemTest.h \
		Source/glSparkle.h \
		Source/mathUtils.h \
		Source/image.h \
		Source/particleSystem.h \
		Source/chain.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/mainWindow.o Source/mainWindow.cpp

.tmp/objs/particleSystem.o: Source/particleSystem.cpp Source/particleSystem.h \
		Source/chain.h \
		Source/image.h \
		Source/mathUtils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/particleSystem.o Source/particleSystem.cpp

.tmp/objs/moc_glSparkle.o: .tmp/moc/moc_glSparkle.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/moc_glSparkle.o .tmp/moc/moc_glSparkle.cpp

.tmp/objs/moc_mainWindow.o: .tmp/moc/moc_mainWindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .tmp/objs/moc_mainWindow.o .tmp/moc/moc_mainWindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

