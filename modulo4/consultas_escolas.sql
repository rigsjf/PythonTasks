USE escola;
# Produza um relatório que contenha os dados dos alunos matriculados em todos os 
# cursos oferecidos pela escola
SELECT a.CPF,a.Nome,a.Endereco,a.Telefone,DATE_FORMAT(a.Data_Nasc,'%d/%m/%y') as Data_Nascimento FROM aluno a JOIN matricula m ON a.CPF = m.CPF_Aluno ORDER BY a.Data_Nasc;
/*CPF,Nome,Endereco,Telefone,Data_Nascimento
67282946839,"José Décio Zyvo","134 Gina Causeway",+1-231-484-1774x84631,28/01/30
99141819171,"Reinaldo Murilo da Silva","09633 Baker Square",+1-154-623-3842x183,26/03/30
60540596536,"Ney Adílson Gomo","06709 Pitts Fields",+55-81-99999-0001,28/04/30
68685648444,"Isaías Hamilton da Silva","138 Smith Streets Apt. 492",+1-255-321-3202x867,03/11/31
68685648444,"Isaías Hamilton da Silva","138 Smith Streets Apt. 492",+1-255-321-3202x867,03/11/31
69242576334,"Roberval da Cunha de Tavares","22953 Michael Mountains Suite 782",+1-629-612-7735x0573,14/01/32
69242576334,"Roberval da Cunha de Tavares","22953 Michael Mountains Suite 782",+1-629-612-7735x0573,14/01/32
77219049451,"Itamar de Carvalho Júnior","0934 Lee Valley",+1-145-545-9941x096,14/01/32
23673275870,"Roberval de Amorim Drouzcos","176 Annette Run",+1-443-253-1363x736,01/04/32
65178894431,"Oliver Pires Nago","12373 Henry Streets",+1-192-776-1029x206,02/07/33
85285287414,"Selena Mayra de Souza Ugiza Gutierrez","165 Reed Ports Suite 314",+1-367-126-5660,30/04/34
48989553908,"Mateus Rodrigues Guedes Npo","205 Sarah Loop",+1-517-737-7246,09/08/36
89495598768,"Úrsula dos Santos Behere do Espírito Santo","2438 Maria Extensions",+1-715-955-8150x249,20/04/37
94558854373,"Ana de Barbosa","24762 Tina Cliff Suite 930",+1-741-938-9637x9318,20/05/37
76027731386,"Sandro Waei Mendes de Britto","08924 Raymond Run Suite 652",+1-135-928-1213,01/03/38
43424140187,"Wendy Tatiana Mercado de Menezes","10518 Anthony Freeway",+1-167-077-3027x220,29/04/38
97934358114,"Avelino Abirner Neto","2488 Davis Mills",+1-764-358-8611,18/07/38
50466400847,"Willian Martin Arno","05839 Thompson Rue",+1-084-892-5501x680,31/08/38
66230920635,"Ingrid de Angola Barroso","133 Peck Streets Suite 250",+1-203-609-6202x9171,19/02/39
98598598598,"Soraya Brides Liuviã","101 Kelly Isle",+1-165-321-9382x226,22/04/39
71140376253,"Brenda de Junqueira","144 Hogan Loaf",+1-306-897-1768x3145,04/08/39
71140376253,"Brenda de Junqueira","144 Hogan Loaf",+1-306-897-1768x3145,04/08/39
79369087553,"Eduardo Nepanegi","237 Mark Park Apt. 909",+1-680-479-7414x295,09/08/39
99622109983,"Cíntia Regina Schneider Teles","2489 Barton Cliffs Suite 644",+1-767-558-2046x80568,04/06/41
38863042693,"Ana de Moreira","193 Anthony Tunnel",+1-475-436-9174x158,17/04/42
01861002026,"Danielle Kiean Durirna","1729 Travis Port Suite 555",+1-436-204-0218x93143,22/05/42
30424283347,"Ismael de Soares Júnior","180 Michelle Stream",+1-462-851-0359,02/10/43
30424283347,"Ismael de Soares Júnior","180 Michelle Stream",+1-462-851-0359,02/10/43
72453777190,"Otaviano Marcelo de Carvalho","08396 James Grove Suite 681",+1-131-998-5104x74347,09/07/44
72453777190,"Otaviano Marcelo de Carvalho","08396 James Grove Suite 681",+1-131-998-5104x74347,09/07/44
66581596036,"Alan Siumyde Muu da Silva","1337 Rios Coves",+1-206-537-3712,26/02/45
21212121212,"Daniela Rute de Tozetto","159 Bailey Cove",+1-340-310-5929x8290,01/03/45
35467646557,"Rogério Lowimirnian","167 Jeremy Throughway Suite 209",+1-396-537-7355,10/06/47
65305868797,"Neila da Silva","072 Hall Mountain Apt. 224",+55-11-95050-4039,31/08/47
56966642339,"Selma Fortes","0633 Patrick Drives Apt. 420",+55-11-91616-1677,09/10/48
62626255555,"Marciano de Bezerra Buarque Oeyser","1121 Phyllis Gateway",+1-187-288-6080x3141,21/02/50
42238546431,"Joyce Aparecida da Silva","1983 Butler Stravenue Apt. 453",+1-499-706-7459,16/01/51
68752234762,"João Cléber da Silva","04476 Cheryl Camp Apt. 802",+1-079-376-9912,24/09/53
68752234762,"João Cléber da Silva","04476 Cheryl Camp Apt. 802",+1-079-376-9912,24/09/53
67633622240,"Úrsula de Angola Heijira","1356 Watson Estate",+1-251-042-1324x74675,09/02/54
59116065123,"Laerte Ederson Moreno","21391 Cory Oval Apt. 436",+1-568-572-5795x75520,26/10/54
66932271437,"Rosana Talita de Alvarenga","1338 Heidi Glen Suite 479",+1-208-995-2035x0440,19/11/54
37175290824,"Carlos dos Santos Júnior","1909 Kimberly Inlet",+1-473-912-7616x111,08/03/55
72543077858,"Ney de Toledo Sanches","1624 Amber Point Suite 348",+1-366-174-2909x7141,18/02/56
72543077858,"Ney de Toledo Sanches","1624 Amber Point Suite 348",+1-366-174-2909x7141,18/02/56
87807846899,"Karin Luciana de Antunes Pinhão","2391 Tyler Crest Suite 791",+1-713-808-6087x888,19/07/57
54584006209,"Otto Marlon Iboman da Silva","0620 Christensen Fords",+55-34-95050-4040,01/10/57
67554824469,"Lili Terezinha da Silva","2272 Bell Walk",+1-627-528-4315,01/05/58
01712609174,"Elano Akizoho de Souza Terceiro","1650 Thompson Manors",+1-375-414-0428x2935,23/05/58
91183350638,"Kauê Albafriov","24622 Rodgers Rapid Apt. 751",+1-726-416-1130x3829,03/11/58
54052809516,"Suely Daniela Cavalcante","210 Austin Bridge",+1-538-141-7604x105,29/10/59
33355599988,"Israel de Assunção Pimenta","04462 Lisa Ferry",+1-076-939-0979x819,03/10/60
33355599988,"Israel de Assunção Pimenta","04462 Lisa Ferry",+1-076-939-0979x819,03/10/60
06169933554,"Valéria Natália de Soares do Paraná","0438 Cole Mount",+1-066-815-7844x2771,12/01/61
28736531478,"Meire Amanda de Osório da Silva","1791 Caldwell Centers Suite 237",+1-460-452-2517x411,28/02/61
28736531478,"Meire Amanda de Osório da Silva","1791 Caldwell Centers Suite 237",+1-460-452-2517x411,28/02/61
33799787085,"Terezinha Bise de Araújo Finanatiov","1892 Cory Village",+1-469-353-6174x2359,20/04/61
33799787085,"Terezinha Bise de Araújo Finanatiov","1892 Cory Village",+1-469-353-6174x2359,20/04/61
68879822993,"Quirino Martinez da Silva Neienason","0789 Meza Fork",+55-11-91212-1179,04/07/61
68879822993,"Quirino Martinez da Silva Neienason","0789 Meza Fork",+55-11-91212-1179,04/07/61
10299761377,"Roberto de Nogueira","250 Lucero Mews Suite 311",+1-773-579-0923x905,07/04/62
20297772132,"Sandra Paulínia Canam","1752 Monica Ranch",+1-440-687-8070,13/02/63
70071141059,"Simão de Fraga Neto","079 Suzanne Stream",+55-11-97667-5455,08/07/63
70071141059,"Simão de Fraga Neto","079 Suzanne Stream",+55-11-97667-5455,08/07/63
52365057644,"Otávio Gilmar de Alves Nirnofezsen Inau Júnior","20778 John Ramp",+1-526-762-4872x8157,11/04/64
16922268394,"Lúcio Baltazar da Silva","17127 Ashley Ranch",+1-424-210-7863,10/10/64
64477543628,"Guiomar Verônica de Oliveira Naves","119 Carpenter Fords",+1-187-635-8902x728,05/11/64
84432343161,"Jorge Walter Mili Alkenumi Júnior","2382 Trevor Shore Suite 669",+1-699-041-8342x500,13/12/64
74836413320,"Fabiana Dina de Melo","0860 Melinda Drive",+1-135-526-1698x670,11/04/65
96246606245,"Edu Arnaldo Mineiro Cuminnas Towateho","24779 Cheryl Ferry",+1-756-239-9210x20911,22/04/65
74305831946,"Roberta de Oliveira Ximenes","23149 Jessica Ranch Apt. 613",+1-667-191-4271x344,12/05/65
61731914601,"Mônica Fabiana Prates","068 Ruth Ridges",+55-69-91111-6666,13/08/65
58157960405,"Mel Naves de Vasconcelos","06390 Ashley Forks Apt. 050",+55-11-98989-8989,05/07/66
70088350049,"Dionísio Kim de Oliveira Fragoso Júnior","14316 Wilson Spring",+1-288-466-3628x503,27/08/67
70088350049,"Dionísio Kim de Oliveira Fragoso Júnior","14316 Wilson Spring",+1-288-466-3628x503,27/08/67
74174171444,"Raiane da Luz Gutierrez de Borges","044 Rachel Falls Suite 789",+1-067-145-4362x6407,25/07/68
74174171444,"Raiane da Luz Gutierrez de Borges","044 Rachel Falls Suite 789",+1-067-145-4362x6407,25/07/68
44445555665,"Altair de Pereira Isbi Muchol","161 Monica Way",+1-361-446-5011,18/03/70
32112035216,"Milene Selma dos Pinhais de Moura Banhos","18266 Chelsea Mountains",+1-468-874-6602x132,21/11/70
32112035216,"Milene Selma dos Pinhais de Moura Banhos","18266 Chelsea Mountains",+1-468-874-6602x132,21/11/70
66809234064,"Gisele de Meireles","05951 Jenkins Crossing Suite 446",+1-088-816-9973x2987,24/11/72
12141618201,"Laura Yoripe","02576 Lewis Falls Suite 987",+55-11-5525-1414,09/12/74
71841727055,"Edson Coso","1531 Brown Motorway",+1-320-216-2073x6487,21/05/75
71841727055,"Edson Coso","1531 Brown Motorway",+1-320-216-2073x6487,21/05/75
45614050170,"Moisés Fontes de Machado","20184 Crawford Mews Apt. 328",+1-507-130-4354,28/05/75
25361027740,"Hamilton Gunoi Martinez","177 Davis Fields",+1-449-235-2333x560,15/09/75
17780734413,"Josiel de Alvim","05422 Grant Skyway",+1-083-864-2840x9744,20/04/76
66497186863,"Helena Gois Creti","0721 Ho Flat Apt. 522",+55-11-98844-2645,28/09/76
57428313254,"Yasmin Banhos","2117 Randy Lights",+1-556-408-9360,16/08/77
02928272625,"Manoel Charles de Trindade Penedo","0939 Jeff Trail Suite 414",+1-150-081-6101,29/08/78
65867072600,"Ali de Magalhães","22319 Lynch Summit",+1-624-303-3807x7302,18/05/79
71262459124,"Quésia Amoã","081 Figueroa Corners Apt. 472",+1-113-947-0116,23/06/79
71262459124,"Quésia Amoã","081 Figueroa Corners Apt. 472",+1-113-947-0116,23/06/79
34123567630,"Dionísio Cirilo Weiss Lole","057 Felicia Plains Apt. 273",+1-084-098-0852,04/01/80
34123567630,"Dionísio Cirilo Weiss Lole","057 Felicia Plains Apt. 273",+1-084-098-0852,04/01/80
43926298300,"Victor de Medeiros d"Ávila Ecifoson","19899 Amber Groves Suite 120",+1-502-017-3863x00019,04/09/80
60803816994,"Beatriz Sônia Ublavi da Rocha","21627 David Neck",+1-577-835-7565x573,23/01/81
59349278470,"Ana Moreno","0669 Hill Heights Apt. 171",+55-11-92233-4455,07/02/81
47301802039,"Elano Augusto Irnsitli","2024 Huff Union Apt. 574",+1-511-445-0713x65770,11/05/81
12345678977,"Eliomar Suzanne de Moura","030 Michael Curve Suite 017",+55-13-91111-0004,20/06/81
01437901196,"Poliana Yasmin Naves Lielua","05301 Stevenson Corner",+1-083-114-1939x21255,20/09/81
65529569832,"Eustáquio Itysson","12544 Byrd Extensions Suite 786",+1-194-494-9092,09/08/82
70789700852,"Paula Eztrern","144 Hicks Ports",+1-292-141-1784x1818,07/10/82
70789700852,"Paula Eztrern","144 Hicks Ports",+1-292-141-1784x1818,07/10/82
64114550732,"Bete Rute Pede","069 Brittany Points Suite 047",+55-92-98080-7070,02/12/82
72618080077,"Jonas Fred Rangel","2311 Ann Courts Apt. 922",+1-665-515-9977x273,22/12/82
72618080077,"Jonas Fred Rangel","2311 Ann Courts Apt. 922",+1-665-515-9977x273,22/12/82
53392688143,"Gisele do Amaral de Malta","062 James Shore",+55-11-91615-0102,14/07/83
55775324274,"Alexandre Humberto Pinhão de Cerqueira Usago","063 Douglas Stravenue",+55-11-94512-1245,21/11/83
31914223344,"Bárbara Felícia Robitako","160 Leslie Rue Apt. 353",+1-344-733-4444x1671,08/03/84
31914223344,"Bárbara Felícia Robitako","160 Leslie Rue Apt. 353",+1-344-733-4444x1671,08/03/84
75993583815,"Juliano de Diniz Esluyer Anuneson","23381 Roy Hollow Apt. 749",+1-668-107-5214,09/11/85
21985524001,"Samara Risme do Vale","1757 John Inlet Suite 690",+1-442-899-0937x509,06/10/87
70439025450,"Karina dos Santos","1432 Sarah Curve",+1-289-520-9893,26/05/90
70439025450,"Karina dos Santos","1432 Sarah Curve",+1-289-520-9893,26/05/90
64179320731,"Nádia Rauson Efro","221 Dawn Hill Apt. 047",+1-621-441-7900x765,26/08/91
62491568861,"Zara de Angola","219 Gonzalez Valley",+1-581-097-0378,09/07/92
62923232666,"Ivanete Mirela Tsuyupeka","0685 Jackson Ferry Apt. 908",+55-63-97788-8877,01/12/92
05020555555,"Bianca Maria dos Santos","0206 Sanford Ford",+55-61-94444-3311,04/03/93
57585758579,"Xerxes do Paraná","1100 Daniel Gardens Apt. 024",+1-171-628-8431x350,25/04/93
10468536559,"Abigail Dlantroz","256 Crawford Throughway",+1-777-030-3784x73761,28/12/93
11122233344,"Sheila Ocuã","012 Elizabeth Stravenue Apt. 349",+55-22-97777-1212,29/01/94
72192402457,"Olímpia de Chaves Sasenabu","15416 Mitchell Common Suite 092",+1-334-299-9934,18/02/95
72192402457,"Olímpia de Chaves Sasenabu","15416 Mitchell Common Suite 092",+1-334-299-9934,18/02/95
35487538954,"Damares Célia de Martins Eclaovi da Silva","1908 Kevin Roads Suite 490",+1-472-989-2332x1398,26/09/95
82744591292,"Antônio Oeulu","23751 Cox Terrace Apt. 161",+1-693-275-7418x39092,23/03/96
15234516524,"Marcelo de Barbosa","16736 Kelly Crest Suite 119",+1-419-551-1054x5276,28/05/96
52201370078,"José Mourão","06127 Woods Plains Suite 176",+55-11-99000-0099,03/01/97
67984297641,"Mário Frederico Ovrilso","137 Goodwin Parks",+1-252-863-7092x9337,07/04/97
40550794562,"Ana Dilma Phachuzsay","1946 Glenn Spur",+1-492-068-3719x2665,19/06/97
65880245234,"Viviane Larissa de Sampaio","132 Jessica Forge",+1-199-656-5893x5963,19/04/98
67688504928,"Melanie Vânia de Camargo da Rocha","0787 Stephens Plaza",+55-11-93333-0011,19/03/00
77681335684,"Bartolomeu Otaviano de Ferraz","2353 Andrew Inlet Suite 652",+1-671-746-2629x546,18/04/00
22233344455,"Leandro Augusto de Paranhos Amernma Tristão","028 Kenneth Locks",+55-11-91413-1213,16/09/00
10130986185,"Alfredo Anderson de Barros","250 Carroll Road",+1-770-767-4254,01/02/01
68334973043,"Leni Xaetreu","13734 Margaret Point",+1-254-970-1261,03/05/01
27048779600,"Humberto Mike de Uchôa","17858 Heidi Underpass",+1-454-626-5519x56950,16/06/01
27048779600,"Humberto Mike de Uchôa","17858 Heidi Underpass",+1-454-626-5519x56950,16/06/01
73645095255,"Gisele Rosatto","085 Christopher Manors",+1-132-406-7601,17/03/03
73645095255,"Gisele Rosatto","085 Christopher Manors",+1-132-406-7601,17/03/03
69036323845,"Jackson Jorge Suwoga","13850 Good Motorway",+1-262-563-8517,16/01/04
69036323845,"Jackson Jorge Suwoga","13850 Good Motorway",+1-262-563-8517,16/01/04
69737674648,"Abílio Jânio Joepa","14263 Garcia Mission Apt. 814",+1-280-314-4845x866,09/06/04
69737674648,"Abílio Jânio Joepa","14263 Garcia Mission Apt. 814",+1-280-314-4845x866,09/06/04
71491051654,"Joelma de Brandão","14956 Brown Knolls",+1-308-457-3135x0137,07/07/04
71491051654,"Joelma de Brandão","14956 Brown Knolls",+1-308-457-3135x0137,07/07/04
51010052012,"Bento Frias","060 Stewart Branch",+55-86-96667-7776,10/07/04
55740561385,"Ângelo Izcunarn","21067 Laurie Pike",+1-550-416-5992,07/08/04
69386999246,"David Meynyorn","139 Hutchinson Junctions",+1-268-776-5272x81605,12/04/05
69386999246,"David Meynyorn","139 Hutchinson Junctions",+1-268-776-5272x81605,12/04/05
85095067979,"Robson Drynom Freire Júnior","05080 Travis Shores",+1-082-745-7709x4741,04/08/05
86120095098,"Thiago Leandro do Rio de Souza","23836 Morales Avenue Apt. 703",+1-712-156-1000x894,01/06/07
70930328207,"Olímpia Estrada das Neves","230 Joshua Squares",+1-654-362-4649x8722,01/07/07
70930328207,"Olímpia Estrada das Neves","230 Joshua Squares",+1-654-362-4649x8722,01/07/07
64828219030,"Caio Geli Gomes","11950 Johnson Mission Apt. 583",+1-189-102-9525x579,13/03/08
18590127865,"Susan Olmo de Souza Rangel","16686 Williams Center",+1-385-549-8323x9389,19/08/08
81056839422,"Marielle da Serra","237 Richardson Ford Suite 476",+1-684-625-2006,29/12/08
22558877441,"Josilda Nair Lyphornson","03367 Briggs Wall",+1-046-659-3776x382,17/04/09
92871102507,"Albino Nicolas de Gimenes","247 Vaughn Shores",+1-741-371-8090x165,27/06/09
50677305777,"Paulo de Holanda do Espírito Santo Júnior","2076 Earl Fork Suite 238",+1-517-869-1890x06854,06/11/09*/

