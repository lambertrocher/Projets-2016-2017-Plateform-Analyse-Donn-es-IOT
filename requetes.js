var curl = curl_init();
var lynk = /*mettre l'adresse de spacelynk*/10.0.2.3
var beg="http://remote:remote@"
var end="/scada-remote?m=jsons&r=grp&fn=find&alias="


/* type de requete:

http://remote:remote@10.0.2.3/scada-remote?m=json&r=grp&fn=find&alias=1/1/1

http://remote:remote@10.0.2.3/scada-remote?m=json&r=objects

*/

var final = "/scada-remote?m=json&r=objects"

curl_setopt($curl,CURLOPT_URL, $beg+$lynk+$final); /* Cette requête permet de récupérer tous les capteurs du système */
var sens = curl_exec(curl);
var sensors = JSON.parse(sens); /* On parse nos données afin de les recueillir sous forme de tableau exploitable*/
var values = {};

for (var i=0;;i< ; i++){
	var cap = sensors[i]['adress']; /* On parcours notre tableau d'objets en choisissant l'adresse du capteur à l'indice i */
	var link= beg+lynk+end+cap /*Ici nous exécutons la requête http nous permettant d'accéder aux informations du capteur d'adresse ci dessus*/
	curl_setopt($curl, CURLOPT_URL, $link);
	var tab = JSON.parse(curl_exec(curl)); /* Nous parsons les données de ce capteur afin de les stocker dans un tableau associatif*/
	var values[cap]= tab; /* Stockage des différentes informations du capteur dans le tableau*/

}

jsonvalues=JSON.stringify(values);

/* à copier dans un fichier*/ 
