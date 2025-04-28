gejala(daun_menguning).
gejala(terdapat_bercak_hitam).
gejala(daun_berlubang).
gejala(tanaman_layu).

hama('Virus') :-
    gejala(daun_menguning),
    gejala(tanaman_layu).

hama('Hama Kutu') :-
    gejala(daun_menguning),
    gejala(tanaman_layu).

hama('Jamur') :-
    gejala(terdapat_bercak_hitam).

hama('Ulat') :-
    gejala(daun_berlubang).

hama('Infeksi') :-
    gejala(tanaman_layu),
    gejala(daun_menguning).

hama('Tanaman Sehat') :-
    gejala(daun_menguning),
    gejala(terdapat_bercak_hitam),
    gejala(daun_berlubang),
    gejala(tanaman_layu).

not(gejala(rusak_akar)).
not(gejala(busuk_batang)).

dapatHama(X) :-
    hama(X).

tidakDapatHama(X) :-
    not(hama(X)).
