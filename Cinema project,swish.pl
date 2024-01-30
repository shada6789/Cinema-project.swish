%Fact

movie(homealone).
movie(mask).
movie(waafetreggala).

movie(moana).
movie(snoewhite).
movie(encanto).

movie(smile).
movie(monsterhouse). 

movie(restrictedarea).

movie(blacklist).
movie(hitteamrobbery).
movie(robberyandcriminals).

day(sunday).
day(monday).
day(tuseday).
day(wednesday).

sale(homealone,sunday,"40%").
sale(moana,monday,"10%").

service(blacklist,popcorn).
service(monsterhouse,chocolate).

drinks(hitteamrobbery,pepsi).
drinks(snoewhite,sluh).

hall(encanto,vip).
hall(smile,suties).

location(mallofarab).
location(alsalammall).
location(redseamall).
location(azizmall).



request(homealone,azizmall).
request(mask,mallofarab).
request(waafetreggala,redseamall).

request(moana,azizmall).
request(snoewhite,mallofarab).
request(encanto,redseamall).

request(smile,azizmall).
request(monsterhouse,mallofarab).
request(restrictedarea,redseamall).

request(blacklist,azizmall).
request(hitteamrobbery,mallofarab).
request(robberyandcriminals,redseamall).


movieDay(homealone,sunday).
movieDay(mask,monday).
movieDay(waafetreggala,wednesday).

movieDay(moana,tuseday).
movieDay(snoewhite,sunday).
movieDay(encanto,monday).

movieDay(smile,wednesday).
movieDay(monsterhouse,tuseday).
movieDay(restrictedarea,monday).

movieDay(blacklist,sunday).
movieDay(hitteamrobbery,wednesday).
movieDay(robberyandcriminals,monday).


%Rule

offer(Movie,Location):-movie(Movie),request(Movie,Location),write("Movie"),write(Movie),write("\t Offers"),write("\t In"),write(Location),nl,fail.

everythingrequest(Movie,Day,Location):-request(Movie,Location),movieDay(Movie,Day),write("Movie"),write(Movie),write("\t Day"),write(Day),write("\t In"),
write(Location),nl,fail.

display(Movie,Day):-movie(Movie),movieDay(Movie,Day),write("Movie"),write(Movie),write("\t displays"),write("\t In"),write("\t Day "),write(Day),nl,fail.

listallmovie(Movie):-movie(Movie),movie(Movie),write("\t Name "),write(Movie),nl,fail.

everythingsale(Movie,Day,Sale):-movie(Movie),sale(Movie,Day,Sale),write(Movie),write(" \t "),write(Day),write(" \t "),write(Sale),nl,fail.

allorder(Movie,Service):-movie(Movie),service(Movie,Service),write(" \t "),write(Movie),write(" \t "),write(Service),nl,fail.

listdrinks(Movie,Drinks):-movie(Movie),drinks(Movie,Drinks),write(" \t "),write(Movie),write(" \t "),write(Drinks),nl,fail.

thehall(Movie,Hall):-movie(Movie),hall(Movie,Hall),write(" \t "),write(Movie),write(" \t "),write(Hall),nl,fail.

