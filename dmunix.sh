echo -n "00%"
nombre_fichier=$(find . -type f | wc -l)
echo -n "\33[2K \r20%"
nombre_dossier=$(find . -type d | wc -l)
echo -n "\33[2K \r40%"
taille_totale=$(du -sh .)
echo -n "\33[2K \r50%"
nombre_dossier_vide=$(find . -type d -empty| wc -l)
echo -n "\33[2K \r70%"
nombre_fichier_vide=$(find . -type f -empty| wc -l)
echo -n "\33[2K \r80%"
nombre_fichier_over_50MO=$(find . -type f -size +50M | wc -l)
echo -n "\33[2K \r90%"
nombre_fichier_under_80MO=$(find . -type f -size -80M | wc -l)
echo -n "\33[2K \r"

echo "Nombre de fichiers = $nombre_fichier\tNombre de dossier = $nombre_dossier\tPour une taille totale de $taille_totale"
echo "Nombre de fichier > 50Mo = $nombre_fichier_over_50MO\t Nombre fichier < 80Mo = $nombre_fichier_under_80MO"
echo "Comprenants $nombre_dossier_vide dossiers vides et $nombre_fichier_vide fichiers vides"

echo -n "00%"
nombre_fichier_txt=$(find . -name *.txt |wc -l)
echo -n "\33[2K \r10%"
nombre_fichier_js=$(find . -name *.js |wc -l)
echo -n "\33[2K \r20%"
nombre_fichier_png=$(find . -name *.png |wc -l)
echo -n "\33[2K \r30%"
nombre_fichier_jpeg=$(find . -name *.jpeg |wc -l)
echo -n "\33[2K \r40%"
nombre_fichier_html=$(find . -name *.html |wc -l)
echo -n "\33[2K \r50%"
nombre_fichier_c=$(find . -name *.c |wc -l)
echo -n "\33[2K \r60%"
nombre_fichier_zip=$(find . -name *.zip |wc -l)
echo -n "\33[2K \r70%"
nombre_fichier_json=$(find . -name *.json |wc -l)
echo -n "\33[2K \r80%"
nombre_fichier_py=$(find . -name *.py |wc -l)
echo -n "\33[2K \r90%"
nombre_fichier_mp4=$(find . -name *.mp4 |wc -l)
echo -n "\33[2K \r"


echo "Nombre de fichiers selons leur types :"
echo ".txt = $nombre_fichier_txt\t.js = $nombre_fichier_js\t.png = $nombre_fichier_png\t.jpeg = $nombre_fichier_jpeg"
echo ".html = $nombre_fichier_html\t.c = $nombre_fichier_c\t.zip = $nombre_fichier_zip\t.json = $nombre_fichier_json"
echo ".py = $nombre_fichier_py\t.mp4 = $nombre_fichier_mp4"