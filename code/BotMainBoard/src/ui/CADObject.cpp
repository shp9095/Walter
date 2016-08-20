#include "stdio.h"

#include "CADObject.h"
#include "util.h"

using namespace std;


bool CADObject::loadFile(string pFilename)
{
    ifstream file;
    filename = pFilename;
    file.open(filename.c_str());
    if(!file.is_open())
    {
    	LOG(ERROR) << "file " << filename << " not found" << filename;
    	return false;
    }
    file.close();
    if (parseAsciiFormat())
    	return true;

   	if (parseBinaryFormat())
   		return true;

	return false;
}



bool CADObject::parseAsciiFormat()
{
    ifstream file;
    file.open(filename.c_str());
    string line;
    bool firstLine = true;
    bool ASCIFormatDetected = false;
    Triangle triangle;
    int attrCounter = 0;
    bool normalFound = false;
    while(!file.eof())
	{
		getline(file, line);


        char *ch;
        ch = new char[line.size()+1];
        strcpy(ch,line.c_str());

        GLfloat xyz[3];

        int idx = 0;
        while ((ch[idx] == ' ') || (ch[idx] == '\t')) idx++;
        if (firstLine && (!ASCIFormatDetected) && (ch[idx]=='s' && ch[idx+1]=='o' && ch[idx+2]=='l' && ch[idx+3]=='i' && ch[idx+4]=='d'))
        	ASCIFormatDetected = true;
        if (!firstLine && !ASCIFormatDetected) {
        	file.close();
			return false; // no asci format
        }
        GLCoordinate coord;
        if ((ch[idx]=='v' && ch[idx+1]=='e' && ch[idx+2]=='r' && ch[idx+3]=='t' && ch[idx+4]=='e' && ch[idx+5]=='x'))
        {
            sscanf(&(ch[idx+7]),"%f %f %f", &xyz[0], &xyz[1], &xyz[2]);
            coord.x = xyz[0];
            coord.y = xyz[1];
            coord.z = xyz[2];

            switch (attrCounter) {
            case 0: triangle.vertex1= coord; break;
            case 1: triangle.vertex2= coord; break;
            case 2: triangle.vertex3= coord; break;
            }
            attrCounter++;
        }

        if ( (ch[idx]=='f' && ch[idx+1]=='a' && ch[idx+2]=='c' && ch[idx+3]=='e' && ch[idx+4]=='t'))
        {
        	// ignore "normal "
            sscanf(&(ch[idx+5+7]), "%f %f %f", &xyz[0], &xyz[1], &xyz[2]);
            coord.x = xyz[0];
            coord.y = xyz[1];
            coord.z = xyz[2];
            normalFound = true;
            triangle.normal = coord;
        }

        if ((attrCounter == 3) && (normalFound)) {
        	triangles.push_back(triangle);
        	normalFound = false;
        	attrCounter = 0;
        }

        firstLine = false;
    }
    file.close();
    return ASCIFormatDetected;
}



float parse_float(std::ifstream& s) {
	char f_buf[sizeof(float)];
	s.read(f_buf, 4);
	float* fptr = (float*) f_buf;
	return *fptr;
}

void parse_point(std::ifstream& s, GLCoordinate& point) {
	point.x = parse_float(s);
	point.y = parse_float(s);
	point.z = parse_float(s);
}


bool CADObject::parseBinaryFormat()
{
    string line;

    std::ifstream stl_file(filename.c_str(), std::ios::in | std::ios::binary);
    if (!stl_file) {
      std::cout << "ERROR: COULD NOT READ FILE" << std::endl;
      return false;
    }


	char header_info[80] = "";
	char n_triangles[4];
	stl_file.read(header_info, 80);
	stl_file.read(n_triangles, 4);
	std::string h(header_info);

	unsigned int* r = (unsigned int*) n_triangles;
	unsigned int num_triangles = *r;
	GLCoordinate n, v1, v2, v3;
    Triangle triangle;

	for (unsigned int i = 0; i < num_triangles; i++) {
		parse_point(stl_file, n);
		parse_point(stl_file, v1);
		parse_point(stl_file, v2);
		parse_point(stl_file, v3);

        n = computeFaceNormal(v1, v2, v3);
        triangle.normal = n;
        triangle.vertex1 = v1;
        triangle.vertex2 = v2;
        triangle.vertex3 = v3;

        triangles.push_back(triangle);

		char dummy[2];
		stl_file.read(dummy, 2);
	}
    return true;
}




GLCoordinate CADObject::computeFaceNormal(const GLCoordinate&  vec1, const GLCoordinate& vec2 ,const GLCoordinate& vec3)
{
	GLCoordinate result;

    GLfloat v1x, v1y, v1z, v2x, v2y, v2z;
    GLfloat nx, ny, nz;
    GLfloat vLen;

    v1x = vec1.x - vec2.x;
    v1y = vec1.y - vec2.y;
    v1z = vec1.z - vec2.z;

    v2x = vec2.x - vec3.x;
    v2y = vec2.y - vec3.y;
    v2z = vec2.z - vec3.z;

    // cross product
    nx = (v1y * v2z) - (v1z * v2y);
    ny = (v1z * v2x) - (v1x * v2z);
    nz = (v1x * v2y) - (v1y * v2x);

    // Normalise to get len 1
    vLen = sqrt( (nx * nx) + (ny * ny) + (nz * nz) );
    GLCoordinate val;
    if(vLen!=0)
    {
    	vLen = 1.0/ vLen;
        val.x = (nx * vLen);
        val.y = (ny * vLen);
        val.z = (nz * vLen);
    }
    else
    {
        val.x = 0;
        val.y = 0;
        val.z = 0;
    }
    result.x = val.x;
    result.y = val.y;
    result.z = val.z;

    return result;
}

void CADObject::display(GLfloat* color,GLfloat* accentColor) {

   	glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, color);
   	glColor3fv(color);

        for(unsigned int i=0; i<triangles.size(); i++)
        {
        	Triangle t = triangles[i];
            glBegin(GL_TRIANGLES);

        	GLCoordinate fnormal = t.normal;
        	GLCoordinate fvertex1 = t.vertex1;
        	GLCoordinate fvertex12 = t.vertex2;
        	GLCoordinate fvertex13 = t.vertex3;
        	GLCoordinate coord;

            if( fnormal.x == 0 && fnormal.y == 0 && fnormal.z == 0 )
            {
            	GLCoordinate coord;
                coord = computeFaceNormal(fvertex1, fvertex12, fvertex13);
                glNormal3f(coord.x, coord.y, coord.z);
                fnormal.x = coord.x;
                fnormal.y = coord.y;
                fnormal.z = coord.z;
            }
            else
                glNormal3f(fnormal.x, fnormal.y, fnormal.z);

            glVertex3f(fvertex1.x, fvertex1.y, fvertex1.z);
            glVertex3f(fvertex12.x,fvertex12.y,fvertex12.z);
            glVertex3f(fvertex13.x, fvertex13.y, fvertex13.z);
            glEnd();
        }
}
