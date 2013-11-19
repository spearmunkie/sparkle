#include "mainWindow.h"
mainWindow::mainWindow(QMainWindow *parent):QMainWindow(parent) {
	
	setupUi(this);
	wid = new glSparkle;
	glContainer->addWidget( wid );
	//colorDialog = new QColorDialog;
	//colorWidget->addWidget(	colorDialog);
	//connect(actionAbout, SIGNAL(triggered()), this, SLOT(about()));
	
	connect(toggleSparks, SIGNAL(stateChanged(int)), wid, SLOT(changeMode()));

	//connect(actionQuit, SIGNAL(triggered()), this, SLOT(close()));
}

void mainWindow::about() {
	QMessageBox::about(this, tr("About glChain"),
				 tr("<h2>glChain Test</h2>"
				   "<p>Just me Playing around with QT and openGL</p>"));
}
