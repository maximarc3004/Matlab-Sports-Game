clear all; close all; clc;

annees = {'1968', '1968', '1968', '1969', '1969', '1969', '1969', '1970', '1970', '1970', '1970', '1970', '1971', '1971', '1971', '1971', '1971', '1972', '1972', '1972', '1972', '1972', '1973', '1973', '1973', '1973', '1973', '1974', '1974', '1974', '1974', '1974', '1975', '1975', '1975', '1975', '1975', '1976', '1976', '1976', '1976', '1976', '1977 (1)', '1977', '1977', '1977', '1977 (2)', '1978', '1978', '1978', '1978', '1978', '1979', '1979', '1979', '1979', '1979', '1980', '1980', '1980', '1980', '1980', '1981', '1981', '1981', '1981', '1981', '1982', '1982', '1982', '1982', '1982', '1983', '1983', '1983', '1983', '1983', '1984', '1984', '1984', '1984', '1984', '1985', '1985', '1985', '1985', '1985', '1986', '1986', '1986', '1986', '1986', '1987', '1987', '1987', '1987', '1987', '1988', '1988', '1988', '1988', '1988', '1989', '1989', '1989', '1989', '1989', '1990', '1990', '1990', '1990', '1990', '1991', '1991', '1991', '1991', '1991', '1992', '1992', '1992', '1992', '1992', '1993', '1993', '1993', '1993', '1993', '1994', '1994', '1994', '1994', '1994', '1995', '1995', '1995', '1995', '1995', '1996', '1996', '1996', '1996', '1996', '1997', '1997', '1997', '1997', '1997', '1998', '1998', '1998', '1998', '1998', '1999', '1999', '1999', '1999', '1999', '2000', '2000', '2000', '2000', '2000', '2001', '2001', '2001', '2001', '2001', '2002', '2002', '2002', '2002', '2002', '2003', '2003', '2003', '2003', '2003', '2004', '2004', '2004', '2004', '2004', '2005', '2005', '2005', '2005', '2005', '2006', '2006', '2006', '2006', '2006', '2007', '2007', '2007', '2007', '2007', '2008', '2008', '2008', '2008', '2008', '2009', '2009', '2009', '2009', '2009', '2010', '2010', '2010', '2010', '2010', '2011', '2011', '2011', '2011', '2011', '2012', '2012', '2012', '2012', '2012', '2013', '2013', '2013', '2013', '2013', '2014', '2014', '2014', '2014', '2014', '2015', '2015', '2015', '2015', '2015', '2016', '2016', '2016', '2016', '2016', '2017', '2017', '2017', '2017', '2017', '2018', '2018', '2018', '2018', '2018', '2019', '2019', '2019', '2019', '2019', '2020', '2020', '2020', '2020', '2021', '2021', '2021', '2021', '2021', '2022', '2022', '2022', '2022', '2022', '2023', '2023', '2023', '2023', '2023', '2024', '2024', '2024', '2024', '2024'};

