#ifndef CHAIN_H
#define CHAIN_H

#include <vector>
#include "image.h"
#include "mathUtils.h"

class chainPoint {
	public:
		math::vec3f velocity;
		math::vec3f position;

		void draw(float size);
};

class chain {
	public:
		chain (int size=1,math::vec3f col=math::vec3f(1,1,1) );

		void addChainPoint ();
		void addChainPoint (math::vec3f pos);
		void removeChainPoint ();
		void setEuilibrium (int min);
		void setRadius (int rad);
		void setSpringConst (float k);
		void setPosition (math::vec3f pos);
		void resetChain ();
		void update ();
		void draw ();
	protected:
		math::vec3f colour;
		std::vector<chainPoint> myChain;
		int equilibriumSize;
		float springConst, alpha;
		int chainHeadSize;
};
#endif
