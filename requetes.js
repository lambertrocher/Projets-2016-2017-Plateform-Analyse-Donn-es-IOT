var curl = curl_init();
var lynk = /*mettre l'adresse de spacelynk*/
var beg="http://remote:remote@"
var end="/scada-remote?m=jsons&r=grp&fn=getvalue&alias="


/* type de requete:

http://remote:remote@192.168.0.10/scada-remote?m=json&r=grp&fn=getvalue&alias=1/1/1

*/

var final = "/scada-remote?m=json&r=objects"

curl_setopt($curl,CURLOPT_URL, $beg+$lynk+$final); /* Cette requête permet de récupérer tous les capteurs du système */
var sens = curl_exec(curl);
var sensors = JSON.parse(sens);
var values = {};

for (var i=0;;i< ; i++){
	var cap = sensors[i]['adress']; /*le numero du capteur à l'indice i */
	var link= beg+lynk+end+cap
	curl_setopt($curl, CURLOPT_URL, $link);
	var values[cap]= curl_exec(curl);

}

jsonvalues=JSON.stringify(values);

/* à copier dans un fichier*/ 
