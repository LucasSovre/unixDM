if [[ $1 == '-' || $1 == '+' || $1 == "++" ]]
then
    printf "\33[2K \r0%%"
    nombre_fichier=$(find . -type f | wc -l)
    printf "\33[2K \r20%%"
    nombre_dossier=$(find . -type d | wc -l)
    printf "\33[2K \r350%%"
    taille_totale=$(du -sh .)
    printf "\33[2K \r500%%"
    nombre_dossier_vide=$(find . -type d -empty| wc -l)
    printf "\33[2K \r65%%"
    nombre_fichier_vide=$(find . -type f -empty| wc -l)
    printf "\33[2K \r80%%"
    nombre_fichier_over_50MO=$(find . -type f -size +50M | wc -l)
    printf "\33[2K \r90%%"
    nombre_fichier_under_80MO=$(find . -type f -size -80M | wc -l)
    printf "\33[2K \r100%%\n"

    printf "Nombre de fichiers = $nombre_fichier\tNombre de dossier = $nombre_dossier\tPour une taille totale de $taille_totale\n"
    printf "Nombre de fichier > 50Mo = $nombre_fichier_over_50MO\t Nombre fichier < 80Mo = $nombre_fichier_under_80MO\n"
    printf "Comprenants $nombre_dossier_vide dossiers vides et $nombre_fichier_vide fichiers vides\n"

    if [[ $1 == "+" || $1 == "++" ]]
    then
        printf "\33[2K \r0%%"
        nombre_fichier_txt=$(find . -name *.txt |wc -l)
        printf "\33[2K \r10%%"
        nombre_fichier_js=$(find . -name *.js |wc -l)
        printf "\33[2K \r20%%"
        nombre_fichier_png=$(find . -name *.png |wc -l)
        printf "\33[2K \r30%%"
        nombre_fichier_jpeg=$(find . -name *.jpeg |wc -l)
        printf "\33[2K \r40%%"
        nombre_fichier_html=$(find . -name *.html |wc -l)
        printf "\33[2K \r50%%"
        nombre_fichier_c=$(find . -name *.c |wc -l)
        printf "\33[2K \r60%%"
        nombre_fichier_zip=$(find . -name *.zip |wc -l)
        printf "\33[2K \r70%%"
        nombre_fichier_json=$(find . -name *.json |wc -l)
        printf "\33[2K \r80%%"
        nombre_fichier_py=$(find . -name *.py |wc -l)
        printf "\33[2K \r90%%"
        nombre_fichier_mp4=$(find . -name *.mp4 |wc -l)
        printf "\33[2K \r"


        printf "Nombre de fichiers selons leur types :\n"
        printf ".txt = $nombre_fichier_txt\t.js = $nombre_fichier_js\t.png = $nombre_fichier_png\t.jpeg = $nombre_fichier_jpeg\n"
        printf ".html = $nombre_fichier_html\t.c = $nombre_fichier_c\t.zip = $nombre_fichier_zip\t.json = $nombre_fichier_json\n"
        printf ".py = $nombre_fichier_py\t.mp4 = $nombre_fichier_mp4\n"

        if [[ $1 == "++" ]]
        then
            printf "\33[2K \r0%%"
            nombre_fichier_modifier_2022=$(find . -type f -newermt 2022-01-01 ! -newermt 2022-01-14 | wc -l)
            printf "\33[2K \r10%%"
            nombre_fichier_acces_moins_30j=$(find . -type f -atime -30 |wc -l)
            printf "\33[2K \r20%%"
            nombre_fichier_acces_plus_30j=$(find . -type f -atime +30 |wc -l)
            printf "\33[2K \r30%%"
            nombre_fichier_acces_30j=$(find . -type f -atime 30 |wc -l)
            printf "\33[2K \r40%%"
            nombre_fichier_inode_moins_30j=$(find . -type f -ctime -30 |wc -l)
            printf "\33[2K \r50%%"
            nombre_fichier_inode_plus_30j=$(find . -type f -ctime +30 |wc -l)
            printf "\33[2K \r60%%"
            nombre_fichier_inode_30j=$(find . -type f -ctime 30 |wc -l)
            printf "\33[2K \r70%%"
            nombre_fichier_modifier_moins_30j=$(find . -type f -mtime -30 |wc -l)
            printf "\33[2K \r80%%"
            nombre_fichier_modifier_plus_30j=$(find . -type f -mtime +30 |wc -l)
            printf "\33[2K \r90%%"
            nombre_fichier_modifier_30j=$(find . -type f -mtime 30 |wc -l)
            printf "\33[2K \r"

            printf "Nombre de fichiers selons leur date de modification, création et temps d'accès :\n"
            printf "Nombre fichier modifier en 2022 = $nombre_fichier_modifier_2022\n"
            printf "Nombre fichier temps d'accès moins de 30 jours = $nombre_fichier_acces_moins_30j\n"
            printf "Nombre fichier temps d'accès plus de 30 jours = $nombre_fichier_acces_plus_30j\n"
            printf "Nombre fichier temps d'accès 30 jours = $nombre_fichier_acces_30j\n"
            printf "Nombre fichier changement inode moins de 30 jours = $nombre_fichier_inode_moins_30j\n"
            printf "Nombre fichier changement inode plus de 30 jours = $nombre_fichier_inode_plus_30j\n"
            printf "Nombre fichier changement inode 30 jours = $nombre_fichier_inode_30j\n"
            printf "Nombre fichier modifier moins de 30 jours = $nombre_fichier_modifier_moins_30j\n"
            printf "Nombre fichier modifier plus de 30 jours = $nombre_fichier_modifier_plus_30j\n"
            printf "Nombre fichier modifier 30 jours = $nombre_fichier_modifier_30j\n"
        fi
    fi
else
    printf "Veuillez entrer un argument - + ++"
fi