# Produza um relatório com os dados de todos os cursos, com suas respectivas disciplinas,
# oferecidos pela escola
SELECT c.Nome as Nome_Curso,dpto.Nome as Nome_Departamento,d.Nome as Nome_Disciplina FROM curso c 
JOIN departamento dpto ON  c.Codigo_Depto = dpto.Codigo
LEFT JOIN compoe cp ON cp.Codigo_Curso = c.Codigo 
JOIN disciplina d ON d.Codigo = cp.Codigo_Disc;

/*Nome_Curso,Nome_Departamento,Nome_Disciplina
Estatística,Exatas,"Cálculo 1"
Estatística,Exatas,"Cálculo 2"
Estatística,Exatas,Probabilidade
Estatística,Exatas,"Equações Lineares"
Finanças,Exatas,"Matemática Financeira"
Finanças,Exatas,"Admin. e Contabilidade"
Finanças,Exatas,"Mercado de Capitais"
"Engenharia Elétrica",Exatas,"Cálculo 1"
"Engenharia Elétrica",Exatas,"Circuitos Elétricos"
"Engenharia Elétrica",Exatas,"Instalações Elétricas"
Marketing,Administração,"Elementos do Marketing"
Marketing,Administração,"Mapeamento do Público"
Marketing,Administração,"Criação e Melhorias"
Marketing,Administração,"Mídias Sociais"
"Gestão de RH",Administração,"Admin. e Contabilidade"
"Gestão de RH",Administração,"Introd. Psicologia"
"Gestão de RH",Administração,"Gestão de Competências"
"Gestão de RH",Administração,"Identif. Realoc. de Talentos"
"Gestão Comercial",Administração,"Admin. e Contabilidade"
"Gestão Comercial",Administração,"Elementos do Marketing"
"Gestão Comercial",Administração,"Comportam. do Consumidor"
"Gestão Comercial",Administração,"Comércio exterior"
"Gestão Comercial",Administração,"Gestão de Projetos"
Letras,Administração,"Concepções de Linguagem"
Letras,Administração,"Gêneros Literários"
Letras,Administração,"Variação Linguística"
Letras,Administração,"Literaturas na Educação Básica"
Inglês,Idiomas,"Inglês Básico"
Inglês,Idiomas,"Inglês Intermediário"
Inglês,Idiomas,"Inglês Avançado"
Espanhol,Idiomas,"Espanhol Básico"
Espanhol,Idiomas,"Espanhol Intermediário"
Espanhol,Idiomas,"Espanhol Avançado"
Alemão,Idiomas,"Alemão Básico"
Alemão,Idiomas,"Alemão Intermediário"
Alemão,Idiomas,"Alemão Avançado"
Francês,Idiomas,"Francês Básico"
Francês,Idiomas,"Francês Intermediário"
Francês,Idiomas,"Francês Avançado"
"Ciência da Computação",TI,"Cálculo 1"
"Ciência da Computação",TI,Probabilidade
"Ciência da Computação",TI,Python
"Ciência da Computação",TI,"Data Science e IA"
"Ciência da Computação",TI,"Banco de Dados"*/

