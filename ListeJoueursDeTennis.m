clear all; close all; clc;

joueurs = {'Ken Rosewall', 'Rod Laver', 'Arthur Ashe', 'Jan Kodes', 'John Newcombe', 'Stan Smith', 'Andrés Gimeno', 'Ilie Nastase', 'Jimmy Connors', 'Bjorn Borg', 'Manuel Orantes', 'Mark Edmondson', 'Adriano Panatta', 'Roscoe Tanner', 'Guillermo Vilas', 'Vitas Gerulaitis', 'John McEnroe', 'Brian Teacher', 'Johan Kriek', 'Mats Wilander', 'Yannick Noah', 'Ivan Lendl', 'Boris Becker', 'Stefan Edberg', 'Pat Cash', 'Michael Chang', 'Andrés Gomez', 'Pete Sampras', 'Jim Courier', 'Michael Stich', 'Andre Agassi', 'Sergi Bruguera', 'Thomas Muster', 'Ievgueni Kafelnikov', 'Richard Krajicek', 'Gustavo Kuerten', 'Patrick Rafter', 'Petr Korda', 'Carlos Moya', 'Alex Corretja', 'Marat Safin', 'Goran Ivanisevic', 'Lleyton Hewitt', 'Thomas Johansson', 'Albert Costa', 'Juan Carlos Ferrero', 'Roger Federer', 'Andy Roddick', 'Gaston Gaudio', 'Rafael Nadal', 'David Nalbandian', 'Novak Djokovic', 'Juan Martin del Potro', 'Nikolay Davydenko', 'Andy Murray', 'Stanislas Wawrinka', 'Marin Cilic', 'Grigor Dimitrov', 'Alexander Zverev', 'Stefanos Tsitispas', 'Dominic Thiem', 'Daniil Medvedev', 'Carlos Alcaraz', 'Jannik Sinner'};

titres = {'8 (4-2-0-2) et 0', '11 (3-2-4-2) et 0', '3 (1-0-1-1) et 0', '3 (0-2-1-0) et 0', '7 (2-0-3-2) et 0', '2 (0-0-1-1) et 1', '1 (0-1-0-0) et 0', '2 (0-1-0-1) et 4', '8 (1-0-2-5) et 1', '11 (0-6-5-0) et 2', '1 (0-0-0-1) et 1', '1 (1-0-0-0) et 0', '1 (0-1-0-0) et 0', '1 (1-0-0-0) et 0', '4 (2-1-0-1) et 1', '1 (1-0-0-0) et 0', '7 (0-0-3-4) et 3', '1 (1-0-0-0) et 0', '2 (2-0-0-0) et 0', '7 (3-3-0-1) et 0', '1 (0-1-0-0) et 0', '8 (2-3-0-3) et 5', '6 (2-0-3-1) et 3', '6 (2-0-2-2) et 1', '1 (0-0-1-0) et 0', '1 (0-1-0-0) et 0', '1 (0-1-0-0) et 0', '14 (2-0-7-5) et 5', '4 (2-2-0-0) et 0', '1 (0-0-1-0) et 1', '8 (4-1-1-2) et 1', '2 (0-2-0-0) et 0', '1 (0-1-0-0) et 0', '2 (1-1-0-0) et 0', '1 (0-0-1-0) et 0', '3 (0-3-0-0) et 1', '2 (0-0-0-2) et 0', '1 (1-0-0-0) et 0', '1 (0-1-0-0) et 0', '0 (0-0-0-0) et 1', '2 (1-0-0-1) et 0', '1 (0-0-1-0) et 0', '2 (0-0-1-1) et 2', '1 (1-0-0-0) et 0', '1 (0-1-0-0) et 0', '1 (0-1-0-0) et 0', '20 (6-1-8-5) et 6', '1 (0-0-0-1) et 0', '1 (0-1-0-0) et 0', '22 (2-14-2-4) et 0', '0 (0-0-0-0) et 1', '24 (10-3-7-4) et 7', '1 (0-0-0-1) et 0', '0 (0-0-0-0) et 1', '3 (0-0-2-1) et 1', '3 (1-1-0-1) et 0', '1 (0-0-0-1) et 0', '0 (0-0-0-0) et 1', '0 (0-0-0-0) et 2', '0 (0-0-0-0) et 1', '1 (0-0-0-1) et 0', '1 (0-0-0-1) et 1', '4 (0-1-2-1) et 0', '2 (1-0-0-1) et 1'};

save("ListeJoueursDeTennis.mat");