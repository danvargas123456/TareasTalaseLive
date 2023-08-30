//source 
//geometria
//color
//fusíon 

//osc(5,0.1,2).pixelate(10,20).mult(osc(13,0.5,5)).hue(0.3).out()
src(o0).modulate(noise(5),0.005).blend(shape(4),0.01).out(o0)