tournois = {'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Australian Open', 'Masters', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters', 'Australian Open', 'Roland-Garros', 'Wimbledon', 'US Open', 'Masters'};

vainqueurs = {'Ken Rosewall (5/8) (2/2)', 'Rod Laver (7/11) (3/4)', 'Arthur Ashe (1/3) (1/1)', 'Rod Laver (8/11) (3/3)', 'Rod Laver (9/11) (2/2)', 'Rod Laver (10/11) (4/4)', 'Rod Laver (11/11) (2/2)', 'Arthur Ashe (2/3) (1/1)', 'Jan Kodes (1/3) (1/2)', 'John Newcombe (3/7) (2/3)', 'Ken Rosewall (6/8) (2/2)', 'Stan Smith [1/1]', 'Ken Rosewall (7/8) (3/4)', 'Jan Kodes (2/3) (2/2)', 'John Newcombe (4/7) (3/3)', 'Stan Smith (1/2) (1/1)', 'Ilie Nastase [1/4]', 'Ken Rosewall (8/8) (4/4)', 'Andrés Gimeno (1/1) (1/1)', 'Stan Smith (2/2) (1/1)', 'Ilie Nastase (1/2) (1/1)', 'Ilie Nastase [2/4]', 'John Newcombe (5/7) (1/2)', 'Ilie Nastase (2/2) (1/1)', 'Jan Kodes (3/3) (1/1)', 'John Newcombe (6/7) (2/2)', 'Ilie Nastase [3/4]', 'Jimmy Connors (1/8) (1/1)', 'Bjorn Borg (1/11) (1/6)', 'Jimmy Connors (2/8) (1/2)', 'Jimmy Connors (3/8) (1/5)', 'Guillermo Vilas [1/1]', 'John Newcombe (7/7) (2/2)', 'Bjorn Borg (2/11) (2/6)', 'Arthur Ashe (3/3) (1/1)', 'Manuel Orantes (1/1) (1/1)', 'Ilie Nastase [4/4]', 'Mark Edmondson (1/1) (1/1)', 'Adriana Panatta (1/1) (1/1)', 'Bjorn Borg (3/11) (1/5)', 'Jimmy Connors (4/8) (2/5)', 'Manuel Orantes [1/1]', 'Roscoe Tanner (1/1) (1/1)', 'Guillermo Vilas (1/4) (1/1)', 'Bjorn Borg (4/11) (2/5)', 'Guillermo Vilas (2/4) (1/1)', 'Vitas Gerulaitis (1/1) (1/1)', 'Jimmy Connors [1/1]', 'Bjorn Borg (5/11) (3/6)', 'Bjorn Borg (6/11) (3/5)', 'Jimmy Connors (5/8) (3/5)', 'Guillermo Vilas (3/4) (1/2)', 'John McEnroe [1/3]', 'Bjorn Borg (7/11) (4/6)', 'Bjorn Borg (8/11) (4/5)', 'John McEnroe (1/7) (1/4)', 'Guillermo Vilas (4/4) (2/2)', 'Bjorn Borg [1/2]', 'Bjorn Borg (9/11) (5/6)', 'Bjorn Borg (10/11) (5/5)', 'John McEnroe (2/7) (2/4)', 'Brian Teacher (1/1) (1/1)', 'Bjorn Borg [2/2]', 'Bjorn Borg (11/11) (6/6)', 'John McEnroe (3/7) (1/3)', 'John McEnroe (4/7) (3/4)', 'Johan Kriek (1/2) (1/2)', 'Ivan Lendl [1/5]', 'Mats Wilander (1/7) (1/3)', 'Jimmy Connors (6/8) (2/2)', 'Jimmy Connors (7/8) (4/5)', 'Johan Kriek (2/2) (2/2)', 'Ivan Lendl [2/5]', 'Yannick Noah (1/1) (1/1)', 'John McEnroe (5/7) (2/3)', 'Jimmy Connors (8/8) (5/5)', 'Mats Wilander (2/7) (1/3)', 'John McEnroe [2/3]', 'Ivan Lendl (1/8) (1/3)', 'John McEnroe (6/7) (3/3)', 'John McEnroe (7/7) (4/4)', 'Mats Wilander (3/7) (2/3)', 'John McEnroe [3/3]', 'Mats Wilander (4/7) (2/3)', 'Boris Becker (1/6) (1/3)', 'Ivan Lendl (2/8) (1/3)', 'Stefan Edberg (1/6) (1/2)', 'Ivan Lendl [3/5]', 'Ivan Lendl (3/8) (2/3)', 'Boris Becker (2/6) (2/3)', 'Ivan Lendl (4/8) (2/3)', 'Ivan Lendl [4/5]',  'Stefan Edberg (2/6) (2/2)', 'Ivan Lendl (5/8) (3/3)', 'Pat Cash (1/1) (1/1)', 'Ivan Lendl (6/8) (3/3)', 'Ivan Lendl [5/5]', 'Mats Wilander (5/7) (3/3)', 'Mats Wilander (6/7) (3/3)', 'Stefan Edberg (3/6) (1/2)', 'Mats Wilander (7/7) (1/1)', 'Boris Becker [1/3]', 'Ivan Lendl (7/8) (1/2)', 'Michael Chang (1/1) (1/1)', 'Boris Becker (3/6) (3/3)', 'Boris Becker (4/6) (1/1)', 'Stefan Edberg [1/1]', 'Ivan Lendl (8/8) (2/2)', 'Andrés Gomez (1/1) (1/1)', 'Stefan Edberg (4/6) (2/2)', 'Pete Sampras (1/14) (1/5)', 'Andre Agassi [1/1]', 'Boris Becker (5/6) (1/2)', 'Jim Courier (1/4) (1/2)', 'Michael Stich (1/1) (1/1)', 'Stefan Edberg (5/6) (1/2)', 'Pete Sampras [1/5]', 'Jim Courier (2/4) (1/2)', 'Jim Courier (3/4) (2/2)', 'Andre Agassi (1/8) (1/1)', 'Stefan Edberg (6/6) (2/2)', 'Boris Becker [2/3]', 'Jim Courier (4/4) (2/2)', 'Sergi Bruguera (1/2) (1/2)', 'Pete Sampras (2/14) (1/7)', 'Pete Sampras (3/14) (2/5)', 'Michael Stich [1/1]', 'Pete Sampras (4/14) (1/2)', 'Sergi Bruguera (2/2) (2/2)', 'Pete Sampras (5/14) (2/7)', 'Andre Agassi (2/8) (1/2)', 'Pete Sampreas', 'Andre Agassi (3/8) (1/4)', 'Thomas Muster (1/1) (1/1)', 'Pete Sampras (6/14) (3/7)', 'Pete Sampras (7/14) (3/5)', 'Boris Becker [3/3]', 'Boris Becker (6/6) (2/2)', 'Ievgueni Kafelnikov (1/2) (1/1)', 'Richard Krajicek (1/1) (1/1)', 'Pete Sampras (8/14) (4/5)', 'Pete Sampras [3/5]', 'Pete Sampras (9/14) (2/2)', 'Gustavo Kuerten (1/3) (1/3)', 'Pete Sampras (10/14) (4/7)', 'Patrick Rafter (1/2) (1/2)', 'Pete Sampras [4/5]', 'Petr Korda (1/1) (1/1)', 'Carlos Moya (1/1) (1/1)', 'Pete Sampras (11/14) (5/7)', 'Patrick Rafter (2/2) (2/2)', 'Alex Corretja [1/1]', 'Ievgueni Kafelnikov (2/2) (1/1)', 'Andre Agassi (4/8) (1/1)', 'Pete Sampras (12/14) (6/7)', 'Andre Agassi (5/8) (2/2)', 'Pete Sampras [5/5]', 'Andre Agassi (6/8) (2/4)', 'Gustavo Kuerten (2/3) (2/3)', 'Pete Sampras (13/14) (7/7)', 'Marat Safin (1/2) (1/1)', 'Gustavo Kuerten [1/1]', 'Andre Agassi (7/8) (3/4)', 'Gustavo Kuerten (3/3) (3/3)', 'Goran Ivanisevic (1/1) (1/1)', 'Lleyton Hewitt (1/2) (1/1)', 'Lleyton Hewitt [1/2]', 'Thomas Johansson (1/1) (1/1)', 'Albert Costa (1/1) (1/1)', 'Lleyton Hewitt (2/2) (1/1)', 'Pete Sampras (14/14) (5/5)', 'Lleyton Hewitt [2/2]', 'Andre Agassi (8/8) (4/4)', 'Juan Carlos Ferrero (1/1) (1/1)', 'Roger Federer (1/20) (1/8)', 'Andy Roddick (1/1) (1/1)', 'Roger Federer [1/6]', 'Roger Federer (2/20) (1/6)', 'Gaston Gaudio (1/1) (1/1)', 'Roger Federer (3/20) (2/8)', 'Roger Federer (4/20) (1/5)', 'Roger Federer [2/6]', 'Marat Safin (2/2) (1/1)', 'Rafael Nadal (1/22) (1/14)', 'Roger Federer (5/20) (3/8)', 'Roger Federer (6/20) (2/5)', 'David Nalbandian [1/1]', 'Roger Federer (7/20) (2/6)', 'Rafael Nadal (2/22) (2/14)', 'Roger Federer (8/20) (4/8)', 'Roger Federer (9/20) (3/5)', 'Roger Federer [3/6]',  'Roger Federer (10/20) (3/6)', 'Rafael Nadal (3/22) (3/14)', 'Roger Federer (11/20) (5/8)', 'Roger Federer (12/20) (4/5)', 'Roger Federer [4/6]', 'Novak Djokovic (1/24) (1/10)', 'Rafael Nadal (4/22) (4/14)', 'Rafael Nadal (5/22) (1/2)', 'Roger Federer (13/20) (5/5)', 'Novak Djokovic [1/7]', 'Rafael Nadal (6/22) (1/2)', 'Roger Federer (14/20) (1/1)', 'Roger Federer (15/20) (6/8)', 'Juan Martin del Potro (1/1) (1/1)', 'Nikolay Davydenko [1/1]', 'Roger Federer (16/20) (4/6)', 'Rafael Nadal (7/22) (5/14)', 'Rafael Nadal (8/22) (2/2)', 'Rafael Nadal (9/22) (1/4)', 'Roger Federer [5/6]', 'Novak Djokovic (2/24) (2/10)', 'Rafael Nadal (10/22) (6/14)', 'Novak Djokovic (3/24) (1/7)', 'Novak Djokovic (4/24) (1/4)', 'Roger Federer [6/6]', 'Novak Djokovic (5/24) (3/10)', 'Rafael Nadal (11/22) (7/14)', 'Roger Federer (17/20) (7/8)', 'Andy Murray (1/3) (1/1)', 'Novak Djokovic [2/7]', 'Novak Djokovic (6/24) (4/10)', 'Rafael Nadal (12/22) (8/14)', 'Andy Murray (2/3) (1/2)', 'Rafael Nadal (13/22) (1/4)', 'Novak Djokovic [3/7]', 'Stanislas Wawrinka (1/3) (1/1)', 'Rafael Nadal (14/22) (9/14)', 'Novak Djokovic (7/24) (2/7)', 'Marin Cilic (1/1) (1/1)', 'Novak Djokovic [4/7]', 'Novak Djokovic (8/24) (5/10)', 'Stanislas Wawrinka (2/3) (1/1)', 'Novak Djokovic (9/24) (3/7)', 'Novak Djokovic (10/24) (2/4)', 'Novak Djokovic [5/7]', 'Novak Djokovic (11/24) (6/10)', 'Novak Djokovic (12/24) (1/3)', 'Andy Murray (3/3) (2/2)', 'Stanislas Wawrinka (3/3) (1/1)', 'Andy Murray [1/1]', 'Roger Federer (18/20) (5/6)', 'Rafael Nadal (15/22) (10/14)', 'Roger Federer (19/20) (8/8)', 'Rafael Nadal (16/22) (3/4)', 'Grigor Dimitrov [1/1]', 'Roger Federer (20/20) (6/6)', 'Rafael Nadal (17/22) (11/14)', 'Novak Djokovic (13/24) (4/7)', 'Novak Djokovic (14/24) (3/4)', 'Alexander Zverev [1/2]', 'Novak Djokovic (15/24) (7/10)', 'Rafael Nadal (18/22) (12/14)', 'Novak Djokovic (16/24) (5/7)', 'Rafael Nadal (19/22) (4/4)', 'Stefanos Tsitsipas [1/1]', 'Novak Djokovic (17/24) (8/10)', 'Rafael Nadal (20/22) (13/14)', 'Dominic Thiem (1/1) (1/1)', 'Daniil Medvedev [1/1]', 'Novak Djokovic (18/24) (9/10)', 'Novak Djokovic (19/24) (2/3)', 'Novak Djokovic (20/24) (6/7)', 'Daniil Medvedev (1/1) (1/1)', 'Alexander Zverev [2/2]', 'Rafael Nadal (21/22) (2/2)', 'Rafael Nadal (22/22) (14/14)', 'Novak Djokovic (21/24) (7/7)', 'Carlos Alcaraz (1/3) (1/1)', 'Novak Djokovic [6/7]', 'Novak Djokovic (22/24) (10/10)', 'Novak Djokovic (23/24) (3/3)', 'Carlos Alcaraz (2/4) (1/2)', 'Novak Djokovic (24/24) (4/4)', 'Novak Djokovic [7/7]', 'Jannik SInner (1/2) (1/1)', 'Carlos Alcaraz (3/4) (1/1)', 'Carlos Alcaraz (4/4) (2/2)', 'Jannik Sinner (2/2) (1/1)', 'Jannik Sinner [1/1]'};

save("ListeTournoisDeTennisHommes.mat");