# Produza um relatório que contenha o nome dos alunos e as disciplinas em que estão
# matriculados

SELECT a.Nome as Nome_Aluno,d.Nome as Nome_Disciplina FROM aluno a 
JOIN matricula m ON a.CPF = m.CPF_Aluno 
JOIN curso c ON m.Codigo_Curso = c.Codigo
JOIN compoe cp ON c.Codigo = cp.Codigo_Curso
JOIN disciplina d ON cp.Codigo_Disc = d.Codigo ORDER BY a.Nome;

/*Nome_Aluno,Nome_Disciplina
"Abigail Dlantroz","Cálculo 1"
"Abigail Dlantroz","Cálculo 2"
"Abigail Dlantroz",Probabilidade
"Abigail Dlantroz","Equações Lineares"
"Abílio Jânio Joepa","Instalações Elétricas"
"Abílio Jânio Joepa","Cálculo 1"
"Abílio Jânio Joepa",Probabilidade
"Abílio Jânio Joepa","Cálculo 1"
"Abílio Jânio Joepa",Python
"Abílio Jânio Joepa","Data Science e IA"
"Abílio Jânio Joepa","Banco de Dados"
"Abílio Jânio Joepa","Circuitos Elétricos"
"Alan Siumyde Muu da Silva","Concepções de Linguagem"
"Alan Siumyde Muu da Silva","Gêneros Literários"
"Alan Siumyde Muu da Silva","Variação Linguística"
"Alan Siumyde Muu da Silva","Literaturas na Educação Básica"
"Albino Nicolas de Gimenes","Admin. e Contabilidade"
"Albino Nicolas de Gimenes","Matemática Financeira"
"Albino Nicolas de Gimenes","Mercado de Capitais"
"Alexandre Humberto Pinhão de Cerqueira Usago","Alemão Intermediário"
"Alexandre Humberto Pinhão de Cerqueira Usago","Alemão Avançado"
"Alexandre Humberto Pinhão de Cerqueira Usago","Alemão Básico"
"Alfredo Anderson de Barros","Inglês Básico"
"Alfredo Anderson de Barros","Inglês Avançado"
"Alfredo Anderson de Barros","Inglês Intermediário"
"Ali de Magalhães",Probabilidade
"Ali de Magalhães","Banco de Dados"
"Ali de Magalhães",Python
"Ali de Magalhães","Cálculo 1"
"Ali de Magalhães","Data Science e IA"
"Altair de Pereira Isbi Muchol","Inglês Intermediário"
"Altair de Pereira Isbi Muchol","Inglês Avançado"
"Altair de Pereira Isbi Muchol","Inglês Básico"
"Ana de Barbosa","Inglês Básico"
"Ana de Barbosa","Inglês Avançado"
"Ana de Barbosa","Inglês Intermediário"
"Ana de Moreira","Espanhol Intermediário"
"Ana de Moreira","Espanhol Básico"
"Ana de Moreira","Espanhol Avançado"
"Ana Dilma Phachuzsay","Comportam. do Consumidor"
"Ana Dilma Phachuzsay","Admin. e Contabilidade"
"Ana Dilma Phachuzsay","Elementos do Marketing"
"Ana Dilma Phachuzsay","Comércio exterior"
"Ana Dilma Phachuzsay","Gestão de Projetos"
"Ana Moreno","Cálculo 2"
"Ana Moreno",Probabilidade
"Ana Moreno","Equações Lineares"
"Ana Moreno","Cálculo 1"
"Ângelo Izcunarn","Admin. e Contabilidade"
"Ângelo Izcunarn","Matemática Financeira"
"Ângelo Izcunarn","Mercado de Capitais"
"Antônio Oeulu","Gestão de Competências"
"Antônio Oeulu","Admin. e Contabilidade"
"Antônio Oeulu","Identif. Realoc. de Talentos"
"Antônio Oeulu","Introd. Psicologia"
"Avelino Abirner Neto","Inglês Básico"
"Avelino Abirner Neto","Inglês Avançado"
"Avelino Abirner Neto","Inglês Intermediário"
"Bárbara Felícia Robitako","Admin. e Contabilidade"
"Bárbara Felícia Robitako","Equações Lineares"
"Bárbara Felícia Robitako","Cálculo 1"
"Bárbara Felícia Robitako","Mercado de Capitais"
"Bárbara Felícia Robitako","Matemática Financeira"
"Bárbara Felícia Robitako",Probabilidade
"Bárbara Felícia Robitako","Cálculo 2"
"Bartolomeu Otaviano de Ferraz","Espanhol Intermediário"
"Bartolomeu Otaviano de Ferraz","Espanhol Avançado"
"Bartolomeu Otaviano de Ferraz","Espanhol Básico"
"Beatriz Sônia Ublavi da Rocha",Probabilidade
"Beatriz Sônia Ublavi da Rocha","Cálculo 2"
"Beatriz Sônia Ublavi da Rocha","Cálculo 1"
"Beatriz Sônia Ublavi da Rocha","Equações Lineares"
"Bento Frias","Cálculo 1"
"Bento Frias","Circuitos Elétricos"
"Bento Frias","Instalações Elétricas"
"Bete Rute Pede","Francês Básico"
"Bete Rute Pede","Francês Avançado"
"Bete Rute Pede","Francês Intermediário"
"Bianca Maria dos Santos","Inglês Avançado"
"Bianca Maria dos Santos","Inglês Intermediário"
"Bianca Maria dos Santos","Inglês Básico"
"Brenda de Junqueira","Inglês Avançado"
"Brenda de Junqueira","Banco de Dados"
"Brenda de Junqueira","Inglês Intermediário"
"Brenda de Junqueira",Python
"Brenda de Junqueira",Probabilidade
"Brenda de Junqueira","Cálculo 1"
"Brenda de Junqueira","Data Science e IA"
"Brenda de Junqueira","Inglês Básico"
"Caio Geli Gomes","Gêneros Literários"
"Caio Geli Gomes","Concepções de Linguagem"
"Caio Geli Gomes","Variação Linguística"
"Caio Geli Gomes","Literaturas na Educação Básica"
"Carlos dos Santos Júnior","Admin. e Contabilidade"
"Carlos dos Santos Júnior","Elementos do Marketing"
"Carlos dos Santos Júnior","Comércio exterior"
"Carlos dos Santos Júnior","Gestão de Projetos"
"Carlos dos Santos Júnior","Comportam. do Consumidor"
"Cíntia Regina Schneider Teles","Literaturas na Educação Básica"
"Cíntia Regina Schneider Teles","Concepções de Linguagem"
"Cíntia Regina Schneider Teles","Gêneros Literários"
"Cíntia Regina Schneider Teles","Variação Linguística"
"Damares Célia de Martins Eclaovi da Silva","Matemática Financeira"
"Damares Célia de Martins Eclaovi da Silva","Admin. e Contabilidade"
"Damares Célia de Martins Eclaovi da Silva","Mercado de Capitais"
"Daniela Rute de Tozetto","Inglês Avançado"
"Daniela Rute de Tozetto","Inglês Básico"
"Daniela Rute de Tozetto","Inglês Intermediário"
"Danielle Kiean Durirna",Python
"Danielle Kiean Durirna","Data Science e IA"
"Danielle Kiean Durirna",Probabilidade
"Danielle Kiean Durirna","Banco de Dados"
"Danielle Kiean Durirna","Cálculo 1"
"David Meynyorn",Probabilidade
"David Meynyorn","Inglês Básico"
"David Meynyorn","Cálculo 1"
"David Meynyorn","Inglês Avançado"
"David Meynyorn","Banco de Dados"
"David Meynyorn",Python
"David Meynyorn","Data Science e IA"
"David Meynyorn","Inglês Intermediário"
"Dionísio Cirilo Weiss Lole","Inglês Básico"
"Dionísio Cirilo Weiss Lole","Alemão Básico"
"Dionísio Cirilo Weiss Lole","Inglês Avançado"
"Dionísio Cirilo Weiss Lole","Alemão Intermediário"
"Dionísio Cirilo Weiss Lole","Alemão Avançado"
"Dionísio Cirilo Weiss Lole","Inglês Intermediário"
"Dionísio Kim de Oliveira Fragoso Júnior","Criação e Melhorias"
"Dionísio Kim de Oliveira Fragoso Júnior","Elementos do Marketing"
"Dionísio Kim de Oliveira Fragoso Júnior","Mapeamento do Público"
"Dionísio Kim de Oliveira Fragoso Júnior","Identif. Realoc. de Talentos"
"Dionísio Kim de Oliveira Fragoso Júnior","Gestão de Competências"
"Dionísio Kim de Oliveira Fragoso Júnior","Admin. e Contabilidade"
"Dionísio Kim de Oliveira Fragoso Júnior","Mídias Sociais"
"Dionísio Kim de Oliveira Fragoso Júnior","Introd. Psicologia"
"Edson Coso","Inglês Intermediário"
"Edson Coso","Alemão Avançado"
"Edson Coso","Alemão Intermediário"
"Edson Coso","Alemão Básico"
"Edson Coso","Inglês Avançado"
"Edson Coso","Inglês Básico"
"Edu Arnaldo Mineiro Cuminnas Towateho","Admin. e Contabilidade"
"Edu Arnaldo Mineiro Cuminnas Towateho","Gestão de Competências"
"Edu Arnaldo Mineiro Cuminnas Towateho","Identif. Realoc. de Talentos"
"Edu Arnaldo Mineiro Cuminnas Towateho","Introd. Psicologia"
"Eduardo Nepanegi","Data Science e IA"
"Eduardo Nepanegi","Banco de Dados"
"Eduardo Nepanegi",Python
"Eduardo Nepanegi","Cálculo 1"
"Eduardo Nepanegi",Probabilidade
"Elano Akizoho de Souza Terceiro","Literaturas na Educação Básica"
"Elano Akizoho de Souza Terceiro","Concepções de Linguagem"
"Elano Akizoho de Souza Terceiro","Variação Linguística"
"Elano Akizoho de Souza Terceiro","Gêneros Literários"
"Elano Augusto Irnsitli","Francês Básico"
"Elano Augusto Irnsitli","Francês Avançado"
"Elano Augusto Irnsitli","Francês Intermediário"
"Eliomar Suzanne de Moura","Admin. e Contabilidade"
"Eliomar Suzanne de Moura","Introd. Psicologia"
"Eliomar Suzanne de Moura","Identif. Realoc. de Talentos"
"Eliomar Suzanne de Moura","Gestão de Competências"
"Eustáquio Itysson","Francês Avançado"
"Eustáquio Itysson","Francês Básico"
"Eustáquio Itysson","Francês Intermediário"
"Fabiana Dina de Melo","Comportam. do Consumidor"
"Fabiana Dina de Melo","Elementos do Marketing"
"Fabiana Dina de Melo","Gestão de Projetos"
"Fabiana Dina de Melo","Admin. e Contabilidade"
"Fabiana Dina de Melo","Comércio exterior"
"Gisele de Meireles","Equações Lineares"
"Gisele de Meireles",Probabilidade
"Gisele de Meireles","Cálculo 2"
"Gisele de Meireles","Cálculo 1"
"Gisele do Amaral de Malta","Introd. Psicologia"
"Gisele do Amaral de Malta","Identif. Realoc. de Talentos"
"Gisele do Amaral de Malta","Admin. e Contabilidade"
"Gisele do Amaral de Malta","Gestão de Competências"
"Gisele Rosatto","Espanhol Básico"
"Gisele Rosatto","Alemão Intermediário"
"Gisele Rosatto","Espanhol Avançado"
"Gisele Rosatto","Espanhol Intermediário"
"Gisele Rosatto","Alemão Avançado"
"Gisele Rosatto","Alemão Básico"
"Guiomar Verônica de Oliveira Naves","Mapeamento do Público"
"Guiomar Verônica de Oliveira Naves","Elementos do Marketing"
"Guiomar Verônica de Oliveira Naves","Mídias Sociais"
"Guiomar Verônica de Oliveira Naves","Criação e Melhorias"
"Hamilton Gunoi Martinez","Inglês Básico"
"Hamilton Gunoi Martinez","Inglês Avançado"
"Hamilton Gunoi Martinez","Inglês Intermediário"
"Helena Gois Creti","Alemão Intermediário"
"Helena Gois Creti","Alemão Básico"
"Helena Gois Creti","Alemão Avançado"
"Humberto Mike de Uchôa","Banco de Dados"
"Humberto Mike de Uchôa","Inglês Básico"
"Humberto Mike de Uchôa","Cálculo 1"
"Humberto Mike de Uchôa","Inglês Intermediário"
"Humberto Mike de Uchôa","Data Science e IA"
"Humberto Mike de Uchôa",Python
"Humberto Mike de Uchôa","Inglês Avançado"
"Humberto Mike de Uchôa",Probabilidade
"Ingrid de Angola Barroso","Comportam. do Consumidor"
"Ingrid de Angola Barroso","Admin. e Contabilidade"
"Ingrid de Angola Barroso","Comércio exterior"
"Ingrid de Angola Barroso","Elementos do Marketing"
"Ingrid de Angola Barroso","Gestão de Projetos"
"Isaías Hamilton da Silva","Espanhol Básico"
"Isaías Hamilton da Silva","Espanhol Avançado"
"Isaías Hamilton da Silva","Gêneros Literários"
"Isaías Hamilton da Silva","Concepções de Linguagem"
"Isaías Hamilton da Silva","Espanhol Intermediário"
"Isaías Hamilton da Silva","Variação Linguística"
"Isaías Hamilton da Silva","Literaturas na Educação Básica"
"Ismael de Soares Júnior","Inglês Básico"
"Ismael de Soares Júnior","Admin. e Contabilidade"
"Ismael de Soares Júnior","Inglês Intermediário"
"Ismael de Soares Júnior","Inglês Avançado"
"Ismael de Soares Júnior","Comportam. do Consumidor"
"Ismael de Soares Júnior","Gestão de Projetos"
"Ismael de Soares Júnior","Comércio exterior"
"Ismael de Soares Júnior","Elementos do Marketing"
"Israel de Assunção Pimenta","Comportam. do Consumidor"
"Israel de Assunção Pimenta","Inglês Intermediário"
"Israel de Assunção Pimenta","Comércio exterior"
"Israel de Assunção Pimenta","Gestão de Projetos"
"Israel de Assunção Pimenta","Admin. e Contabilidade"
"Israel de Assunção Pimenta","Inglês Avançado"
"Israel de Assunção Pimenta","Elementos do Marketing"
"Israel de Assunção Pimenta","Inglês Básico"
"Itamar de Carvalho Júnior","Instalações Elétricas"
"Itamar de Carvalho Júnior","Cálculo 1"
"Itamar de Carvalho Júnior","Circuitos Elétricos"
"Ivanete Mirela Tsuyupeka","Alemão Intermediário"
"Ivanete Mirela Tsuyupeka","Alemão Básico"
"Ivanete Mirela Tsuyupeka","Alemão Avançado"
"Jackson Jorge Suwoga","Cálculo 1"
"Jackson Jorge Suwoga","Inglês Intermediário"
"Jackson Jorge Suwoga",Probabilidade
"Jackson Jorge Suwoga","Data Science e IA"
"Jackson Jorge Suwoga","Inglês Básico"
"Jackson Jorge Suwoga","Inglês Avançado"
"Jackson Jorge Suwoga",Python
"Jackson Jorge Suwoga","Banco de Dados"
"João Cléber da Silva","Criação e Melhorias"
"João Cléber da Silva","Inglês Intermediário"
"João Cléber da Silva","Inglês Avançado"
"João Cléber da Silva","Inglês Básico"
"João Cléber da Silva","Mapeamento do Público"
"João Cléber da Silva","Elementos do Marketing"
"João Cléber da Silva","Mídias Sociais"
"Joelma de Brandão","Alemão Básico"
"Joelma de Brandão","Espanhol Avançado"
"Joelma de Brandão","Alemão Avançado"
"Joelma de Brandão","Espanhol Intermediário"
"Joelma de Brandão","Alemão Intermediário"
"Joelma de Brandão","Espanhol Básico"
"Jonas Fred Rangel","Cálculo 1"
"Jonas Fred Rangel","Cálculo 1"
"Jonas Fred Rangel","Data Science e IA"
"Jonas Fred Rangel",Python
"Jonas Fred Rangel","Banco de Dados"
"Jonas Fred Rangel","Circuitos Elétricos"
"Jonas Fred Rangel",Probabilidade
"Jonas Fred Rangel","Instalações Elétricas"
"Jorge Walter Mili Alkenumi Júnior","Alemão Intermediário"
"Jorge Walter Mili Alkenumi Júnior","Alemão Avançado"
"Jorge Walter Mili Alkenumi Júnior","Alemão Básico"
"José Décio Zyvo","Mapeamento do Público"
"José Décio Zyvo","Elementos do Marketing"
"José Décio Zyvo","Criação e Melhorias"
"José Décio Zyvo","Mídias Sociais"
"José Mourão","Comportam. do Consumidor"
"José Mourão","Elementos do Marketing"
"José Mourão","Admin. e Contabilidade"
"José Mourão","Comércio exterior"
"José Mourão","Gestão de Projetos"
"Josiel de Alvim","Cálculo 1"
"Josiel de Alvim",Probabilidade
"Josiel de Alvim","Banco de Dados"
"Josiel de Alvim",Python
"Josiel de Alvim","Data Science e IA"
"Josilda Nair Lyphornson","Alemão Básico"
"Josilda Nair Lyphornson","Alemão Intermediário"
"Josilda Nair Lyphornson","Alemão Avançado"
"Joyce Aparecida da Silva","Gestão de Competências"
"Joyce Aparecida da Silva","Introd. Psicologia"
"Joyce Aparecida da Silva","Identif. Realoc. de Talentos"
"Joyce Aparecida da Silva","Admin. e Contabilidade"
"Juliano de Diniz Esluyer Anuneson","Inglês Básico"
"Juliano de Diniz Esluyer Anuneson","Inglês Avançado"
"Juliano de Diniz Esluyer Anuneson","Inglês Intermediário"
"Karin Luciana de Antunes Pinhão","Elementos do Marketing"
"Karin Luciana de Antunes Pinhão","Admin. e Contabilidade"
"Karin Luciana de Antunes Pinhão","Gestão de Projetos"
"Karin Luciana de Antunes Pinhão","Comportam. do Consumidor"
"Karin Luciana de Antunes Pinhão","Comércio exterior"
"Karina dos Santos","Criação e Melhorias"
"Karina dos Santos","Admin. e Contabilidade"
"Karina dos Santos","Elementos do Marketing"
"Karina dos Santos","Introd. Psicologia"
"Karina dos Santos","Identif. Realoc. de Talentos"
"Karina dos Santos","Mapeamento do Público"
"Karina dos Santos","Gestão de Competências"
"Karina dos Santos","Mídias Sociais"
"Kauê Albafriov","Inglês Avançado"
"Kauê Albafriov","Inglês Intermediário"
"Kauê Albafriov","Inglês Básico"
"Laerte Ederson Moreno","Identif. Realoc. de Talentos"
"Laerte Ederson Moreno","Introd. Psicologia"
"Laerte Ederson Moreno","Gestão de Competências"
"Laerte Ederson Moreno","Admin. e Contabilidade"
"Laura Yoripe","Literaturas na Educação Básica"
"Laura Yoripe","Variação Linguística"
"Laura Yoripe","Gêneros Literários"
"Laura Yoripe","Concepções de Linguagem"
"Leandro Augusto de Paranhos Amernma Tristão","Cálculo 1"
"Leandro Augusto de Paranhos Amernma Tristão","Cálculo 2"
"Leandro Augusto de Paranhos Amernma Tristão",Probabilidade
"Leandro Augusto de Paranhos Amernma Tristão","Equações Lineares"
"Leni Xaetreu","Matemática Financeira"
"Leni Xaetreu","Admin. e Contabilidade"
"Leni Xaetreu","Mercado de Capitais"
"Lili Terezinha da Silva","Cálculo 1"
"Lili Terezinha da Silva",Probabilidade
"Lili Terezinha da Silva",Python
"Lili Terezinha da Silva","Data Science e IA"
"Lili Terezinha da Silva","Banco de Dados"
"Lúcio Baltazar da Silva","Mapeamento do Público"
"Lúcio Baltazar da Silva","Mídias Sociais"
"Lúcio Baltazar da Silva","Criação e Melhorias"
"Lúcio Baltazar da Silva","Elementos do Marketing"
"Manoel Charles de Trindade Penedo","Cálculo 1"
"Manoel Charles de Trindade Penedo",Probabilidade
"Manoel Charles de Trindade Penedo",Python
"Manoel Charles de Trindade Penedo","Data Science e IA"
"Manoel Charles de Trindade Penedo","Banco de Dados"
"Marcelo de Barbosa","Elementos do Marketing"
"Marcelo de Barbosa","Comércio exterior"
"Marcelo de Barbosa","Gestão de Projetos"
"Marcelo de Barbosa","Admin. e Contabilidade"
"Marcelo de Barbosa","Comportam. do Consumidor"
"Marciano de Bezerra Buarque Oeyser","Admin. e Contabilidade"
"Marciano de Bezerra Buarque Oeyser","Identif. Realoc. de Talentos"
"Marciano de Bezerra Buarque Oeyser","Gestão de Competências"
"Marciano de Bezerra Buarque Oeyser","Introd. Psicologia"
"Marielle da Serra","Admin. e Contabilidade"
"Marielle da Serra","Identif. Realoc. de Talentos"
"Marielle da Serra","Introd. Psicologia"
"Marielle da Serra","Gestão de Competências"
"Mário Frederico Ovrilso","Espanhol Avançado"
"Mário Frederico Ovrilso","Espanhol Intermediário"
"Mário Frederico Ovrilso","Espanhol Básico"
"Mateus Rodrigues Guedes Npo","Espanhol Básico"
"Mateus Rodrigues Guedes Npo","Espanhol Intermediário"
"Mateus Rodrigues Guedes Npo","Espanhol Avançado"
"Meire Amanda de Osório da Silva","Criação e Melhorias"
"Meire Amanda de Osório da Silva","Mapeamento do Público"
"Meire Amanda de Osório da Silva","Inglês Básico"
"Meire Amanda de Osório da Silva","Inglês Intermediário"
"Meire Amanda de Osório da Silva","Inglês Avançado"
"Meire Amanda de Osório da Silva","Mídias Sociais"
"Meire Amanda de Osório da Silva","Elementos do Marketing"
"Mel Naves de Vasconcelos",Probabilidade
"Mel Naves de Vasconcelos","Cálculo 1"
"Mel Naves de Vasconcelos","Banco de Dados"
"Mel Naves de Vasconcelos","Data Science e IA"
"Mel Naves de Vasconcelos",Python
"Melanie Vânia de Camargo da Rocha","Instalações Elétricas"
"Melanie Vânia de Camargo da Rocha","Circuitos Elétricos"
"Melanie Vânia de Camargo da Rocha","Cálculo 1"
"Milene Selma dos Pinhais de Moura Banhos","Concepções de Linguagem"
"Milene Selma dos Pinhais de Moura Banhos","Espanhol Básico"
"Milene Selma dos Pinhais de Moura Banhos","Espanhol Avançado"
"Milene Selma dos Pinhais de Moura Banhos","Variação Linguística"
"Milene Selma dos Pinhais de Moura Banhos","Literaturas na Educação Básica"
"Milene Selma dos Pinhais de Moura Banhos","Espanhol Intermediário"
"Milene Selma dos Pinhais de Moura Banhos","Gêneros Literários"
"Moisés Fontes de Machado","Inglês Intermediário"
"Moisés Fontes de Machado","Inglês Avançado"
"Moisés Fontes de Machado","Inglês Básico"
"Mônica Fabiana Prates","Espanhol Avançado"
"Mônica Fabiana Prates","Espanhol Intermediário"
"Mônica Fabiana Prates","Espanhol Básico"
"Nádia Rauson Efro","Concepções de Linguagem"
"Nádia Rauson Efro","Gêneros Literários"
"Nádia Rauson Efro","Variação Linguística"
"Nádia Rauson Efro","Literaturas na Educação Básica"
"Neila da Silva","Admin. e Contabilidade"
"Neila da Silva","Elementos do Marketing"
"Neila da Silva","Gestão de Projetos"
"Neila da Silva","Comportam. do Consumidor"
"Neila da Silva","Comércio exterior"
"Ney Adílson Gomo","Mapeamento do Público"
"Ney Adílson Gomo","Elementos do Marketing"
"Ney Adílson Gomo","Mídias Sociais"
"Ney Adílson Gomo","Criação e Melhorias"
"Ney de Toledo Sanches","Inglês Básico"
"Ney de Toledo Sanches","Inglês Intermediário"
"Ney de Toledo Sanches","Instalações Elétricas"
"Ney de Toledo Sanches","Circuitos Elétricos"
"Ney de Toledo Sanches","Inglês Avançado"
"Ney de Toledo Sanches","Cálculo 1"
"Olímpia de Chaves Sasenabu","Inglês Intermediário"
"Olímpia de Chaves Sasenabu","Comércio exterior"
"Olímpia de Chaves Sasenabu","Inglês Avançado"
"Olímpia de Chaves Sasenabu","Comportam. do Consumidor"
"Olímpia de Chaves Sasenabu","Elementos do Marketing"
"Olímpia de Chaves Sasenabu","Gestão de Projetos"
"Olímpia de Chaves Sasenabu","Inglês Básico"
"Olímpia de Chaves Sasenabu","Admin. e Contabilidade"
"Olímpia Estrada das Neves","Inglês Intermediário"
"Olímpia Estrada das Neves","Mapeamento do Público"
"Olímpia Estrada das Neves","Criação e Melhorias"
"Olímpia Estrada das Neves","Inglês Avançado"
"Olímpia Estrada das Neves","Mídias Sociais"
"Olímpia Estrada das Neves","Elementos do Marketing"
"Olímpia Estrada das Neves","Inglês Básico"
"Oliver Pires Nago","Francês Básico"
"Oliver Pires Nago","Francês Intermediário"
"Oliver Pires Nago","Francês Avançado"
"Otaviano Marcelo de Carvalho","Comportam. do Consumidor"
"Otaviano Marcelo de Carvalho","Comércio exterior"
"Otaviano Marcelo de Carvalho","Inglês Intermediário"
"Otaviano Marcelo de Carvalho","Inglês Básico"
"Otaviano Marcelo de Carvalho","Gestão de Projetos"
"Otaviano Marcelo de Carvalho","Inglês Avançado"
"Otaviano Marcelo de Carvalho","Admin. e Contabilidade"
"Otaviano Marcelo de Carvalho","Elementos do Marketing"
"Otávio Gilmar de Alves Nirnofezsen Inau Júnior","Introd. Psicologia"
"Otávio Gilmar de Alves Nirnofezsen Inau Júnior","Admin. e Contabilidade"
"Otávio Gilmar de Alves Nirnofezsen Inau Júnior","Gestão de Competências"
"Otávio Gilmar de Alves Nirnofezsen Inau Júnior","Identif. Realoc. de Talentos"
"Otto Marlon Iboman da Silva","Inglês Intermediário"
"Otto Marlon Iboman da Silva","Inglês Avançado"
"Otto Marlon Iboman da Silva","Inglês Básico"
"Paula Eztrern","Alemão Intermediário"
"Paula Eztrern","Espanhol Básico"
"Paula Eztrern","Espanhol Avançado"
"Paula Eztrern","Alemão Avançado"
"Paula Eztrern","Espanhol Intermediário"
"Paula Eztrern","Alemão Básico"
"Paulo de Holanda do Espírito Santo Júnior",Probabilidade
"Paulo de Holanda do Espírito Santo Júnior",Python
"Paulo de Holanda do Espírito Santo Júnior","Cálculo 1"
"Paulo de Holanda do Espírito Santo Júnior","Data Science e IA"
"Paulo de Holanda do Espírito Santo Júnior","Banco de Dados"
"Poliana Yasmin Naves Lielua","Inglês Avançado"
"Poliana Yasmin Naves Lielua","Inglês Intermediário"
"Poliana Yasmin Naves Lielua","Inglês Básico"
"Quésia Amoã","Circuitos Elétricos"
"Quésia Amoã","Cálculo 1"
"Quésia Amoã",Python
"Quésia Amoã",Probabilidade
"Quésia Amoã","Instalações Elétricas"
"Quésia Amoã","Cálculo 1"
"Quésia Amoã","Data Science e IA"
"Quésia Amoã","Banco de Dados"
"Quirino Martinez da Silva Neienason","Matemática Financeira"
"Quirino Martinez da Silva Neienason","Mercado de Capitais"
"Quirino Martinez da Silva Neienason","Cálculo 1"
"Quirino Martinez da Silva Neienason","Cálculo 2"
"Quirino Martinez da Silva Neienason","Admin. e Contabilidade"
"Quirino Martinez da Silva Neienason",Probabilidade
"Quirino Martinez da Silva Neienason","Equações Lineares"
"Raiane da Luz Gutierrez de Borges","Mídias Sociais"
"Raiane da Luz Gutierrez de Borges","Criação e Melhorias"
"Raiane da Luz Gutierrez de Borges","Gestão de Competências"
"Raiane da Luz Gutierrez de Borges","Elementos do Marketing"
"Raiane da Luz Gutierrez de Borges","Introd. Psicologia"
"Raiane da Luz Gutierrez de Borges","Mapeamento do Público"
"Raiane da Luz Gutierrez de Borges","Identif. Realoc. de Talentos"
"Raiane da Luz Gutierrez de Borges","Admin. e Contabilidade"
"Reinaldo Murilo da Silva",Probabilidade
"Reinaldo Murilo da Silva","Equações Lineares"
"Reinaldo Murilo da Silva","Cálculo 1"
"Reinaldo Murilo da Silva","Cálculo 2"
"Roberta de Oliveira Ximenes","Admin. e Contabilidade"
"Roberta de Oliveira Ximenes","Introd. Psicologia"
"Roberta de Oliveira Ximenes","Gestão de Competências"
"Roberta de Oliveira Ximenes","Identif. Realoc. de Talentos"
"Roberto de Nogueira","Inglês Básico"
"Roberto de Nogueira","Inglês Avançado"
"Roberto de Nogueira","Inglês Intermediário"
"Roberval da Cunha de Tavares","Alemão Avançado"
"Roberval da Cunha de Tavares","Alemão Básico"
"Roberval da Cunha de Tavares","Inglês Intermediário"
"Roberval da Cunha de Tavares","Alemão Intermediário"
"Roberval da Cunha de Tavares","Inglês Avançado"
"Roberval da Cunha de Tavares","Inglês Básico"
"Roberval de Amorim Drouzcos","Francês Intermediário"
"Roberval de Amorim Drouzcos","Francês Básico"
"Roberval de Amorim Drouzcos","Francês Avançado"
"Robson Drynom Freire Júnior","Equações Lineares"
"Robson Drynom Freire Júnior","Cálculo 2"
"Robson Drynom Freire Júnior","Cálculo 1"
"Robson Drynom Freire Júnior",Probabilidade
"Rogério Lowimirnian","Cálculo 2"
"Rogério Lowimirnian",Probabilidade
"Rogério Lowimirnian","Cálculo 1"
"Rogério Lowimirnian","Equações Lineares"
"Rosana Talita de Alvarenga","Francês Básico"
"Rosana Talita de Alvarenga","Francês Avançado"
"Rosana Talita de Alvarenga","Francês Intermediário"
"Samara Risme do Vale",Python
"Samara Risme do Vale","Cálculo 1"
"Samara Risme do Vale","Banco de Dados"
"Samara Risme do Vale","Data Science e IA"
"Samara Risme do Vale",Probabilidade
"Sandra Paulínia Canam","Equações Lineares"
"Sandra Paulínia Canam","Cálculo 1"
"Sandra Paulínia Canam","Cálculo 2"
"Sandra Paulínia Canam",Probabilidade
"Sandro Waei Mendes de Britto","Matemática Financeira"
"Sandro Waei Mendes de Britto","Mercado de Capitais"
"Sandro Waei Mendes de Britto","Admin. e Contabilidade"
"Selena Mayra de Souza Ugiza Gutierrez","Criação e Melhorias"
"Selena Mayra de Souza Ugiza Gutierrez","Mapeamento do Público"
"Selena Mayra de Souza Ugiza Gutierrez","Mídias Sociais"
"Selena Mayra de Souza Ugiza Gutierrez","Elementos do Marketing"
"Selma Fortes","Banco de Dados"
"Selma Fortes","Cálculo 1"
"Selma Fortes",Probabilidade
"Selma Fortes",Python
"Selma Fortes","Data Science e IA"
"Sheila Ocuã",Probabilidade
"Sheila Ocuã",Python
"Sheila Ocuã","Banco de Dados"
"Sheila Ocuã","Data Science e IA"
"Sheila Ocuã","Cálculo 1"
"Simão de Fraga Neto","Inglês Básico"
"Simão de Fraga Neto","Inglês Intermediário"
"Simão de Fraga Neto","Circuitos Elétricos"
"Simão de Fraga Neto","Instalações Elétricas"
"Simão de Fraga Neto","Inglês Avançado"
"Simão de Fraga Neto","Cálculo 1"
"Soraya Brides Liuviã","Admin. e Contabilidade"
"Soraya Brides Liuviã","Gestão de Competências"
"Soraya Brides Liuviã","Identif. Realoc. de Talentos"
"Soraya Brides Liuviã","Introd. Psicologia"
"Suely Daniela Cavalcante","Admin. e Contabilidade"
"Suely Daniela Cavalcante","Gestão de Competências"
"Suely Daniela Cavalcante","Introd. Psicologia"
"Suely Daniela Cavalcante","Identif. Realoc. de Talentos"
"Susan Olmo de Souza Rangel","Literaturas na Educação Básica"
"Susan Olmo de Souza Rangel","Concepções de Linguagem"
"Susan Olmo de Souza Rangel","Gêneros Literários"
"Susan Olmo de Souza Rangel","Variação Linguística"
"Terezinha Bise de Araújo Finanatiov","Inglês Avançado"
"Terezinha Bise de Araújo Finanatiov","Cálculo 1"
"Terezinha Bise de Araújo Finanatiov","Inglês Intermediário"
"Terezinha Bise de Araújo Finanatiov","Instalações Elétricas"
"Terezinha Bise de Araújo Finanatiov","Inglês Básico"
"Terezinha Bise de Araújo Finanatiov","Circuitos Elétricos"
"Thiago Leandro do Rio de Souza","Data Science e IA"
"Thiago Leandro do Rio de Souza",Probabilidade
"Thiago Leandro do Rio de Souza","Banco de Dados"
"Thiago Leandro do Rio de Souza",Python
"Thiago Leandro do Rio de Souza","Cálculo 1"
"Úrsula de Angola Heijira","Matemática Financeira"
"Úrsula de Angola Heijira","Admin. e Contabilidade"
"Úrsula de Angola Heijira","Mercado de Capitais"
"Úrsula dos Santos Behere do Espírito Santo","Inglês Básico"
"Úrsula dos Santos Behere do Espírito Santo","Inglês Avançado"
"Úrsula dos Santos Behere do Espírito Santo","Inglês Intermediário"
"Valéria Natália de Soares do Paraná","Concepções de Linguagem"
"Valéria Natália de Soares do Paraná","Gêneros Literários"
"Valéria Natália de Soares do Paraná","Literaturas na Educação Básica"
"Valéria Natália de Soares do Paraná","Variação Linguística"
"Victor de Medeiros d"Ávila Ecifoson","Alemão Avançado"
"Victor de Medeiros d"Ávila Ecifoson","Alemão Intermediário"
"Victor de Medeiros d"Ávila Ecifoson","Alemão Básico"
"Viviane Larissa de Sampaio","Francês Básico"
"Viviane Larissa de Sampaio","Francês Intermediário"
"Viviane Larissa de Sampaio","Francês Avançado"
"Wendy Tatiana Mercado de Menezes","Espanhol Avançado"
"Wendy Tatiana Mercado de Menezes","Espanhol Intermediário"
"Wendy Tatiana Mercado de Menezes","Espanhol Básico"
"Willian Martin Arno","Banco de Dados"
"Willian Martin Arno","Cálculo 1"
"Willian Martin Arno",Python
"Willian Martin Arno","Data Science e IA"
"Willian Martin Arno",Probabilidade
"Xerxes do Paraná","Equações Lineares"
"Xerxes do Paraná",Probabilidade
"Xerxes do Paraná","Cálculo 2"
"Xerxes do Paraná","Cálculo 1"
"Yasmin Banhos","Espanhol Intermediário"
"Yasmin Banhos","Espanhol Avançado"
"Yasmin Banhos","Espanhol Básico"
"Zara de Angola","Espanhol Intermediário"
"Zara de Angola","Espanhol Avançado"
"Zara de Angola","Espanhol Básico"*/

