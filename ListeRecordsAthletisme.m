clear all; close all; clc;

disciplines = {'100m', '200m', '400m', '800m', '1500m', '5000m', '10000m', 'Marathon', '110m haies', '400m haies', '3000m steeple', 'Relais 4x100m', 'Relais 4x400m', '20km marche', '50km marche', 'Saut en longueur', 'Triple saut', 'Saut en hauteur', 'Saut à la perche', 'Lancer du poids', 'Lancer du disque', 'Lancer du marteau', 'Lancer du javelot', 'Décathlon', '100m', '200m', '400m', '800m', '1500m', '5000m', '10000m', 'Marathon', '100m haies', '400m haies', '3000m steeple', 'Relais 4x100m', 'Relais 4x400m', '20km marche', 'Saut en longueur', 'Triple saut', 'Saut en hauteur', 'Saut à la perche', 'Lancer du poids', 'Lancer du disque', 'Lancer du marteau', 'Lancer du javelot', 'Heptathlon'};

sexes = {'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Hommes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes', 'Femmes'};

tenants = {'Usain Bolt (Jamaïque) en 2009 en 9s58', 'Usain Bolt (Jamaïque) en 2009 en 19s19', 'Wayde van Niekerk (Afrique du sud) en 2016 en 43s03', 'David Rudisha (Kenya) en 2012 en 1min40s91', 'Hicham El Guerrouj (Maroc) en 1998 en 3min25s00', 'Joshua Cheptegei (Ouganda) en 2020 en 12min35s36', 'Joshua Cheptegei (Ouganda) en 2020 en 26min11s00', 'Kelvin Kiptum (Kenya) en 2023 en 2h0min35s', 'Aries Merritt (USA) en 2012 en 12s80', 'Karsten Warholm (Norvège) en 2021 en 45s94', 'Lamecha Girma (Éthiopie) en 2023 en 7min52s11', 'Jamaïque (en 2012 en 36s84)', 'États-Unis (en 1993 2min54s29)', 'Yusuke Suzuki (Japon) en 2015 1h16min35s', 'Yohann Diniz (France) en 2014 en 3h32min33s', 'Mike Powell (USA) en 1991 à 8.95m', 'Jonathan Edwards (Royaume-Uni) en 1995 à 18.29m', 'Javier Sotomayor (Cuba) en 1993 à 2.45m', 'Armand Duplantis (Suède) en 2024 à 6.26m', 'Ryan Crouser (USA) en 2023 à 23.56m', 'Mykolas Alekna (Lituanie) en 2024 à 74.35m', 'Youri Sedykh (Union Soviétique) en 1986 à 86.74m', 'Jan Zelezny (République tchèque) en 1996 à 98.48m', 'Kevin Mayer (France) en 2018 avec 9126 points', 'Florence Griffith-Joyner (USA) en 1988 en 10s49', 'Florence Griffith-Joyner (USA) en 1988 en 21s34', 'Marita Koch (Allemagne) en 1985 en 47s60', 'Jarmila Kratochvilova (République tchèque) en 1983 en 1min53s28', 'Faith Kipyegon (Kenya) en 2024 en 3min49s04', 'Gudaf Tsegay (Éthiopie) en 2023 en 14min0s21', 'Beatrice Chebet (Kenya) en 2024 en 28min54s14', 'Ruth Chepngetich (Kenya) en 2024 en 2h9min57s', 'Tobi Amusan (Nigéria) en 2022 en 12s12', 'Sydney McLaughlin (USA) en 2024 en 50s37', 'Beatrice Chepkoech (Kenya) en 2018 en 8min44s32', 'États-Unis (en 2012 en 40s82)', 'Union Soviétique (en 1988 en 3min15s17)', 'Yang Jiayu (Chine) en 1h23min49s', 'Galina Chistyakova (Union Soviétique) en 1988 à 7.52m', 'Yulimar Rojas (Venezuela) en 2022 à 15.74m', 'Yaroslava Mahuchikh (Ukraine) en 2024 à 2.10m', 'Yelena Isinbayeva (Russie) en 2009 à 5.06m', 'Natalya Lisovskaya (Union Soviétique) en 1987 à 22.63m', 'Gabriele Reinsch (Allemagne) en 1988 à 76.80m', 'Anita Wlodarczyk (Pologne) en 2016 à 82.98m', 'Barbora Spotakova (République tchèque) en 2008 à 72.28m', 'Jackie Joyner-Kersee (USA) en 1988 avec 7291 points'};

save("ListeRecordsAthletisme.mat")