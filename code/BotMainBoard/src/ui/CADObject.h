#include <iostream>
#include <string>
#include <cstring>
#include <fstream>
#include <vector>
#include <math.h>

#include <GL/glut.h>

using namespace std;

#ifndef OBJECT_H
#define OBJECT_H


class GLCoordinate
{
    public:
	GLCoordinate() {
            x = 0.0;
            y= 0.0;
            z = 0.0;
        }
        virtual ~GLCoordinate() {};
        GLCoordinate(GLfloat *_xyz) {
            x = _xyz[0];
            y = _xyz[1];
            y = _xyz[2];
        }
        GLCoordinate(GLfloat px, GLfloat py, GLfloat pz) {
            x = px;
            y = py;
            z = pz;
        }

        void setCoordinate(GLfloat *_xyz) {
            x= _xyz[0];
            y = _xyz[1];
            z = _xyz[2];
        }
        GLfloat getCoordinate(int _index) {
        	switch (_index) {
        	case 0: return x;
        	case 1: return y;
        	case 2: return z;
        	}
            return -1;
        }
       GLfloat x;
       GLfloat y;
       GLfloat z;

};

class CADObject
{
    public:
        CADObject() {};
        bool loadFile(string filename);
        void display(GLfloat* color,GLfloat* accentColor);


    private:
        bool parseAsciiFormat();
        bool parseBinaryFormat();

        vector<GLCoordinate> getVertex();
        vector<GLCoordinate> getNormals();

        GLCoordinate computeFaceNormal(GLfloat*  vec1, GLfloat* vec2 ,GLfloat* vec3);

        vector<GLCoordinate> vertex;
        vector<GLCoordinate> normal;
        string filename;
};

#endif // OBJECT_H