# Produza um relatório com os dados dos professores e as disciplinas que ministram

SELECT p.Matricula,p.Nome,p.Telefone,d.Nome as Nome_Disciplina,d.Qtde_Creditos FROM professor p 
LEFT JOIN disciplina d ON p.Matricula = d.Matricula_Prof 
ORDER BY p.Matricula;

/*Matricula,Nome,Telefone,Nome_Disciplina,Qtde_Creditos
1,"Gabriela Genir Marinho",+1-006-414-8797,"Cálculo 2",3
2,"Marli de Holanda Opinvic",+1-008-628-9256x246,"Elementos do Marketing",3
2,"Marli de Holanda Opinvic",+1-008-628-9256x246,"Mapeamento do Público",4
2,"Marli de Holanda Opinvic",+1-008-628-9256x246,"Criação e Melhorias",5
2,"Marli de Holanda Opinvic",+1-008-628-9256x246,"Mídias Sociais",6
3,"Walter Mário de Muniz",+55-11-99999-8888,"Espanhol Básico",2
3,"Walter Mário de Muniz",+55-11-99999-8888,"Espanhol Intermediário",3
4,"Cléber de Vasconcelos",+55-11-4224-2626,Python,3
5,"Selena Caroline Cavalcante da Silva",+1-013-001-8838,"Cálculo 1",2
6,"Gabriela da Silva de Macedo",+1-026-402-2651,"Comércio exterior",4
6,"Gabriela da Silva de Macedo",+1-026-402-2651,"Gestão de Projetos",5
7,"Heitor Raul de Meireles Rilia",+1-032-081-6436,"Francês Básico",2
7,"Heitor Raul de Meireles Rilia",+1-032-081-6436,"Francês Intermediário",3
7,"Heitor Raul de Meireles Rilia",+1-032-081-6436,"Francês Avançado",4
8,"Gabriela Maria Ribohi Valente",+1-037-591-5560x81884,Probabilidade,4
9,"Lúcio Ceilson",+1-019-168-1103x30298,"Admin. e Contabilidade",2
10,"Marco Yumoma Neto",+1-024-173-1193x0353,"Concepções de Linguagem",2
10,"Marco Yumoma Neto",+1-024-173-1193x0353,"Gêneros Literários",3
10,"Marco Yumoma Neto",+1-024-173-1193x0353,"Variação Linguística",4
10,"Marco Yumoma Neto",+1-024-173-1193x0353,"Literaturas na Educação Básica",5
11,"Áureo de Palhares Neiol",+55-51-92929-5550,"Alemão Básico",2
11,"Áureo de Palhares Neiol",+55-51-92929-5550,"Alemão Intermediário",3
11,"Áureo de Palhares Neiol",+55-51-92929-5550,"Alemão Avançado",4
12,"Sílvia Rosimeire Franco",+55-11-91010-2020,"Data Science e IA",5
13,"João Osvaldo de Oliva do Prado",+55-11-97887-8007,"Circuitos Elétricos",3
13,"João Osvaldo de Oliva do Prado",+55-11-97887-8007,"Instalações Elétricas",4
14,"Flaviana Supugeko de Arantes",+55-21-90909-4444,"Gestão de Competências",3
14,"Flaviana Supugeko de Arantes",+55-21-90909-4444,"Identif. Realoc. de Talentos",4
15,"Ronaldo Severino Berrea Bozuga",+1-047-466-1919x28434,"Inglês Avançado",4
15,"Ronaldo Severino Berrea Bozuga",+1-047-466-1919x28434,"Espanhol Avançado",4
16,"Romildo Ademar da Silva Fragoso Júnior",+1-051-279-6304x91019,"Equações Lineares",5
17,"Bella Biwo",+1-060-465-8808x51762,"Matemática Financeira",3
17,"Bella Biwo",+1-060-465-8808x51762,"Mercado de Capitais",4
18,"Márcio de Oliveira Negrão",+1-061-832-1376x6059,"Comportam. do Consumidor",3
18,"Márcio de Oliveira Negrão",+1-061-832-1376x6059,"Introd. Psicologia",2
19,"Décio de Leão do Amaral Terceiro",+1-065-022-0820,"Inglês Básico",2
19,"Décio de Leão do Amaral Terceiro",+1-065-022-0820,"Inglês Intermediário",3
20,"Moacyr Arthur Góis",+55-19-90001-8889,"Banco de Dados",6*/

