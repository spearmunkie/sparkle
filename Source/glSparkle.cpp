#include <QtGui>
#include <QtOpenGL>
#include <iostream>
#include "particleSystem.h"
#include "glSparkle.h"

glSparkle::glSparkle (QWidget *parent):QGLWidget(parent)  {
	setFormat(QGLFormat(QGL::DoubleBuffer));
	setMouseTracking(true);
	
	sparkMode = false;
	timer = new QTimer(this);
	connect(timer, SIGNAL(timeout()), this, SLOT(onTimeOut()));
	timer->start(16);
}

void glSparkle::initializeGL() {
	glClearColor (0,0,0,0);
	glShadeModel(GL_FLAT);
	glEnable(GL_TEXTURE_2D);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}

void glSparkle::resizeGL(int width, int height) {
	glViewport(0, 0, width, height);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	GLfloat x = GLfloat(width) / height;
	glOrtho (0, width, 0, height, -1, 1);
	glMatrixMode(GL_MODELVIEW);
}

void glSparkle::paintGL() {
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	sparkles.draw();
}

void glSparkle::mouseMoveEvent(QMouseEvent *event) {
	math::vec3f mousePos(event->x(), height() - event->y(), 0);
	if (event->buttons() == Qt::LeftButton) {
		if (sparkMode) {
			math::vec3f pull(0,-0.9,0);
			math::vec3f col( 1,1,1);
			sparkles.setAttributes(pull, 25,10,col);
			sparkles.spewParticles(mousePos, 0, 360, 10);
		}
		else {
			math::vec3f pull((width()/2 - event->x())/10, -(height()/2 - event->y())/10, 0);
			math::vec3f col( (float)math::randInt(150,255)/255, (float)math::randInt(0,255)/255, (float)math::randInt(0,255)/255);
			sparkles.setAttributes(pull, 25,10,col);
			sparkles.spewParticles(mousePos, 0, 360, 10);
		}
	}
}

void glSparkle::changeMode () {
	sparkMode = !sparkMode;
}

void glSparkle::onTimeOut() {
	sparkles.update(0.16);
	updateGL();

}
