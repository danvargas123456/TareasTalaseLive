
(
~miPdef = Pdef(\miEstructura, Pbind(
    \instrument, \sine,
    \dur, Pseq([0.25, 0.5, 0.125, 0.25], inf),
    \amp, Pseq([0.5, 0.7, 0.4, 0.6], inf),
    \freq, Pseq([440, 660, 880, 330], inf),
    \out, 0
));
);


~miPdef.put(\miParametro, Pseq([0.1, 0.2, 0.3, 0.4], inf)); 