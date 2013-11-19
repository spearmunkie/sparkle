#include "chain.h"
#include <cmath>
#include <GL/gl.h>

GLuint circle;
GLuint cirTex;
int initiated = 0;

void genDisplayList() {
   initiated = 1;
	circle=glGenLists(1);
	glNewList(circle, GL_COMPILE);

	glBegin(GL_QUADS);
		   glTexCoord2f(0,0);glVertex2i(0,0); 
        	glTexCoord2f(1,0);glVertex2i(1,0);
        	glTexCoord2f(1,1);glVertex2i(1,1);
        	glTexCoord2f(0,1);glVertex2d(0,1);
	glEnd();
	glEndList();
	image tmp;
	cirTex = tmp.load("Images/circle.png");
}

void chainPoint::draw(float size) {
   if(initiated == 0) genDisplayList();
	glBindTexture(GL_TEXTURE_2D,cirTex);
	glTranslated(position[0], position[1],0);
	glScalef(-size,size,1);
	glCallList(circle);
}

chain::chain (int size, math::vec3f col ) {
	myChain.resize(size);
	colour = col;
	alpha = 0.5;
}

void chain::addChainPoint() {
	myChain.resize (myChain.size() + 1);
}

void chain::addChainPoint (math::vec3f pos) {
	chainPoint toAdd;
	toAdd.position =pos;
	myChain.push_back(toAdd);
}

void chain::removeChainPoint () {
	myChain.pop_back ();
}

/*void chain::setEquilibrium (int min) {
	equilibriumSize = min;
}
*/
void chain::setRadius (int rad) {
	chainHeadSize = rad;
}

void chain::setSpringConst (float k) {
	springConst = k;
}

void chain::setPosition (math::vec3f pos) {
	myChain[0].position = pos;
}

void chain::update () {
	for (int i=1; i<myChain.size(); i++) {
	   float prevRadius = 1.25*((float)chainHeadSize*(1 - (float)(i - 1)/myChain.size()) )/2;
		float dist = math::distance(myChain[i-1].position, myChain[i].position);// - prevRadius;
		float force = springConst*dist;
		float angle = 180 - math::getAngle(myChain[i-1].position, myChain[i].position);
		
		myChain[i].velocity[0] = force*cos(angle/math::DEG_TO_RAD);
		myChain[i].velocity[1] = force*sin(angle/math::DEG_TO_RAD);

		myChain[i].position += myChain[i].velocity;
		if (math::distance(myChain[i-1].position, myChain[i].position) > prevRadius) {
		   myChain[i].position = myChain[i-1].position;
		   myChain[i].position[0] -= prevRadius*cos(angle/math::DEG_TO_RAD);
		   myChain[i].position[1] -= prevRadius*sin(angle/math::DEG_TO_RAD);
		}
	}
}

void chain::draw () {
	for(int i = myChain.size() - 1; i>=0; i--) {
		glPushMatrix();
		glLoadIdentity();
		float radius = ((float)chainHeadSize*(1 - (float)i/myChain.size()) );
		glTranslated(radius/2, -radius/2, 0);
	   glColor4f(colour[0] * (1 - (float)i/myChain.size()),
			   colour[1] *(1 - (float)i/myChain.size()),
			   colour[2]*(1 - (float)i/myChain.size()), 
			   alpha*(1 - (float)i/(myChain.size() )));
		myChain[i].draw(radius);
		//std::cout<<"i="<<i<<"r="<<radius<<std::endl;
		glPopMatrix();
	}
//	std::cout<<0/myChain.size()<<std::endl;
}

void chain::resetChain () {
	for(int i = 0; i<myChain.size(); i++) {
		myChain[i].position = myChain[0].position;
	}
}