# Produza um relatório com os nomes das disciplinas e seus pré-requisitos

SELECT d.Nome as Nome_Disciplina,
CASE WHEN d1.Codigo IS NULL THEN 'Sem pré-requisitos' ELSE d1.Nome END as Nome_Dependencia 
FROM disciplina d 
LEFT JOIN pre_req p ON d.Codigo = p.Codigo_Disc
LEFT JOIN disciplina d1 ON p.Codigo_Disc_Dependencia = d1.Codigo
ORDER BY d.Codigo;

/*Nome_Disciplina,Nome_Dependencia
"Cálculo 1","Sem pré-requisitos"
"Cálculo 2","Cálculo 1"
Probabilidade,"Sem pré-requisitos"
"Equações Lineares","Sem pré-requisitos"
"Matemática Financeira","Sem pré-requisitos"
"Admin. e Contabilidade","Sem pré-requisitos"
"Mercado de Capitais","Matemática Financeira"
Python,"Sem pré-requisitos"
"Data Science e IA",Python
"Banco de Dados","Sem pré-requisitos"
"Circuitos Elétricos","Sem pré-requisitos"
"Instalações Elétricas","Circuitos Elétricos"
"Elementos do Marketing","Sem pré-requisitos"
"Mapeamento do Público","Sem pré-requisitos"
"Criação e Melhorias","Elementos do Marketing"
"Mídias Sociais","Sem pré-requisitos"
"Comportam. do Consumidor","Sem pré-requisitos"
"Comércio exterior","Elementos do Marketing"
"Gestão de Projetos","Admin. e Contabilidade"
"Introd. Psicologia","Sem pré-requisitos"
"Gestão de Competências","Sem pré-requisitos"
"Identif. Realoc. de Talentos","Introd. Psicologia"
"Concepções de Linguagem","Sem pré-requisitos"
"Gêneros Literários","Sem pré-requisitos"
"Variação Linguística","Sem pré-requisitos"
"Literaturas na Educação Básica","Gêneros Literários"
"Inglês Básico","Sem pré-requisitos"
"Inglês Intermediário","Inglês Básico"
"Inglês Avançado","Inglês Intermediário"
"Espanhol Básico","Sem pré-requisitos"
"Espanhol Intermediário","Espanhol Básico"
"Espanhol Avançado","Espanhol Intermediário"
"Alemão Básico","Sem pré-requisitos"
"Alemão Intermediário","Alemão Básico"
"Alemão Avançado","Alemão Intermediário"
"Francês Básico","Sem pré-requisitos"
"Francês Intermediário","Francês Básico"
"Francês Avançado","Francês Intermediário"*/

