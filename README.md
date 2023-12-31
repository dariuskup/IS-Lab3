# IS-Lab3 (LT)
Intelektualiosios sistemos. Trečiojo laboratorinio darbo užduotis.
# Tikslas
Išmokti savarankiškai suprogramuoti paprasto netiesinio aproksimatoriaus, grįsto Spindulio tipo bazinių funkcijų tinklu, mokymo (parametrų skaičiavimo) algoritmą.
# Užduotys (maks. 8 balai)
1. Sukurkite spindulio tipo bazinių funkcijų (SBF) tinklo parametrams apskaičiuoti skirtą programą. SBF turi atlikti aproksimatoriaus funkciją. SBF struktūra:
- vienas įėjimas (įėjime paduodamas 20 skaičių vektorius X, su reikšmėmis intervale nuo 0 iki 1, pvz., x = 0.1:1/22:1; ).
- vienas išėjimas (pvz., išėjime tikimasi tokio norimo atsako, kurį galima būtų apskaičiuoti pagal formulę: y = (1 + 0.6\*sin(2\*pi\*x/0.7)) + 0.3\*sin(2\*pi\*x))/2; - kuriamas neuronų tinklas turėtų "modeliuoti/imituoti šios formulės elgesį" naudodamas visiškai kitokią matematinę išraišką nei ši);
- dvi spindulio tipo funkcijos (naudokite Gauso funkcijas: F = exp(-(x-c)^2/(2*r^2)));
- centrų reikšmes c1 ir c2, spindulių reikšmes r1 ir r2 parinkite rankiniu būdu;
- tiesine aktyvavimo funkcija išėjimo neurone;
- mokymo algoritmas skirtas išėjimo parametrams w1, w2 ir w0 apskaičiuoti - toks pat kaip ir perceptrono mokyme (1 LD).
# Papildoma užduotis (papildomi 2 balai)
Apmokykite SBF tinklą kitu algoritmu, kuris taip pat atnaujina/parenka automatiškai ir centrų c1, c2 bei spindulių r1, r2 reikšmes.
