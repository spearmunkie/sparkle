#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QColorDialog>
#include <qmessagebox.h>
#include "../.tmp/UISrc/ui_particleSystemTest.h"
#include "glSparkle.h"

class mainWindow : public QMainWindow, public Ui::MainWindow {
	Q_OBJECT
	
	public:
		mainWindow(QMainWindow *parent = 0);
	private slots:
		void about();
	private:
		glSparkle* wid;
		//QColorDialog *colorDialog;
};

#endif

