// Creación audiovisual con lenguajes de programación sesión 3

// prendemos supercollider
s.boot;
// apagamos supercollider
s.quit;

// medidores
s.meter;
s.scope;
s.freqscope;

// SynthDef

(
SynthDef(\misinte,{|frec=440, amp=0.5|
	var sen, env;
	sen=SinOsc.ar(frec, 0, amp);
	env=EnvGen.kr(Env.new([0,1,0],[0.1,0.1]),doneAction:2);
	Out.ar(0, sen*env)
}).add
);

// Llamar a un SynthDef
a=Synth(\misinte,[\frec, rrand(550,780)]);

// liberar un Synth
a.free;

// ayuda de SynthDef
SynthDef.help;

// envolvente
Env.help;
Env.new([0,1,0.5,0.5,0],[0.1,0.1,0.1,0.5]).plot;
.plot
.perc
.asr

// Pdef o definicón de patrón

(Pdef(\sec,
  ~sec1=Pbind(\instrument,\misinte,
		\dur, Pseq([0.25,0.50,0.125],inf),
		\frec, Pseq([1500,1600,780],inf),
		\amp, 1
	)
).play;
);

~sec1.play;
~sec1.stop;