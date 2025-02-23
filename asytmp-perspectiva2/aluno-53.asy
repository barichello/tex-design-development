if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-53";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=false;
settings.embed=false;
settings.toolbar=true;

import three;
import graph3;
import solids;
import math;
import labelpath3;
import labelpath;
settings.render=16;
//attach=true;

pen azul = rgb(0,94/255,176/255); //azul
pen verde = rgb(75/255,173/255,49/255); //verde
pen vinho = rgb(183/255,13/255,40/255); //vinho
pen laranja = rgb(236/255,107/255,16/255); //laranja
pen agua = rgb(0,165/255,157/255); //verde agua
pen box2 = rgb(240/255,238/255,201/255);


texpreamble("\usepackage{fontspec}\setmainfont{Exo2-Light}");

settings.render=8;
size(5cm);

currentprojection=perspective(2.53,1.60,1.27);

real x(real t) {return (1+cos(2pi*t)+2)/6;}
real y(real t) {return (1+sin(2pi*t)+2)/6;}
real z(real t) {return (t+.5)/6;}

path3 p=graph(x,y,z,0,5,operator ..);

//draw(p,Arrow3);
draw(planeproject(XY*unitsquare3)*p);
draw(planeproject(YZ*unitsquare3)*p);
draw(planeproject(ZX*unitsquare3)*p);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

draw ((a -- b -- f -- e -- cycle));
draw ((a -- d -- h -- e -- cycle));
draw ((a -- b -- c -- d -- cycle));