# Produza um relatório com a média de idade dos alunos matriculados em cada curso

SELECT c.Nome AS Nome_Curso,FORMAT(AVG(TIMESTAMPDIFF(YEAR, a.Data_Nasc, CURDATE())),2) AS Media_Idade_Alunos FROM curso c 
LEFT JOIN matricula m ON c.Codigo = m.Codigo_Curso
LEFT JOIN aluno a ON m.CPF_Aluno = a.CPF
GROUP BY c.Nome
ORDER BY Media_Idade_Alunos DESC;

/*Nome_Curso,Media_Idade_Alunos
Marketing,60.45
Francês,55.14
"Gestão Comercial",55.08
Inglês,53.81
Letras,52.60
"Gestão de RH",51.87
Espanhol,49.00
"Engenharia Elétrica",45.67
Estatística,45.58
"Ciência da Computação",44.35
Finanças,40.63
Alemão,39.58*/

# Produza um relatório com os cursos oferecidos por cada departamento

SELECT d.Nome AS Nome_Departamento,
CASE WHEN c.Nome IS NOT NULL THEN c.Nome ELSE 'Não oferece curso' END AS Nome_Curso 
FROM departamento d 
LEFT JOIN curso c ON d.Codigo = c.Codigo_Depto
ORDER BY d.Nome

/*Nome_Departamento,Nome_Curso
Administração,Marketing
Administração,"Gestão de RH"
Administração,"Gestão Comercial"
Administração,Letras
Diretoria,"Não oferece curso"
Exatas,Estatística
Exatas,Finanças
Exatas,"Engenharia Elétrica"
Financeiro,"Não oferece curso"
Humanas,"Não oferece curso"
Idiomas,Inglês
Idiomas,Espanhol
Idiomas,Alemão
Idiomas,Francês
RH,"Não oferece curso"
Secretaria,"Não oferece curso"
TI,"Ciência da Computação"*/