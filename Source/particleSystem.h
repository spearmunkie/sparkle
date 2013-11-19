#ifndef PARTICLESYSTEM_H
#define PARTICLESYSTEM_H

#include "chain.h"
#include <vector>
#include <GL/gl.h>

class particle: public chain {
	public:
		particle ();
		void createParticle(math::vec3f pos, math::vec3f vel, math::vec3f acell, float mxLife, math::vec3f col);
		bool isAlive();
		void update (float time, math::vec3f acell);
	private:
		float maxLife, alive;
		math::vec3f position, velocity, acceleration;
};

class particleSystem {
	public:
		particleSystem();
		void update (float time);
		void setAttributes (math::vec3f accel, float maxLife, int spew, math::vec3f col);
		
		void spewParticles (math::vec3f pos, int minAng, int maxAng, float force);
		void setMaxParticles(int maxParticle);
		void draw ();
	private:
		float particleLife;
		math::vec3f colour, acceleration;
		int toSpew, maximumParticles, numAlive, currentParticle;
		std::vector<particle> particles;

};
#endif
