#include "particleSystem.h"
#include <iostream>

particle::particle () {
	colour = math::vec3f(1,1,1);
	maxLife = 500;
	alive = 0;
	springConst = 0.25;
	for(int i=0; i<10; i++) {
		addChainPoint();
	}
	setRadius(3);
}

void particle::createParticle(math::vec3f pos, math::vec3f vel, math::vec3f acell, float mxLife, math::vec3f col) {
	position = pos;
	velocity = vel;
	maxLife = mxLife;
	acceleration = acell;
	colour = col;
	alive = 0;
	alpha = 1;
	setPosition(pos);
}

bool particle::isAlive () {
	return maxLife >= alive;
}

void particle::update (float time, math::vec3f acell) {
	if (isAlive()) {
		chain::update ();
		velocity += acell*time;
		position += velocity*time;
		setPosition (position);
		alive += time;
		alpha = 1 - alive/maxLife;
	}
}

particleSystem::particleSystem () {
	particleLife = 25;
	toSpew = 10;
	maximumParticles = 5000;
	numAlive = 0;
	currentParticle = 0;
	particles.resize(maximumParticles);
	colour = math::vec3f(1,1,1);
	acceleration = math::vec3f(0.0f, -0.90f, 0.0f);
}

void particleSystem::update (float time) {
	for(int i = 0; i<numAlive; i++) {
		if (particles[i].isAlive()) { 
			particles[i].update(time, acceleration);
		}
	}
}

void particleSystem::setAttributes(math::vec3f accel, float maxLife, int spew, math::vec3f col) {
	acceleration = accel;
	particleLife = maxLife;
	toSpew = spew;
	colour = col;
}

void particleSystem::spewParticles (math::vec3f pos, int minAng, int maxAng, float force) {
	for(int i=0; i<toSpew; i++) {
		int angle = math::randInt(minAng, maxAng);
		math::vec3f vel(force*cos(angle/math::DEG_TO_RAD),
							force*sin(angle/math::DEG_TO_RAD), 0);
		particles[currentParticle].createParticle(pos, vel, acceleration, particleLife, colour);
		numAlive += 1;
		currentParticle = (currentParticle + 1) % maximumParticles;
		if (currentParticle > numAlive) currentParticle = 0;
		if (numAlive > maximumParticles) {
			numAlive = maximumParticles;
		}
	}
}

void particleSystem::setMaxParticles (int maxParticle) {
	maximumParticles = maxParticle;
}

void particleSystem::draw () {
	for(int i=0; i<numAlive; i++) {
		if (particles[i].isAlive()) {
			particles[i].draw();
		}
	}
}

