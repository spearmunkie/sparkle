#ifndef GLSPARKLE_H
#define GLSPARKLE_H

#include <QGLWidget>
#include "mathUtils.h"
#include <vector>
#include "image.h"
#include "particleSystem.h"

class glSparkle: public QGLWidget
{
    Q_OBJECT

	public:
	    glSparkle(QWidget *parent = 0);
	protected:
	    void initializeGL();
	    void resizeGL(int width, int height);
	    void paintGL();
	    void mouseMoveEvent(QMouseEvent *event);
		void setColour (int r, int g, int b);
		void setAccel (math::vec3f accell);
	protected slots:
	    void onTimeOut();
		void changeMode();
	private:
		particleSystem sparkles;
	    void draw();
	    QTimer *timer;
		bool sparkMode;
		math::vec3f colour, accel;
};

#endif
