--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-02 19:32:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 25413)
-- Name: cemetery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cemetery (
    name character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    longitude numeric NOT NULL,
    latitude numeric NOT NULL
);


ALTER TABLE public.cemetery OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25418)
-- Name: haunted_places; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.haunted_places (
    city character varying(255) NOT NULL,
    description character varying(500),
    location_name character varying(255) NOT NULL,
    state character(40),
    longitude numeric,
    latitude numeric
);


ALTER TABLE public.haunted_places OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25423)
-- Name: historical_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historical_sites (
    place_name character varying(255) NOT NULL,
    city character varying(500),
    longitude numeric,
    latitude numeric,
    state character(40)
);


ALTER TABLE public.historical_sites OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25428)
-- Name: medical; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medical (
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    long numeric NOT NULL,
    lat numeric NOT NULL
);


ALTER TABLE public.medical OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25433)
-- Name: us_census; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.us_census (
    state character varying(255) NOT NULL,
    county character varying(255) NOT NULL,
    population integer NOT NULL
);


ALTER TABLE public.us_census OWNER TO postgres;

--
-- TOC entry 4792 (class 0 OID 25413)
-- Dependencies: 215
-- Data for Name: cemetery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cemetery (name, city, longitude, latitude) FROM stdin;
Goldamer Cemetery	Dodge City	-100.907233	37.772977
Haskell Cemetery	Sublette	-100.875721	37.554617
Buda Cemetery	Ness City	-100.17585	38.289848
Old Mission Cemetery	Wichita	-97.29671099	37.724458
Fairview Cemetery	Cheney	-97.78610799	37.619584
Saint John Catholic Cemetery	Lenexa	-94.74181284	38.96698995
Aubry Cemetery	Stilwell	-94.67087499	38.781441
Ogallah Cemetery	Ogallah	-99.72429799	38.992601
Rago Cemetery	Spivey	-98.07410799	37.459038
Arlington Cemetery	Arlington	-98.16788001	37.9054977
Saint Paul Evangelical Church Cemetery	Bluff City	-97.82329137	37.11071478
Ensminger Cemetery	Bronson	-95.06038899	37.943228
Burrton Cemetery	Burrton	-97.6756662	38.014977
Delhi Cemetery	Osborne	-98.52802999	39.155335
Pleasant View Cemetery	Logan	-99.55340799	39.673493
Spring Branch Cemetery	Woodstown	-99.05849014	39.50972779
Greencrest Memorial Garden	Dodge City	-100.0523546	37.76127159
Mount Herman Cemetery	Paradise	-98.94442696	39.13324784
St. Mary's Cemetery	Ellis	-99.54920273	38.9420679
Nickel Cemetery	McCracken	-99.47514701	38.63978787
Sumner Cemetery	Alton	-98.93408299	39.479768
Wilson Cemetery	Clay Center	-97.19002299	39.379996
Pleasant Valley Cemetery	Gardner	-95.03607899	38.848062
Sweet Home Cemetery	Lebanon	-98.54654199	39.785513
Reno Cemetery	Tonganoxie	-95.11635182	39.05039173
Kechi Cemetery	Wichita	-97.30054499	37.801631
Zion Cemetery	Smith Center	-98.91721799	39.843704
Scheiller Cemetery	Enterprise	-97.11085099	38.866946
Green Lawn Cemetery	Abilene	-97.31609199	38.791464
Woodstown Cemetery	Woodstown	-99.12740208	39.43688811
Plum Creek Cemetery	Phillipsburg	-99.18959999	39.850458
Pleasant Valley Cemetery	Wright	-99.90520134	37.79316754
Boles Cemetery	Shawnee	-94.87271999	39.029286
Grinnell Cemetery	Grinnell	-100.634828	39.130188
Edwardsville Cemetery	Kansas City	-94.82013423	39.07269864
Wyandotte County Cemetery	Kansas City	-94.79814852	39.12251814
Shawnee Mission Memory Gardens	Shawnee	-94.85735499	38.991457
Bohemian Cemetery	Rush Center	-99.19814765	38.44439007
St. Anthony Cemetery	Hanston	-99.72478742	38.11718424
Luctor Cemetery	Prairie View	-99.54279908	39.85754925
Twin Mound Cemetery	Plainville	-99.23275363	39.28533942
Agra Cemetery	Agra	-99.12280499	39.757238
Bow Creek Cemetery	Glade	-99.27014461	39.56769953
Kitterville Cemetery	Jetmore	-100.154468	38.190131
Fairview Cemetery	Fulton	-94.71326341	38.0308714
Bird Cemetery	Weir	-94.706725	37.323821
Pleasant Hill Cemetery	Pretty Prairie	-97.86224999	37.756838
New Basel Cemetery	Abilene	-97.19045003	38.755159
Germantown Cemetery	Smith Center	-99.04464999	39.829751
Sacred Heart Catholic Cemetery	Colwich	-97.54297588	37.77965882
Rinehart Cemetery	Chapman	-96.96417099	38.902552
Holy Cross Cemetery	Rush Center	-99.17968645	38.46006387
Center Cemetery	Plainville	-99.20569559	39.20501683
Vansburgh Cemetery	Brownell	-99.77088199	38.624764
Winona Cemetery	Winona	-101.240434	39.077042
Oak Lawn Memorial Gardens	Olathe	-94.75861099	38.875278
Memorial Park Cemetery	Kansas City	-94.64664599	39.146756
Lutheran Cemetery	Otis	-99.06991613	38.52936109
Johnson Cemetery	Stockton	-99.19428846	39.34916389
St. Peters Evangelical Lutheran Cemetery	Prairie View	-99.52099869	39.72699742
Mount Allen Cemetery	Hays	-99.32003405	38.88434795
McCracken Cemetery	McCracken	-99.57757899	38.575724
St. Michaels Cemetery	La Crosse	-99.29486799	38.531224
Lexington Cemetery	Ashland	-99.58446099	37.323321
St. Andrew Cemetery	Buckeye	-99.38871599	39.033344
Wade Cemetery	Fall River	-96.08835786	37.54412921
Oxford Cemetery	Oxford	-97.17670799	37.287524
Jones Cemetery	Canton	-97.3862999	38.38345727
Golden Cemetery	Augusta	-97.01725899	37.635851
Colusa Cemetery	Copeland	-100.657327	37.663402
Valley View Cemetery	Garden City	-100.86741	37.995099
Bohemian Cemetery	Kirin	-99.04280099	39.619045
Randall Cemetery	Jewell	-98.04755386	39.64699227
Pierceville Cemetery	Garden City	-100.665512	37.886071
Terra Cotta Cemetery	Carneiro	-97.96310299	38.747785
United States Penitentiary in Leavenworth Cemetery	Leavenworth	-94.95054009	39.33136916
Oak Grove Cemetery	Fort Scott	-94.69667499	37.862693
Monmouth Cemetery	McCune	-94.94945699	37.353824
Columbus Cemetery	Columbus	-94.81134499	37.162561
Mission Cemetery	Newton	-97.16260144	38.05794922
Navarre Cemetery	Abilene	-97.10821305	38.79529727
White Chapel Memorial Gardens	Wichita	-97.27587799	37.717513
Reflection Point Cemetery	Wichita	-97.22707208	37.63487534
Wichita Hebrew Cemetery	Wichita	-97.27967036	37.71971343
Caldwell Cemetery	Formoso	-97.95032299	39.726675
Woodbine Cemetery	Herington	-96.96388453	38.79272309
Cedar Cemetery	Cedar	-98.84297399	39.660415
Webber Cemetery	Webber	-98.0356459	39.9278675
Saint Johns Cemetery	Wakefield	-97.07449499	39.219528
Wichita Park Cemetery	Wichita	-97.29643299	37.727791
Maize Cemetery	Maize	-97.48967399	37.778641
Pleasant Ridge Cemetery	Goddard	-97.56310299	37.677791
Esbon Cemetery	Esbon	-98.419419	39.814087
Russell Springs Cemetery	Russell Springs	-101.204771	38.917128
Sharon Springs Cemetery	Sharon Springs	-101.751005	38.917231
Springdale Friends Cemetery	McLouth	-95.12358095	39.25333205
Cleveland Cemetery	Burr Oak	-98.19421499	39.930569
Mount Muncie Cemetery	Lansing	-94.88912999	39.269446
Green Valley Cemetery	Valley Center	-97.16975999	37.88418
St. John the Baptist Cemetery	Ness City	-99.69595399	38.341682
Zion Lutheran Cemetery	Clay Center	-97.15613099	39.292773
Fairview Cemetery	Smith Center	-98.78731803	39.79722108
White Cloud Cemetery	Abilene	-97.35339199	39.074602
Saint Columbia Cemetery	Gardner	-94.90955199	38.840344
Impel Cemetery	Tonganoxie	-95.01941199	39.098058
Saint Joseph Catholic Cemetery	Shawnee	-94.72314899	39.017222
Toper Cemetery	Garden City	-100.956587	38.032342
Woodland Cemetery	Stilwell	-94.61233744	38.81137582
Downs Cemetery	Downs	-98.55312099	39.510011
Ramsey Cemetery	Brownell	-99.64151299	38.57502899
Grand Center Cemetery	Naomi	-98.760198	39.146848
Mount Hope Cemetery	Kansas City	-94.67051399	39.129448
Garfield Cemetery	Cimarron	-100.382699	38.174777
Tensquatawa Burial Ground	Kansas City	-94.67359999	39.0716
Oakdale Cemetery	Downs	-98.51532099	39.52349
Fairview Cemetery	Abilene	-97.27086199	38.740991
Pleasant Prairie Cemetery	Randall	-98.062656	39.589353
Saint Joseph Cemetery	Abilene	-97.22123299	38.943458
Cedar Hill Cemetery	Smith Center	-98.65519499	39.886758
Huron Cemetery	Kansas City	-94.6260066	39.11470823
St. Michael's Cemetery	Collyer	-100.115365	39.03158
Saint Johns Cemetery	Herington	-96.93849499	38.639004
Spickelmire Cemetery	Columbus	-94.97162699	37.173396
Northway Cemetery	Mapleton	-94.93287799	37.993485
Old Langdon Cemetery	Arlington	-98.25256599	37.89057
Garden of Memories Cemetery	Pittsburg	-94.70644599	37.507533
Cavalry Cemetery	Danville	-97.89505699	37.279489
Tweedy Cemetery	Garland	-94.66801699	37.709766
Greenwood Cemetery	Wichita	-97.41591199	37.605511
Sunset Memory Gardens	Leavenworth	-94.96551999	39.3
Zimmerman Cemetery	Osborne	-98.65719699	39.321818
Lucerne Cemetery	Jennings	-100.213	39.495097
Union Cemetery	Galena	-94.63996499	37.122085
Walnut Cemetery	Walnut	-95.07003599	37.629034
Upchurch Cemetery	Norwich	-97.87239257	37.47281728
Woods Cemetery	Redfield	-94.89604668	37.84937633
Elkhorn Cemetery	Barnard	-98.0132059	39.14695294
Union Valley Cemetery	Barnard	-98.09821704	39.17521416
Bethany Baptist Cemetary	Lincoln	-98.26272472	39.17545527
Sunset Memorial Gardens Cemetery	Garden City	-100.7933	37.959191
Potterville Cemetery	Osborne	-98.65766299	39.241736
Grant Cemetery	Alton	-98.971022	39.524401
Iowa Cemetery	Downs	-98.56413999	39.386733
Round Mound Cemetery	Naomi	-98.96382099	39.262866
Evergreen Cemetery	Easton	-95.13346199	39.383152
Little Stranger Cemetery	Leavenworth	-94.97389578	39.24524243
Naomi Cemetery	Naomi	-99.01597499	39.189895
Prairie Cemetery	Kansas City	-94.81707522	39.14395979
White Rock Scandinavian Evangelical Lutheran Cemetery	Webber	-98.04338799	39.899191
Mount Hope Cemetery	Mount Hope	-97.67476999	37.854734
Arnold Cemetery	Utica	-100.047459	38.647305
Maple Grove Cemetery	Wichita	-97.29648599	37.703962
Ascension Cemetery	Wichita	-97.25273735	37.76811485
Highland Cemetery	Prairie Village	-94.64478699	39.011302
Bridgeport Cemetery	Assaria	-97.60705216	38.63772336
Woolford Farm Horse Cemetery	Prairie Village	-94.63319999	38.9822
Langley Cemetery	Easton	-95.16117299	39.361492
Swedish Lutheran Cemetery	Gove	-100.608963	38.765376
Emanuel Lutheran Cemetery	Ogallah	-99.74428399	38.880567
Rooker Cemetery	Cawker City	-98.46657999	39.596563
Strang Mausoleum	Lenexa	-94.74167999	38.966998
Fairview Cemetery	Valley Center	-97.24531899	37.819457
Christ of the King Cemetery	WaKeeney	-99.87044099	39.016662
Saint Columbine Cemetery	Edgerton	-94.99219199	38.756718
Canaan Cemetery	Satanta	-101.016902	37.583778
Eagle Cemetery	Leavenworth	-95.12404199	39.186405
Red Top Cemetery	Quinter	-100.24371	38.944618
Woodlawn Cemetery	Kansas City	-94.63162399	39.130559
Monticello Cemetery	Shawnee	-94.83569999	38.995138
Liberty Cemetery	Chapman	-97.02778	39.089639
Van Winkler Cemetery	Leavenworth	-95.03446299	39.379015
Prairie Chapel Cemetery	Utica	-100.073299	38.594511
Saint Johns Cemetery	Kansas City	-94.66884699	39.116115
Linwood Pioneer Cemetery	Leawood	-94.62710299	38.957269
Lutheran Cemetery	Wichita	-97.24440999	37.766502
Union Cemetery	Derby	-97.15364999	37.526992
Mount Sidney Cemetery	Linwood	-95.02397099	39.001876
Eldridge Cemetery	Valley Center	-97.53706438	37.81599581
Pleasant Ridge Cemetery	Overland Park	-94.73285399	38.884139
Banner Cemetery	Satanta	-100.833348	37.359343
Saint Paul Cemetery	Herington	-96.98195899	38.735839
Burr Oak Cemetery	Burr Oak	-98.285052	39.865291
Mount Calvary Cemetery	Kansas City	-94.67736754	39.11813499
Prairie Mound Cemetery	Solomon	-97.35272599	38.919665
Crystal Plains Cemetery	Portis	-98.67352922	39.69101353
Lockhart Cemetery	Meade	-100.31531	37.339103
Christian Cemetery	Harper	-98.00662999	37.268468
Waldron Cemetery	Waldron	-98.16501699	37.00624
Freeport Cemetery	Freeport	-97.85725399	37.203149
Springdale Cemetery	McLouth	-95.14162425	39.26699401
Mount Olive Cemetery	Smith Center	-99.06587099	40.001323
Waco Cemetery	Haysville	-97.34255199	37.524463
Pleasantview Cemetery	Palco	-99.51333299	39.23367
Kansas Veterans' Cemetery at Fort Dodge	Dodge City	-99.93035858	37.7314152
Pleasant Ridge Cemetery	Kirin	-99.12243486	39.59627217
Old Logan Cemetery	Logan	-99.573105	39.67251464
Lone Star Cemetery	Bison	-99.21787846	38.53761465
Colony Cemetery	Dorrance	-98.60470181	38.82766744
Dudley Cemetery	Satanta	-100.981	37.454191
Lutheran Cemetery	Osborne	-98.49034299	39.373442
Laurel Hill Cemetery	Formoso	-97.96106199	39.841524
Arkalon Cemetery	Kismet	-100.81377	37.134535
Oak Hill Cemetery	Easton	-95.094468	39.382998
Abilene Cemetery	Abilene	-97.22205599	38.933572
Ionia Cemetery	Mankato	-98.35757999	39.67692
St. George Cemetery	Victoria	-99.14243895	38.84610739
Woodruff Cemetery	Phillipsburg	-99.43625251	39.98755435
Silent Land Cemetery	Spearville	-99.75360462	37.86893092
Sacred Heart Cemetery	Catherine	-99.13532799	38.961433
Pleasant View Cemetery	Phillipsburg	-99.17980444	39.79016683
Emmanuel Lutheran Cemetery	Phillipsburg	-99.43588199	39.799468
St. Lawrence Catholic Cemetery	Jetmore	-99.90108465	38.06669588
Blooming Grove Cemetery	Bunker Hill	-98.69689383	38.81303496
Brookshire Cemetery	Udall	-97.04296899	37.452627
Mount Vernon Cemetery	Burden	-96.69102099	37.40281
Greenfield Cemetery	Newton	-97.32911389	38.22529538
Ireland Cemetery	Caney	-96.00991671	37.02033519
Blankenship Cemetery	Rosalia	-96.6243488	37.78151667
Prarie Grove Cemetery	Lincoln	-98.22803075	39.14783153
Patterson Cemetery	Hunter	-98.33514897	39.1761228
Elm Grove Cemetery	Bonner Springs	-94.94454899	39.05835019
Zion Lutheran Cemetery	WaKeeney	-99.89274	38.878128
St. Mary's Cemetery	Brownell	-99.64109699	38.5667
Prairiedale Cemetery	Abilene	-97.2656	39.046826
Lyona Cemetery	Junction City	-96.92707165	38.86297326
Schreiner Cemetery	Dorrance	-98.57781471	38.75340841
Conger Cemetery	Plainville	-99.24843199	39.198066
Sylvia Cemetery	Sylvia	-98.38881699	37.956077
Bethlehem Cemetery	Columbus	-94.77701199	37.193493
H and S Cemetery	Argonia	-97.83038869	37.2390036
Fly Creek Cemetery	Chetopa	-94.984708	37.089535
Stockholm Cemetery	Weskan	-101.938521	38.727454
Mulkey Cemetery	Garden Plain	-97.6869766	37.70694513
Saint Anthony Cemetery	Garden Plain	-97.68462899	37.653995
Highland Cemetery	Wichita	-97.30073899	37.70266
Seltzer Springs Cemetery	Wichita	-97.16653086	37.66521258
Peotone Cemetery	Viola	-97.68013699	37.510538
Bixler Cemetery	Kismet	-100.705247	37.039302
Green Ridge Cemetery	Wakefield	-97.14382999	39.120036
Christ Cemetery	Gaylord	-98.85535599	39.6989
Detroit Cemetery	Abilene	-97.12515834	38.94384728
Indian Hill Cemetery	Chapman	-97.03340799	38.97097
Brush Creek Cemetery	Columbus	-94.77356399	37.117562
Smilie Cemetery	Mulberry	-94.64956003	37.55032973
Walnut Hill Cemetery	Redfield	-94.92463284	37.88521972
Westlaw Cemetery	Kansas City	-94.67523599	39.111115
Stony Point Cemetery	Kansas City	-94.76001404	39.0953168
North Oak Creek Cemetery	Gaylord	-98.55555099	39.690569
Prairie Center Cemetery	Eudora	-95.02875199	38.892284
Tomahawk Cemetery	Overland Park	-94.667325	38.887063
South Oak Creek Cemetery	Gaylord	-98.54160799	39.643937
Mount Calvary Cemetery	Solomon	-97.38947099	38.924722
Saint Patricks Cemetery	Chapman	-97.00634018	38.98150673
Edgerton Cemetery	Edgerton	-95.00196099	38.752704
Pleasant View Cemetery	Fort Scott	-94.73844999	37.692761
Hazen Cemetery	Pleven	-98.36201499	37.965292
Cunningham Cemetery	Cunningham	-98.440852	37.630407
Jones Cemetery	Chapman	-97.08640499	39.070275
Belmont Cemetery	Phillipsburg	-99.4566957	39.69784793
Aurora Cemetery	Natoma	-99.08476169	39.27805751
Plainview Cemetery	Logan	-99.43901946	39.60444619
Maple Grove Cemetery	Dodge City	-100.0497723	37.75900077
St. Francis Cemetery	Munjor	-99.2690365	38.80599465
Palco Cemetery	Palco	-99.56770424	39.26381681
Old Pleasant View Cemetery	Weir	-94.67755499	37.259615
Mills Cemetery	Girard	-94.99539499	37.543634
Walnut Hill Cemetery	Kingman	-98.09700599	37.651682
Dumbauld Cemetery	McCune	-95.079248	37.420814
Spring Hill Cemetery	Spring Hill	-94.83577299	38.746662
Marble Grove Cemetery	Valley Center	-97.32646899	37.839578
Old Quindaro Cemetery	Kansas City	-94.6615424	39.15491508
Mount Calvary Cemetery	Hope	-97.21502299	38.638894
Immanuel Cemetery	Dorrance	-98.61515195	38.74067253
Iowa Union Cemetery	Phillipsburg	-99.37016218	39.85710286
Englewood Cemetery	Englewood	-99.97852499	37.06992
Greenwood Cemetery	Phillipsburg	-99.24065889	39.88592492
Mount Hope Cemetery	Ellis	-99.54968199	38.933897
Bunker Hill Cemetery	Bunker Hill	-98.68926057	38.88537159
St. Joseph Cemetery	Bison	-99.32523619	38.6551729
Zurich Cemetery	Zurich	-99.43822891	39.22730187
Holy Cross Cemetery	Spearville	-99.63734499	37.787519
Eureka Cemetery	Plainville	-99.45578048	39.31375254
St. Joseph Cemetery	Dorrance	-98.58570741	38.85605596
Mount Hope Cemetery	Enterprise	-97.11290499	38.886719
Maple Grove Cemetery	Tonganoxie	-95.08982599	39.091733
Bell Cemetery	Gaylord	-98.70979499	39.647789
Pleasantdale Cemetery	Otis	-99.06869817	38.65314434
Cross Plains Cemetery	Russell	-98.76385378	38.72021961
Evergreen Cemetery	Offerle	-99.57615499	37.898619
St. Mary's Cemetery	Bison	-99.18023286	38.64615956
Round Prairie Cemetery	Atchison	-95.07413299	39.41222
High Prairie Cemetery	Leavenworth	-95.01702999	39.272313
Saint Mary's Cemetery	Garden Plain	-97.64279805	37.70654332
Olive Branch Cemetery	Gaylord	-99.04704999	39.741304
Eminence Cemetery	Garden City	-100.518011	38.14652
Chapel Hill Memorial Gardens Cemetery	Kansas City	-94.79575494	39.11182595
Eminence Cemetery	Smith Center	-98.80090799	39.943347
Balch Cemetery	Formoso	-97.98067299	39.797886
Attebery Cemetery	Wellington	-97.43869299	37.151301
Mount Vernon Cemetery	Elk City	-96.11129198	37.16771994
Mulvane Cemetery	Mulvane	-97.20688699	37.472999
Patton Cemetery	Dexter	-96.66196099	37.064558
Lena Valley Cemetery	Madison	-96.03105799	38.162083
Bryant Cemetery	Atlanta	-96.73450299	37.555432
Adams Cemetery	Eudora	-95.03838799	38.857965
Hulpieu Homestead Cemetery	Garden City	-100.857382	38.062523
Saint Paul Lutheran Cemetery	Cheney	-97.74278437	37.66311762
Immanuel Lutheran Cemetery	Herington	-96.98425326	38.73930229
Ransom Cemetery	Ransom	-99.91595599	38.631681
Harmony Cemetery	Abilene	-97.26330067	38.79862182
Baker Township Cemetery	Quinter	-100.224121	39.073122
North Star Cemetery	Ness City	-99.99124999	38.5221
Price Cemetery	Lebanon	-98.59895499	39.798623
Bristow Cemetery	Osborne	-98.75090999	39.350566
Lockwood Cemetery	Glade	-99.33315361	39.59646671
Fairport Cemetery	Paradise	-99.02012181	39.04586781
Ridenour Cemetery	Dodge City	-100.1717551	37.83954118
Trinity Cemetery	Russell	-98.88023459	38.74703415
Fairmount Cemetery	Jetmore	-99.89933896	38.06663387
Friends Cemetery	La Crosse	-99.36507301	38.57035754
Slate Cemetery	Stockton	-99.52810009	39.48794684
Murphy Cemetery	Lenexa	-94.88191899	38.970887
Saint Francis Cemetery	Gaylord	-98.98186399	39.632863
Bonner Springs Cemetery	Bonner Springs	-94.88011335	39.07130913
Pleasant Hill Cemetery	Minneapolis	-97.80777999	39.118211
Leavenworth National Cemetery	Leavenworth	-94.88819999	39.2783
Cheney Pioneer Cemetery	Cheney	-97.78684699	37.647367
Kirwin Cemetery	Kirwin	-99.14274199	39.680136
Snake Creek Ranch Cemetery	Ashland	-99.72764545	37.00300403
St. Andrews Cemetery	Wright	-99.88715406	37.77930085
West Liberty Cemetery	Fort Scott	-94.65740199	37.978395
Cumberland Cemetery	Douglass	-96.94503499	37.595297
Lerado Cemetery	Niotaze	-96.07416499	37.007324
Riley Memorial Cemetery	Sedan	-96.08275499	37.141428
Virgil Cemetery	Virgil	-96.00375962	37.95951192
Trail Creek Cemetery	Lincoln	-98.27489097	39.1473597
Spillman Cemetery	Sylvan Grove	-98.37650151	39.15490459
Green Valley Cemetery	Lucas	-98.46692392	39.2192868
Rosette Cemetery	Sylvan Grove	-98.41858295	39.08910482
Pottersburg Cemetery	Sylvan Grove	-98.35332561	39.11509353
Free Mission Cemetery	Lincoln	-98.26135071	39.08148187
Pilgrims Home Cemetery	Hope	-97.08557299	38.725838
Shawnee Township Cemetery	Kansas City	-94.70477899	39.076991
Victor Cemetery	Naomi	-98.86174899	39.238066
Gove Cemetery	Gove	-100.484015	38.945869
Old Order German Baptist Cemetery	Quinter	-100.205143	39.029847
Mount Zion Cemetery	Leavenworth	-94.977743	39.330277
Highland Park Cemetery	Kansas City	-94.67534499	39.114613
Chance Cemetery	Linwood	-95.015802	39.001948
Friendship Friends Church Cemetery	Columbus	-95.02581799	37.223136
Star Cemetery	Columbus	-94.96005899	37.27762
Fairlawn Cemetery	Hutchinson	-97.88699599	38.045845
Garrison Cemetery	Oswego	-95.05135199	37.200896
Old Arcadia Cemetery	Arcadia	-94.62698699	37.653759
West Plains Cemetery	Fort Scott	-94.76871661	37.87800618
Cherokee Cemetery	Chetopa	-95.05053199	37.151297
Hosey Hill Cemetery	Weir	-94.80962799	37.312883
Forest Park Cemetery	Anthony	-98.01913399	37.147589
Garden Valley Cemetery	Moundridge	-97.49923447	38.12336324
Saint Mary's Cemetery	Fort Scott	-94.74079599	37.842263
Mound Cemetery	Galena	-94.61884297	37.1820929
Evans Cemetery	Montezuma	-100.4787315	37.53272585
Boston Mills - Cox Cemetery	Galena	-94.68352199	37.107695
Saint Johns Cemetery	Viola	-97.55546904	37.56433179
Webb Hill Cemetery	Smith Center	-98.50505899	39.951958
St. Joseph Cemetery	Oakley	-100.831319	39.132998
El Paso Cemetery	Derby	-97.26320192	37.54182124
Hanston Mennonite Church	Hanston	-99.76230993	38.14479661
Dagenett Cemetery	Ransom	-99.89134838	38.58827374
Utica Cemetery	Utica	-100.158224	38.646085
Pleasant Hill Cemetery	Arlington	-98.23423299	37.805849
Salem Cemetery	Nickerson	-98.1409509	38.11616839
Marion Cemetery	Redfield	-94.92496999	37.797264
LaRue Cemetery	Hallowell	-94.94107199	37.21895
Little River Township Cemetery	Buhler	-97.72119699	38.137122
Dunlap Cemetery	Rose Hill	-97.09820114	37.59991339
Grainfield Cemetery	Grainfield	-100.473652	39.118078
Pleasant View Cemetery	Shawnee	-94.72324199	39.018047
Farmington Cemetery	Abilene	-97.18633199	38.870793
Saint Joseph Cemetery	Andale	-97.63019199	37.79487
Mount Calvary Cemetery	Lansing	-94.92163099	39.265279
Mount Olivet Cemetery	Leavenworth	-94.90385199	39.281112
Murdock Cemetery	Murdock	-97.93525652	37.62309876
Park Cemetery	Columbus	-94.80986899	37.164438
Royer Cemetery	Newton	-97.40734708	38.01425047
McCauley Cemetery	Fowler	-100.21586	37.460831
Durham Park Cemetery	Durham	-97.22391399	38.464732
Eureka Cemetery	Gypsum	-97.45501641	38.57647324
Lone Tree Cemetery	Galva	-97.50005332	38.284751
Corzine Cemetery	Caldwell	-97.52929699	37.092499
Chikaskia Cemetery	Wellington	-97.57491799	37.213383
Calvary Cemetery	Leon	-96.94572399	37.70052673
Bethel Cemetery	Kansas City	-94.76195995	39.14258078
Weskan Cemetery	Weskan	-101.946315	38.857962
Baldwin Cemetery	Glasco	-97.91132699	39.205968
Hillcrest Cemetery	Derby	-97.22030478	37.51985449
Keystone Cemetery	Abilene	-97.29184799	39.118736
Oriole Cemetery	Smith Center	-98.59410599	39.936595
Fairview Pioneer Cemetery	Moundridge	-97.51823891	38.05735319
Johnson Cemetery	Ensign	-100.215433	37.7082714
Hayes Cemetery	Sylvia	-98.40923899	38.045569
Dayton Cemetery	Mapleton	-94.8707306	37.95742853
Harmony Cemetery	Leon	-96.66943499	37.723327
Shawnee Cemetery	Shawnee	-94.72306699	39.019231
Fall Creek Cemetery	Leavenworth	-95.08791499	39.224325
Quindaro Cemetery	Kansas City	-94.672548	39.129595
County Poor Farm Cemetery	Columbus	-94.79603399	37.183037
Moore Cemetery	Columbus	-94.91843299	37.098881
Walton Cemetery	Walton	-97.25409699	38.130623
Hiattville Cemetery	Fort Scott	-94.87920399	37.719106
Rigney Cemetery	McCune	-94.99428699	37.339404
Turon Cemetery	Turin	-98.44662599	37.798046
Dockery Cemetery	Baxter Springs	-94.79554341	37.07905073
Pleasant View Cemetery	Baxter Springs	-94.75799199	37.06721
Clarksburg Cemetery	Fort Scott	-94.64847448	37.76206658
Sherman Cemetery	Columbus	-95.05659399	37.254988
Harper Cemetery	Harper	-98.01839399	37.296408
Bonham Cemetery	Anthony	-98.1526568	37.10147199
Pleasant Valley Cemetery	Fort Scott	-94.81513435	37.75044122
Oak Hill Cemetery	Galena	-94.64744999	37.095895
Rural Township Cemetery	Cunningham	-98.40149899	37.629769
Highland Park Cemetery	Pittsburg	-94.70282699	37.383681
Frogge Cemetery	McCune	-95.07756991	37.435356
Mitchell Cemetery	Hutchinson	-97.97698191	38.11372474
Mount Olive Cemetery	Pittsburg	-94.697629	37.394595
Fowler Cemetery	Arcadia	-94.70192199	37.663738
McKee Cemetery	Columbus	-95.01438799	37.215436
Howard Cemetery	Arcadia	-94.70079599	37.674211
Boulware Cemetery	Bronson	-95.02347199	38.026169
Pine Lawn Cemetery	Fort Scott	-94.71357399	37.713377
Glendale Cemetery	Turin	-98.39863399	37.90425299
Salem - Friedhof Cemetery	Button	-98.40590099	38.465566
Immanuel Cemetery	Chase	-98.44283099	38.37016726
Iowa Cemetery	Girard	-94.94202917	37.58650792
Ferris Cemetery	Baxter Springs	-94.77269099	37.046137
Fort Scott National Cemetery	Fort Scott	-94.693622	37.820755
Morris Cemetery	Mapleton	-94.89329999	37.980591
Nichols Cemetery	Spivey	-98.24623599	37.457231
Lone Oak Cemetery	Asbury	-94.64440099	37.302832
St. Louis Cemetery	Murdock	-97.93672199	37.681403
Peace Cemetery	Abbyville	-98.233585	38.05793
Dresden Cemetery	Cunningham	-98.447022	37.702795
Sterling Cemetery	Sterling	-98.19912299	38.218916
Dove Cemetery	Columbus	-94.982738	37.163952
Hill City Cemetery	Hill City	-99.84510728	39.39449524
Devizes Cemetery	Norton	-100.05949	39.980112
Wild Horse Township Cemetery	Bogue	-99.68738277	39.34378737
Hartland Cemetery	Lakin	-101.359197	37.893013
Sunnyvale Cemetery	Syracuse	-101.9802124	37.91371027
Studley Cemetery	Hoxie	-100.162694	39.35671643
Leland Cemetery	Penokee	-100.015557	39.225382
Selden Cemetery	Selden	-100.554588	39.53806
Norcatur Cemetery	Norcatur	-100.178504	39.84302
Cope Cemetery	Norton	-99.95014099	39.783771
Whitfield Cemetery	Logan	-99.70541299	39.553145
McFarland Cemetery	Bogue	-99.66650099	39.46584
Brush Creek Cemetery	Penokee	-99.97439099	39.301315
White Cemetery	Norcatur	-100.30153	39.937228
Bow Creek Cemetery	Hoxie	-100.2570021	39.42214103
Roscoe Cemetery	Lenora	-99.76987199	39.496025
St. Anthony Cemetery	Morland	-100.080719	39.189116
Oberlin Cemetery	Oberlin	-100.5156193	39.82589121
Liverpool Cemetery	Johnson	-101.6076584	37.43184189
Immanuel Cemetery	Hoxie	-100.4793652	39.43406707
Mount Hope Cemetery	Almena	-99.74037699	39.884734
Mount Olive Cemetery	Bogue	-99.69384599	39.393534
Traer Cemetery	Oberlin	-100.645423	39.92992
Coolidge Cemetery	Coolidge	-101.9994365	38.05757491
Fagan Cemetery	Bogue	-99.73269243	39.36375259
St. Francis Cemetery	Hoxie	-100.460049	39.354539
Lenora South Cemetery	Lenora	-100.002947	39.595292
Deer Field Cemetery	Deerfield	-101.1213771	37.99518633
Carlson Cemetery	Almena	-99.72046899	39.92936699
Penokee Cemetery	Penokee	-99.97303999	39.342485
Menno Cemetery	Johnson City	-101.5640942	37.79450072
Mitchell Cemetery	Johnson	-101.744061	37.686681
Mount Pleasant Community Cemetery	Hoxie	-100.163928	39.25486699
Bassettville Cemetery	Selden	-100.721811	39.706203
Anderson Cemetery	Morland	-100.09808	39.407913
Morland Township Cemetery	Palco	-99.69839104	39.2263303
Manter Cemetery	Manter	-101.897674	37.519461
Fairview Cemetery	Almena	-99.69444599	39.987655
Prairie Dale Cemetery	Logan	-99.62047999	39.561633
Oronoque Cemetery	Norton	-100.012163	39.79809
Rolla Cemetery	Rolla	-101.6443846	37.11964184
Adell Cemetery	Dresden	-100.338676	39.538695
Beulah Cemetery	Girard	-94.81522599	37.439182
Saint Michael's Cemetery	Fulton	-94.74181099	38.008971
Sheley Cemetery	Almena	-99.81452099	39.93719
Lund Church Cemetery	Dresden	-100.6094596	39.67006773
Zellmer Cemetery	Prairie View	-99.64552499	39.82062
St. Johns Cemetery	Oberlin	-100.739768	39.893075
Modell Cemetery	Lenora	-99.889791	39.624424
Hoxie Cemetery	Hoxie	-100.443132	39.373241
Samuels Cemetery	Bogue	-99.67906	39.30735
Gettis Cemetery	Lenora	-100.133431	39.6811
Mount Calvary Cemetery	Norton	-99.74003718	39.6506439
Hawkeye Cemetery	Selden	-100.721699	39.598986
Bear Creek Cemetery	Syracuse	-101.9341576	37.76099178
Morland Cemetery	Morland	-100.0699641	39.3433335
Redline Cemetery	Palco	-99.64205799	39.235008
Nicodemus Cemetery	Bogue	-99.62021466	39.40910092
Cedar Bluffs Cemetery	Oberlin	-100.572093	39.988339
Jackson Cemetery	Dresden	-100.40403	39.672782
Rock Creek Cemetery	Penokee	-99.99383199	39.407155
Dresden Cemetery	Dresden	-100.4227849	39.62947418
Buchanan Brown Cemetery	Logan	-99.63987499	39.524793
Wray Cemetery	Norcatur	-100.150621	39.943095
Railsback Cemetery	Norcatur	-100.136717	39.97259564
St. Martins Cemetery	Hoxie	-100.590902	39.339288
Edmond Cemetery	Lenora	-99.82382699	39.637024
Allison Cemetery	Jennings	-100.2472442	39.57391762
Kanona Cemetery	Oberlin	-100.39542	39.813061
Farmingdale Cemetery	Almena	-99.62761	39.901953
Richfield Cemetery	Richfield	-101.7464053	37.26433257
St. Joseph Cemetery	Clayton	-100.11687	39.598527
South Star Cemetery	Lenora	-99.993626	39.480564
Jennings Cemetery	Jennings	-100.305417	39.682504
Fairview Cemetery	Lakin	-101.415239	38.24956481
St. John Cemetery	Grinnell	-100.6855263	39.19090874
Lenora East Cemetery	Lenora	-99.99375899	39.60375
Prairie Home Cemetery	WaKeeney	-99.8567154	39.19011455
Clayton Cemetery	Clayton	-100.187218	39.754644
Redman Cemetery	Norcatur	-100.328213	40.0014
Mount Olive Cemetery	Logan	-99.66981599	39.785559
Edwards Maple Cemetery	Norcatur	-100.32813	39.900475
St. Johns Cemetery	Herndon	-100.684039	39.871671
Prairie Flower Cemetery	Elkhart	-101.7734056	37.09047912
Shirley Cemetery	Norcatur	-100.196399	39.900194
Syracuse Cemetery	Syracuse	-101.7687665	37.9936282
Maple Grove Cemetery	Norcatur	-100.076853	39.886831
Prairie Gem Cemetery	Norton	-99.96594699	39.711467
Kendall Cemetery	Kendall	-101.5417367	37.94317991
Vallonia Cemetery	Oberlin	-100.40381	39.879363
Ebenfleur Cemetery	Kendall	-101.6881112	37.82641376
Lakin Cemetery	Lakin	-101.2481193	37.95124264
Wotton Cemetery	Norcatur	-100.174025	39.965283
Big Timber Cemetery	Jennings	-100.339522	39.754602
Shibboleth Cemetery	Dresden	-100.521165	39.633565
Elkhart Cemetery	Elkhart	-101.890359	37.00948438
Stanton County Cemetery	Johnson	-101.7777555	37.57000916
Memorial Lawn Cemetery	Hill City	-99.84513116	39.39272653
Lodiana Cemetery	Lyons	-98.06290899	38.317973
Bainum Cemetery	Arlington	-98.27077499	37.87724
Stitch Cemetery	Milton	-97.80755299	37.42363
Oak Grove Cemetery	Saint Paul	-95.17066499	37.398444
Geneva Cemetery	Geneva	-95.48091799	38.012929
Oakwood Cemetery	Parsons	-95.23850899	37.335846
Richland Cemetery	Edna	-95.447606	37.133972
Haviland Cemetery	Haviland	-99.10789241	37.62900866
Ladore Cemetery	Galesburg	-95.31695699	37.405539
Old Elsmore Cemetery	Elsmore	-95.17913999	37.819603
Golden Valley Cemetery	Moran	-95.2251986	37.87842812
Elston Cemetery	Altamont	-95.25817	37.198717
Hopewell Cemetery	Byers	-99.00062299	37.80606
Lake Creek Cemetery	Bartlett	-95.24109799	37.048953
Brown Cemetery	St Paul	-95.172751	37.424501
Liberty Cemetery	Medicine Lodge	-98.55034899	37.130691
South Center Cemetery	Thayer	-95.471315	37.430207
Highland Cemetery	Medicine Lodge	-98.58758399	37.291689
Evan Young Cemetery	Humboldt	-95.44748199	37.82004
Maple Grove Cemetery	Humboldt	-95.36151999	37.80816
Elmwood Cemetery	Chanute	-95.44435199	37.669202
Fairview Cemetery	Greensburg	-99.28678127	37.61364638
McKinley Cemetery	Mullinville	-99.47706299	37.632519
Chinn Cemetery	Coats	-98.92203399	37.459945
Grant - Brown Cemetery	Erie	-95.31636699	37.530053
Vance Cemetery	Mound Valley	-95.34923399	37.207686
Wellsford Cemetery	Haviland	-99.014258	37.6253
Salem Cemetery	Humboldt	-95.33599499	37.856441
Harmony Cemetery	Dennis	-95.45802699	37.325381
Griffith Cemetery	Mound Valley	-95.49881699	37.246641
Boles Cemetery	Wellsford	-99.014535	37.564727
Dewitt Cemetery	Humboldt	-95.49240159	37.81970866
Edna Cemetery	Edna	-95.36135999	37.06924
Lodi Cemetery	Hardtner	-98.745427	37.146228
Crown Hill Cemetery	Coldwater	-99.29442699	37.271626
Saint Boniface Cemetery	Sharon	-98.40362599	37.250839
Lakeview Cemetery	Erie	-95.26965899	37.528774
Fowler Cemetery	Walnut	-95.11479199	37.572438
Franklin Cemetery	Parsons	-95.1750326	37.31851176
Friendship Cemetery	Turin	-98.62003199	37.777345
Pleasant Plains Cemetery	Byers	-98.90304442	37.7616111
Hackberry Cemetery	Bartlett	-95.18579899	37.099235
Aetna Cemetery	Lake City	-98.95605999	37.091594
Harmony Cemetery	Drum Creek	-95.59510226	37.23256618
Oak Hill Cemetery	Elk City	-95.893031	37.290831
Leesburg Cemetery	Saint John	-98.69194799	37.899143
Patterson Cemetery	Albert	-98.9967134	38.40203393
Centennial Cemetery	Drum Creek	-95.54721499	37.229808
Strobe Cemetery	Saint John	-98.60116099	38.041582
Restlawn Memorial Park Cemetery	Coffeyville	-95.650371	37.051946
Trinity Lutheran Cemetery	Caney	-95.83739299	37.026804
Concordia Cemetery	Union	-98.75681799	38.68084
Village Creek Cemetery	Chanute	-95.56225699	37.714139
All Saints Cemetery	Liberty	-95.57608899	37.154239
Bethel Cemetery	West Cherry Township	-95.646067	37.276092
Lutheran Cemetery	Kinsley	-99.40504299	38.02874
Great Bend Cemetery	Great Bend	-98.7994035	38.3679273
Fairview Cemetery	Fairview	-98.95981299	38.646123
Golden Cemetery	Sullivan Township	-101.457991	37.475638
Pleasant Valley Cemetery	Chanute	-95.58025899	37.60144
Cedarvale Cemetery	Neosho Falls	-95.56505199	38.001222
Saint Francis Cemetery	Fall River	-95.94304199	37.617825
Saint Andrews Cemetery	West Cherry Township	-95.66630899	37.256479
Quaker Cemetery	Rutland Township	-95.82430457	37.23941093
Boyle Cemetery	Albion	-98.90374042	38.55065516
Caley Cemetery	Fredonia	-95.95848499	37.705187
Little Sandy Cemetery	Fredonia	-95.80741499	37.733622
White Cemetery	Louisburg Township	-95.86402599	37.367438
Saint Martins Cemetery	Piqua	-95.54720599	37.921702
Weakley Cemetery	Fredonia	-95.91102999	37.558908
Toronto Cemetery	Toronto	-95.94259764	37.79206261
Salem Cemetery	Kinsley	-99.44261699	38.033072
Saint Francis Xavier Cemetery	Cherryvale	-95.57552099	37.263186
Saint Mary's Cemetery	Neosho Falls	-95.59981999	37.856258
Grandview Cemetery	Neodesha	-95.64219299	37.385447
Providence Cemetery	Haviland	-99.05141699	37.733459
Hillcrest Memorial Park	South Homestead	-98.77852699	38.435632
Big Sandy Cemetery	Yates Center	-95.84983042	37.76954353
Mount Hope Cemetery	Independence	-95.70497999	37.24173499
Larned Cemetery	Larned	-99.13331443	38.18370067
Woodring Cemetery	Louisburg Township	-95.90109599	37.269796
Askren Cemetery	North Township	-95.83778627	37.9738673
Robbins Cemetery	Coffeyville	-95.71942599	37.033522
Pleasant View Cemetery	Claflin	-98.53704299	38.529714
Calvary Cemetery	Coffeyville	-95.62848999	36.999801
Butner Cemetery	Fredonia	-95.90640999	37.487304
Pleasant Valley Cemetery	Stafford	-98.55306827	37.92551408
Calvary Cemetery	Independence	-95.70506799	37.248308
Bethel Cemetery	Cleveland	-98.508126	38.637789
Hatler Cemetery	Neodesha	-95.69153215	37.49329117
Trimmell Cemetery	Fredonia	-95.87417599	37.682927
Owl Creek Cemetery	Neosho Falls	-95.60993199	37.85297
Walnut Valley Cemetery	Eureka	-98.86740399	38.484918
Colfax Cemetery	Chanute	-95.52582895	37.71764095
Simpson Cemetery	Sycamore Township	-95.81865899	37.327293
Kroner Cemetery	Independence	-95.74945999	37.33024
Cheatham Cemetery	Fredonia	-95.79776499	37.422481
Martin Cemetery	Saint John	-98.77453699	37.956252
Saint Anthony Cemetery	Walnut	-98.99842699	38.499735
Ulysses Cemetery	Ulysses	-101.310095	37.562739
Golden Belt Memorial Park	Great Bend	-98.78497899	38.43331
Pleasant Valley Cemetery	Yates Center	-95.70609999	37.776642
Presbyterian Cemetery	Beaver	-98.62757499	38.652789
Schneider Cemetery	Wheatland	-98.84869599	38.681678
Wayne Cemetery	Lewis	-99.21483199	37.955016
Summit Cemetery	Fredonia	-95.80527599	37.61699
Kellick Cemetery	Coffeyville	-95.58681699	37.068202
Neola Cemetery	Stafford	-98.490272	37.837633
Radical Cemetery	Sycamore Township	-95.74162499	37.288637
O'Dea Cemetery	Moscow	-101.124197	37.372669
Pioneer Cemetery	Fawn Creek Township	-95.80064999	37.039226
Calvary Cemetery	Coffeyville	-95.651284	37.055359
Mount Pleasant Cemetery	Fredonia	-95.93187999	37.407913
Dundee Valley Cemetery	Dundee	-98.87743999	38.312506
Trinity Cemetery	Hudson	-98.65553736	38.10482496
Nickletown Cemetery	North Township	-95.84826368	37.99654861
Rose Valley Cemetery	Saint John	-98.72927499	37.861291
Pawnee Rock Cemetery	Pawnee Rock	-98.98620699	38.277236
Fairview Cemetery	Cherryvale	-95.53422399	37.272676
Shockey Cemetery	Sherman Township	-101.482289	37.671477
Buffalo Cemetery	Buffalo	-95.69822899	37.732552
Ash Valley Cemetery	Larned	-99.21714527	38.29071613
Sunny Side Cemetery	Caney	-95.93001899	37.017356
Peace United Church of Christ Cemetery	Hudson	-98.65842462	38.15919822
Neelands Cemetery	Macksville	-98.86606199	37.900038
Saint Josephs Cemetery	Beaver	-98.66340999	38.652789
Friends Cemetery	Beaver	-98.68385985	38.63875713
Pleasant Valley Cemetery	Altoona	-95.61296172	37.58825713
Feldhut Cemetery	Saint John	-98.63700499	38.041757
Fawn Creek Cemetery	Fawn Creek Township	-95.80192399	37.066741
Fellsburg Cemetery	Lewis	-99.16927499	37.806961
Schaefer Cemetery	 	-95.59192799	37.87837
Bloomingdale Cemetery	Independent	-98.55449399	38.551346
Parker Cemetery	Elk City	-95.85727799	37.263094
Siria Cemetery	Liberty Township	-95.7709412	38.02427462
Saint Francis Xavier Cemetery	Saint John	-98.81980799	38.203761
Hiltz Cemetery	Cherryvale	-95.59396099	37.355033
Saint Josephs Cemetery	Ellinwood	-98.57396599	38.348623
Bethel Cemetery	Kinsley	-99.41328099	37.734705
Fertig Cemetery	Larned	-98.94952827	38.14593913
Rutland Cemetery	Rutland	-95.901114	37.196897
Holy Family Cemetery	Cheyenne	-98.61001299	38.56374
Pleasant Ridge Cemetery	Saint John	-98.87620299	38.247513
Kaila Cemetery	Yates Center	-95.71025381	37.86432723
Hunter Cemetery	Fredonia	-95.90987999	37.636843
Peace Creek Cemetery	Saint John	-98.47285299	38.063625
Star Center Cemetery	Louisburg Township	-95.93338014	37.32036775
Moscow Cemetery	Moscow	-101.192174	37.323078
Saint Anns Cemetery	Grant	-98.93953499	38.522512
Dermot Cemetery	Harmony Township	-101.546495	37.345144
Farmington Cemetery	Fredonia	-95.82413199	37.631917
Eden Valley Cemetery	Saint John	-98.78566499	38.218199
Varner Cemetery	Neodesha	-95.70677499	37.404802
Star Cemetery	Thayer	-95.58036899	37.456155
Point View Cemetery	Larned	-98.91322027	38.13046313
Schoenfeld Cemetery	Wheatland	-98.87668799	38.681512
Rozel Cemetery	Rozel	-99.40536527	38.20412913
Pratt Cemetery	Drum Creek Township	-95.656042	37.23278099
Saint John the Evangelist Catholic Cemetery	Hoisington	-98.79416299	38.520956
Old Kinsley Cemetery	Kinsley	-99.43176599	37.927568
Stafford Cemetery	Stafford	-98.61483287	37.95335176
Montgomery Cemetery	Logan	-98.48086399	38.493134
Prairie Chapel Cemetery	Stafford	-98.64988999	37.897284
Vilas Bethel Cemetery	Chanute	-95.56136999	37.660603
Havana Cemetery	Havana	-95.94107686	37.09509284
Jefferson Cemetery	Fawn Creek Township	-95.747792	37.103588
Salem Cemetery	Hudson	-98.64025699	38.151477
Hillside Cemetery	Kinsley	-99.44900599	37.937517
Saint Nicholas Cemetery	Kinsley	-99.42445099	37.91513899
Hugoton Cemetery	Hugoton	-101.330988	37.164197
Ross Cemetery	Neodesha	-95.72517599	37.424626
Kleine Gemeinde Cemetery	Meade	-100.216465	37.125151
Council Corners Cemetery	Scammon	-94.74356899	37.267
Butler Cemetery	Meade	-100.129499	37.090363
Pleasant Hill Cemetery	Zenda	-98.29956599	37.413536
Hartzler Cemetery	Goodland	-101.59801	39.206946
Gem Cemetery	Gem	-100.905985	39.422782
Swedish Lutheran Cemetery	Herndon	-100.778671	39.813528
Immaculate Conception Cemetery	McDonald	-101.222105	39.885554
Carwood Cemetery	Leoti	-101.457664	38.618904
Salem Evangelical Cemetery	Saint Francis	-101.955623	39.771609
Trinity Cemetery	Atwood	-100.962801	39.92311299
Goodland Cemetery	Goodland	-101.714339	39.365277
Rexford Cemetery	Rexford	-100.737531	39.452146
Evergreen Cemetery	Bird City	-101.485906	39.839901
Bird City Cemetery	Bird City	-101.517943	39.770551
Mount Calvary Cemetery	Atwood	-101.057365	39.813801
Sutton Cemetery	Dighton	-100.611786	38.370727
Chardon Cemetery	Atwood	-101.0385659	39.66155329
Selkirk Cemetery	Leoti	-101.544141	38.479729
Freeland Cemetery	Edison	-101.455811	39.467554
Hackberry Cemetery	Saint Francis	-101.824077	39.91786199
Brownville Cemetery	Winona	-101.3723246	39.19340399
Lydia Methodist Cemetery	Leoti	-101.239931	38.26448
Oakley Cemetery	Oakley	-100.834034	39.13464
Greely County Cemetery	Tribune	-101.753151	38.458748
Dighton Cemetery	Dighton	-100.430139	38.48335
Pleasant Valley Cemetery	Marienthal	-101.2772	38.5927
Scott County Cemetery	Scott City	-100.926328	38.464125
St. Pauls Cemetery	Goodland	-101.693505	39.638884
Mathews Cemetery	Tribune	-101.9933423	38.39342488
Kanorado Cemetery	Kanorado	-102.041182	39.342752
White Rock Cemetery	Dighton	-100.331396	38.625804
Sacred Heart Cemetery	Colby	-101.030987	39.402438
Leoti Cemetery	Leoti	-101.342051	38.468235
Frerichs Cemetery	Goodland	-101.65141	39.279252
Hope Valley Cemetery	Saint Francis	-101.949041	39.886609
Modoc Cemetery	Marienthal	-101.072931	38.496409
St. Johns Cemetery	McDonald	-101.205716	39.91999899
Covenant Cemetery	Herndon	-100.824993	39.814123
Achilles Cemetery	Atwood	-100.833474	39.711385
Zion Cemetery	Saint Francis	-102.011405	39.727472
Battle Creek Cemetery	Saint Francis	-101.938095	39.670046
Hope Cemetery	Saint Paul	-95.16289299	37.528059
Saint Peter's Lutheran Cemetery	Humboldt	-95.40220399	37.775875
Moran Cemetery	Moran	-95.18942199	37.90698099
Ruddick Cemetery	Sawyer	-98.74925799	37.557519
Spring Valley Cemetery	Altamont	-95.24712118	37.22226069
Sunnyside Cemetery	Sun City	-98.902849	37.380883
Hillcrest Cemetery	Mullinville	-99.48456299	37.592242
Gas City Cemetery	Gas	-95.33683501	37.9306492
East Slope Cemetery	Coats	-98.90732099	37.513908
Spring Hill Cemetery	Parsons	-95.25101799	37.288188
Shaw Cemetery	Erie	-95.31648114	37.61584791
Isabel Cemetery	Isabel	-98.56167899	37.456605
Carpenter Cemetery	Iola	-95.45553799	37.976422
Mason Cemetery	Labette	-95.19418099	37.214886
Cairo Cemetery	Pratt	-98.588051	37.644878
Sharon Cemetery	Sharon	-98.42285399	37.23585599
Zion Cemetery	Chanute	-95.52529413	37.68958822
Phillips Cemetery	Oswego	-95.20321699	37.113395
Mount Calvary Cemetery	Parsons	-95.28639999	37.357849
Mount Hope Cemetery	Galesburg	-95.35135999	37.458913
Fairview Cemetery	Mildred	-95.14016099	38.024334
Gillham Cemetery	Moran	-95.11063999	37.97985
Mennonite Cemetery	Protection	-99.47956199	37.118916
Wilsonton Cemetery	Parsons	-95.34021099	37.259907
Pleasant Hill Cemetery	Dennis	-95.39570999	37.318731
West Bethany Cemetery	Galesburg	-95.27054299	37.398025
Brethren Cemetery	Erie	-95.28972599	37.499828
Jenkins Cemetery	Cullison	-98.87954199	37.555852
Elsmore Cemetery	Elsmore	-95.14398599	37.790277
Saint Johns Catholic Cemetery	Gas	-95.33686199	37.932112
Altamont Cemetery	Altamont	-95.29614699	37.179857
Green Lawn Cemetery	Pratt	-98.72621696	37.65953578
Haynesville Cemetery	Turin	-98.57526899	37.791771
Sunset Cemetery	Cullison	-98.91343199	37.624741
Mitchell Cemetery	Montana	-95.12136799	37.251771
Oak Hill Cemetery	Chetopa	-95.07470599	37.025589
Masonic Cemetery	Montanna	-95.13080099	37.265895
Nescatunga Cemetery	Coldwater	-99.239799	37.2299
Riverview Cemetery	Kiowa	-98.46007499	37.021693
Memorial Lawn Cemetery	Parsons	-95.28358299	37.301451
Crane Cemetery	Chanute	-95.51609199	37.601718
Coats Cemetery	Coats	-98.82851399	37.521426
Wooden Cemetery	Altamont	-95.32274899	37.14868
County Farm Cemetery	Oswego	-95.12115299	37.128371
Tibbets Cemetery	Oswego	-95.10409799	37.150646
Galemore Cemetery	Humboldt	-95.39748099	37.776227
La Harpe Cemetery	La Harpe	-95.30256699	37.90687999
Saint Rose Cemetery	Chetopa	-95.07751199	37.026573
Saratoga Cemetery	Pratt	-98.69203399	37.620852
Iola Township Cemetery	Piqua	-95.51871199	37.921662
Mound Valley Cemetery	Mound Valley	-95.39951499	37.199259
Bethany Cemetery	Galesburg	-95.26968999	37.398129
Thayer Cemetery	Thayer	-95.47551099	37.478966
Pleasant Valley Cemetery	La Harpe	-95.332807	38.009516
Oswego Cemetery	Oswego	-95.13168599	37.185519
Bethel Cemetery	Erie	-95.17886599	37.629492
Valley Cemetery	Galesburg	-95.35260099	37.398357
McClintock Kingston Cemetery	Edna	-95.35853514	37.01271623
Pleasant Valley Cemetery	Oswego	-95.11161399	37.098343
East Hill Cemetery	Erie	-95.21472699	37.56378
South Valley Cemetery	Erie	-95.34267899	37.612325
Harmony Cemetery	Savonburg	-95.08883199	37.734012
Hopewell Cemetery	Mound Valley	-95.37438699	37.24474499
Odense Cemetery	Erie	-95.26470299	37.703656
Old Carlyle Cemetery	Iola	-95.41248099	38.01392
Swedish Cemetery	Savonburg	-95.23303599	37.74671
Mount Hope Cemetery	Humboldt	-95.42590117	37.82581579
Penfield Cemetery	Mound Valley	-95.412214	37.145532
Hardtner Cemetery	Hardtner	-98.65030478	37.0219053
Valley City Cemetery	Saint Paul	-95.11450099	37.441885
Fairview Cemetery	Altamont	-95.23609499	37.134739
Cecil Cemetery	Bartlett	-95.24905799	37.032988
Ellison Cemetery	Humboldt	-95.52413899	37.78777
Rosehill Cemetery	Hazelton	-98.38618499	37.093914
Protection Cemetery	Protection	-99.49517099	37.212987
New East Hill Cemetery	Erie	-95.21770099	37.566033
Lucas Cemetery	Edna	-95.27753315	37.0153022
Byers Cemetery	Byers	-98.87599899	37.795959
Saint Francis Cemetery	Saint Paul	-95.15760599	37.513584
Labette Cemetery	Labette	-95.17737099	37.24447499
Saint Pauls Cemetery	Turin	-98.66477699	37.726138
Fussman Cemetery	Humboldt	-95.43692599	37.827262
Wilmore Cemetery	Wilmore	-99.20983899	37.342783
Leib Cemetery	Edna	-95.37798299	37.062979
Mount Moriah Cemetery	Stark	-95.14233999	37.733225
Urbana Cemetery	Galesburg	-95.37879299	37.55153
Avilla Cemetery	Protection	-99.35111199	37.126994
Belvidere Cemetery	Belvidere	-99.04927099	37.455021
Putnam Cemetery	Stark	-95.20469499	37.688511
Pleasant Valley Cemetery	Turin	-98.49658899	37.775916
Leanna Cemetery	Chanute	-95.32361694	37.73255595
Saint Joseph Cemetery	Humboldt	-95.43725399	37.826641
Swede Center Cemetery	Chanute	-95.50763599	37.718699
Mumford Cemetery	Isabel	-98.48609499	37.36924583
Greenwood Cemetery	Chanute	-95.400259	37.667547
Roberts Cemetery	Edna	-95.48667	37.005875
Fairview Cemetery	Parsons	-95.14084999	37.296329
Iuka Township Cemetery	Iuka	-98.73120199	37.734184
Pleasant View Cemetery	Sawyer	-98.63833099	37.514241
Osage Cemetery	Mildred	-95.09681999	38.031404
Plainfield Cemetery	Thayer	-95.50727699	37.449126
Green Lawn Cemetery	Chanute	-95.47521999	37.66099
Richland Cemetery	St Paul	-95.12473199	37.402189
Ellenwood Cemetery	Sawyer	-98.62954199	37.50063
Highland Cemetery	Iola	-95.40183799	37.938422
Morehead Cemetery	Thayer	-95.52502599	37.384609
Iola Cemetery	Iola	-95.41392199	37.923893
Burgess Cemetery	Sharon	-98.39990299	37.369335
Saint Patricks Cemetery	Chanute	-95.46577435	37.67546038
Graceland Cemetery	Meade	-100.319025	37.283006
Saint Agnes Cemetery	Pretty Prairie	-97.97913499	37.832202
Centerville Cemetery	Fort Scott	-94.81896719	37.90042038
Spangler Pleasant Valley Cemetery	Girard	-94.96098399	37.529924
Faith Community Church Cemetery	Galena	-94.67045699	37.072326
Greenwood Cemetery	Newton	-97.32518199	38.045911
West Union Cemetery	Pittsburg	-94.77768299	37.403589
Saint Anthony Cemetery	Weir	-94.759206	37.301938
Springdale Cemetery	Chase	-98.331016	38.362763
Ferguson Cemetery	Waldron	-98.14799799	37.064825
Hatch Cemetery	Uniontown	-95.01276499	37.831587
Shumway Cemetery	Lyons	-98.23560999	38.390981
Turkey Creek Cemetery	Bronson	-94.96578399	37.895932
Ingalls - Logan Cemetery	Ingalls	-100.458256	37.84171
Oliver Cemetery	Perry	-95.59779699	37.765294
Maple Grove Cemetery	Buffalo	-95.76234263	37.66439131
Linder Cemetery	Neosho Falls	-95.55609199	37.856185
Pleasant Valley Cemetery	Larned	-99.09613841	38.07182313
Olivet Cemetery	Albion	-98.85036399	38.543901
Dubuque Cemetery	Beaver	-98.59304899	38.652704
Farm Ridge Cemetery	Sycamore Township	-95.80228699	37.356131
Harrisonville Cemetery	Independence	-95.81387999	37.132098
Bergtal Cemetery	Pawnee Rock	-98.97745899	38.305171
Prattsburg Cemetery	Macksville	-99.00481853	37.82810309
Zion Lutheran Cemetery	Independence	-95.70465246	37.23181648
Bachelder Cemetery	Fredonia	-95.85686299	37.494142
Browns Grove Cemetery	Burdett	-99.53301027	38.17352113
Coyville Cemetery	Coyville	-95.90394892	37.6874519
Jackson Cemetery	Fall River	-95.95234499	37.583613
Elmwood Cemetery	Coffeyville	-95.61901899	37.023293
Highland Center Cemetery	Rutland	-95.82852099	37.208932
Fairview Cemetery	Coffeyville	-95.653883	37.053861
Union Cemetery	Cherokee	-95.54128399	37.063259
Zionville Cemetery	Sullivan Township	-101.3706819	37.43165912
Garfield Cemetery	Garfield	-99.26702827	38.07364113
Trotter Cemetery	Lewis	-99.27844599	37.839461
Carlisle Cemetery	Toronto	-95.93934099	37.745653
Everett Cemetery	Buffalo	-98.90918499	38.376467
Dutro Cemetery	Liberty Township	-95.73915099	37.973915
Belmont Cemetery	Yates Center	-95.77589365	37.83562449
Township Cemetery	Macksville	-98.95936903	37.95712594
Swedish Baptist Cemetery	Herndon	-100.815808	39.821449
Lawn Ridge Cemetery	Goodland	-101.788786	39.626939
Scott Mennonite Cemetery	Scott City	-101.0373241	38.65690502
Grace Cemetery	McDonald	-101.383102	39.784802
Union Cemetery	Herndon	-100.796478	39.92571899
Mayflower Cemetery	McDonald	-101.306801	39.900639
Clough Valley Cemetery	Saint Francis	-102.031755	39.84367767
Edison Cemetery	Edison	-101.558223	39.337501
Ilion Cemetery	Atwood	-101.160865	39.61228
St. Mary's Cemetery	Herndon	-100.799892	39.915796
Brewster Cemetery	Edison	-101.39175	39.36019
Sunnyside Cemetery	Brewster	-101.5110082	39.58313727
Lone Star Cemetery	Atwood	-100.908515	39.613723
Gar Cemetery	Saint Francis	-101.79627	39.815001
St. Francis Cemetery	Saint Francis	-101.779619	39.777215
Emanuel Cemetery	Saint Francis	-101.889356	39.943959
Summers Township Cemetery	Colby	-101.0550697	39.23397768
Bethany Cemetery	Tribune	-101.641475	38.683376
Prairie View Cemetery	Scott City	-100.9513232	38.26623547
St. Theresa Cemetery	Leoti	-101.5115747	38.57154681
Beulah Cemetery	Colby	-101.038506	39.38991
St. Mary's Cemetery	Marienthal	-101.206753	38.482462
Hollenbeck Cemetery	Brewster	-101.4651728	39.37339499
Thomas Cemetery	Dighton	-100.27248	38.332407
Pence Cemetery	Scott City	-101.08215	38.669748
Rose Hill Cemetery	Ludell	-100.953456	39.839954
Enterprise Cemetery	Atwood	-101.158734	39.914665
German Plains Cemetery	Saint Francis	-102.0028222	39.87187285
Greisler Cemetery	Bird City	-101.562249	39.669997
Menlo Cemetery	Rexford	-100.738946	39.371776
Salem Lutheran Cemetery	Saint Francis	-101.913174	39.815133
Rodgers Cemetery	Tribune	-101.966647	38.494793
New Liberty Cemetery	Goodland	-101.872721	39.437192
Evangelical Cemetery	Herndon	-100.758131	39.91622
Hamper Cemetery	Ludell	-100.907933	39.881947
Beulah Cemetery	Leoti	-101.312327	38.664052
St. Patrick Cemetery	Atwood	-100.8916	39.611106
St. Cyril Cemetery	Atwood	-101.110026	39.943446
Mingo Cemetery	Colby	-100.96176	39.292371
Cumberland Cemetery	Colby	-100.899176	39.546617
Zion Lydia Lutheran Cemetery	Leoti	-101.3173894	38.27763539
Shermanville Cemetery	Goodland	-101.578224	39.511109
Jaqua Cemetery	Kanorado	-102.030015	39.637628
Zion Evangelical Lutheran Cemetery	Saint Francis	-101.98296	39.71166
Pearl Cemetery	Leoti	-101.5478051	38.52463784
Immanuel Cemetery	Ludell	-100.962784	39.861073
Wheeler Cemetery	Saint Francis	-101.711292	39.747917
Lydia Lutheran Cemetery	Leoti	-101.276875	38.292982
Shields Cemetery	Dighton	-100.442525	38.626562
Zion Evangelical Cemetery	Saint Francis	-101.861272	39.844535
Coronado Cemetery	Leoti	-101.294521	38.503188
Blakeman Cemetery	Atwood	-101.129678	39.814214
Whistler Cemetery	Goodland	-101.745834	39.278288
Harmony Cemetery	Goodland	-101.6939459	39.42463964
Healy Cemetery	Healy	-100.6231455	38.61271723
Genesee Cemetery	Genesee	-98.16873799	38.507019
Star Cemetery	Burrton	-97.68328791	37.92655855
Union Center Cemetery	Girard	-94.77784399	37.52923
Zion Cemetery	Pittsburg	-94.68576599	37.392465
Pleasant Hill Cemetery	Bluff City	-97.87005699	37.067343
Harley Cemetery	McCune	-95.05514299	37.325816
Valley Township Cemetery	Burrton	-97.74739599	37.94967
Liscum Cemetery	Genesee	-98.10875899	38.514721
Mennonite Cemetery	Haven	-97.83901263	37.94137094
Baxter Springs Cemetery	Baxter Springs	-94.76994999	37.032009
Bronson Cemetery	Bronson	-95.07922511	37.90099729
Cave Cemetery	Fowler	-100.2525479	37.54716929
Langdon Maple Hill Cemetery	Turin	-98.30784699	37.853349
Messer Cemetery	Galena	-94.64509499	37.147995
Frontenac Cemetery	Frontenac	-94.67649399	37.454451
Lone Elm Cemetery	Columbus	-94.80534862	37.22127083
Saint Mary's Cemetery	Chase	-98.351178	38.349178
Usrey Cemetery	Baxter Springs	-94.75800699	37.078396
Pleasant Valley Sheffield Cemetery	Arcadia	-94.64799299	37.630358
Maple Grove Cemetery	Fort Scott	-94.66759658	37.90778383
Pleasant Ridge Cemetery	Bronson	-95.00403799	37.89952
Fairview Cemetery	Montezuma	-100.415148	37.643078
Baird Cemetery	Attica	-98.25719199	37.279028
Seward Cemetery	Meade	-100.434315	37.191413
Glendale Cemetery	Fort Scott	-94.74140299	37.950707
Huntsville Cemetery	Pleven	-98.334766	38.043009
Zion Cemetery	Fulton	-94.78627599	37.994172
Wild Mead Cemetery	Nickerson	-98.09338999	38.158344
Laurel Cemetery	Haven	-97.83977299	37.926956
Hilltop Cemetery	Raymond	-98.42357899	38.288333
Pleven Cemetery	Pleven	-98.31701299	37.969459
Spring Grove Cemetery	Anthony	-98.05859199	37.150454
Ebenezer Cemetery	Buhler	-97.70671399	38.145246
Rosebank Cemetery	Mulberry	-94.61848799	37.552793
Peace Valley Cemetery	Sterling	-98.28848999	38.15226
Evergreen Cemetery	Fort Scott	-94.71675599	37.794466
Marmaton Cemetery	Redfield	-94.83194299	37.820324
Davis Cemetery	Pittsburg	-94.61781009	37.35253872
Hoosier Cemetery	Kingman	-98.171176	37.667516
Ensign Cemetery	Ensign	-100.2341901	37.6276122
Lutheran Cemetery #17	 	-97.07307549	38.90115794
Bethel Cemetery	 	-97.11052651	39.00234276
Belle Spring Cemetery	 	-97.14836174	38.79091897
Biehler Gravesite	 	-97.0260762	38.63092584
Banner Cemetery	 	-97.2348379	38.68232446
Ashton Cemetery	 	-97.13175691	38.68143825
Alida-Upland Cemetery	 	-96.9726045	39.07507138
Abilene Cemetery	 	-97.22197363	38.93162892
Vine Creek Cemetery	 	-97.41801909	39.11928816
Twin Hills Cemetery	 	-97.90175961	39.08905961
Saint Paul Cemetery	Delphos	-97.7517715	39.26746925
Price Cemetery	Tescott	-97.91452468	39.03106383
Crown Point Cemetery	Culver	-97.68553975	38.96137325
Baldwin Cemetery	 	-97.91128856	39.20687513
West Asher Cemetery	Beloit	-97.96617476	39.48148685
Walnut Creek Cemetery	Glen Elder	-98.36267679	39.45202511
Simpson Cemetery	Simpson	-97.94727376	39.36341659
Shiloh Cemetery	Beloit	-98.05961177	39.3574643
Scottsville Cemetery	Scottsville	-97.94654666	39.5467716
Saltville Cemetery	Beloit	-98.1083353	39.2694792
St. Peter and Paul Cemetery	Cawker City	-98.42821299	39.52479673
Saint Johns Cemetery	Beloit	-98.10224169	39.46695729
Saint bonfire Cemetery	Tipton	-98.46686275	39.33490043
Round Springs Cemetery	Beloit	-98.25587721	39.24849717
Rose Valley Cemetery	Hunter	-98.35811853	39.3329227
Prarie Grove	Cawker city	-98.42552969	39.52479974
Pleasent Veiw Cemetery	Beloit	-98.1520176	39.33612164
Pleasent Valley Cemetery	Beloit	-98.1719872	39.45559278
New Hope Cemetery	Beloit	-98.08776197	39.35029833
Naomi Cemetery	Glen Elder	-98.35883568	39.41564523
McBride Cemetery	Beloit	-97.99097817	39.48087925
Hopewell Cemetery	Beloit	-98.20963514	39.37997984
Honey Creek Cemetery	Solomon Rapids	-98.25185192	39.43277632
High Prairie Cemetery	Glen Elder	-98.31094797	39.39378769
Greenwood Union Cemetery	Hunter	-98.39763591	39.24166573
Green Mound Cemetery	Beloit	-97.98595746	39.32001042
Glenwood Cemetery	Glen Elder	-98.28233924	39.50513914
Glendale Cemetery	Glen Elder	-98.18129531	39.55389754
South Fairveiw Cemetery	Glen Elder	-98.30645358	39.4665782
Brown's Creek Cemetery	Glen Elder	-98.246242	39.53948923
Excelsior Union Cemetery	Glen Elder	-98.35796957	39.39694365
Elmwood Cemetery	Beloit	-98.10240483	39.47058223
Elmira Cemetery	Hunter	-98.24224057	39.34954865
Coursen Grove Cemetery	Simpson	-97.97686845	39.30590193
Bell-Bogardus Cemetery	Beloit	-97.99074031	39.42335079
Asherville Cemetery	Beloit	-97.96671865	39.41984835
Brookville Cemetery	Brookville	-97.85613525	38.78254782
Highland Cemetery	New Cambria	-97.52048104	38.90999281
Shiloh Cemetery	Salina	-97.68706754	38.88568448
Roselawn Memorial Park	Salina	-97.57820538	38.82558574
Gypsum Hill Cemetery	Salina	-97.57668065	38.83822347
All Saints Catholic Cemetery	Salina	-97.54611678	38.82887581
Highland Cemetery	Minneapolis	-97.68933265	39.11731116
Greenville Cemetery	Niles	-97.4645952	38.97951374
Culve Union Cemetery	Tescott	-97.82274552	39.00142017
Franklin Cemetery	Tescott	-97.87331525	38.98388761
Pleasent Hill Cemetery	Miltonvale	-97.58369077	39.20486103
Fair Veiw cemetery	Ada	-97.87362167	39.16087098
Mount Liberty Cemetery	Oak Hill	-97.43559091	39.24918853
Bohemain National Cemetery	Ada	-97.90540757	39.21936708
Fairveiw Sherman Cemetery	Lamar	-97.53025603	39.29231787
Bennington Cemetery	Bennington	-97.59386904	39.03796018
Hall Cemetery	Delphos	-97.63048514	39.24055997
Delphos Cemetery	Delphos	-97.743774	39.27632367
Olive Hills Cemetery	Burr Oak	-98.15684605	39.95180396
Shaffer Cemetery	Burr Oak	-98.21201211	39.95132616
Montana Cemetery	Mankato	-98.10798996	39.91486595
East Buffalo Cemetery	Jewell	-98.13446992	39.74137338
Fairveiw Cemetery	Jewell	-98.17366315	39.59589459
Star Cemetery	Jewell	-98.137651	39.58813855
Union Cemetery	Jewell	-98.21281099	39.64080613
McGehee Cemetery	Mankato	-98.25017139	39.70523526
Lutheran Cemetery	 	-98.19401305	39.78056083
St. Teresa Cemetery	Mankato	-98.22407284	39.78890103
Mount Hope Cemetery	Mankato	-98.23051537	39.78315207
Lutheran Cemetery	Mankato	-98.26924621	39.78503407
Zion Cemetery	Mankato	-98.39162776	39.76704809
St. Elizabeth Cemetery	Esbon	-98.43522033	39.78410972
Salem Cemetery	Esbon	-98.500515	39.875246
Prairie Home Cemetery	Esbon	-98.46648113	39.82818174
Oak Creek Cemetery	Burr Oak	-98.39230067	39.90144087
Providence Cemetery	Esbon	-98.40104752	39.88661292
Baker Cemetery	Burr Oak	-98.36186899	39.857835
Wallace Cemetery	Jewell	-98.10479603	39.66716773
Jewell Cemetery	Jewell	-98.1677714	39.66984377
Ellsworth Memorial Cemetery	 	-98.21742476	38.73339627
Saron Lutheran Cemetery	 	-97.65142717	39.63850176
Cedar Grove Cemetery	Clyde	-97.40559074	39.5494411
St. Joseph Cemetery	 	-97.40529864	39.50893432
Murdock Cemetery	 	-97.64161297	39.63800134
Gotland Cemetery	 	-97.61251693	39.60922103
Dutton Family Cemetery	 	-97.74345056	39.64236554
Glasco Cemetery	 	-97.82595503	39.35667113
French Presbyterian Cemetery	 	-97.4158318	39.48177882
Miltonvale Cemetery	Miltonvale	-97.44655642	39.33647369
West Summit Cemetery	Jamestown	-97.83145746	39.55294005
Fairview Cemetery	 	-97.77257423	39.58875723
Enterprise Cemetary	 	-97.61081129	39.42319137
Hall Cemetery	 	-97.70337304	39.44545128
Smith Grave	Miltonvale	-97.43233572	39.36416431
West Branch Cemetery	Concordia	-97.7459599	39.53928851
Oakland Union Cemetery	Miltonvale	-97.58208121	39.36392905
Pleasant View Cemetery	Ames	-97.44296294	39.53451154
Saint Peters Catholic Cemetery	Aurora	-97.518317	39.47594124
Sulphur Springs Cemetery	Aurora	-97.4991083	39.40875422
Sibley Cemetery	Concordia	-97.69086091	39.6092755
Nelson Cemetery	Rice	-97.54139856	39.52561866
Phelps Cemetery	 	-97.48077994	39.34173249
Green Mound Cemetery	 	-97.50771104	39.52444514
Walnut Grove Cemetery	 	-97.49939747	39.56965234
Saint Peters Meredith Cemetery	Miltonvale	-97.64862327	39.36540086
Rice Cemetery	 	-97.55562319	39.56155404
Bethel Cemetery	 	-97.69986583	39.35335051
St. Mary's Catholic Cemetery	 	-97.82454295	39.3567839
Jamestown Cemetery	Jamestown	-97.88532002	39.59632622
Saint Mary's Catholic Cemetery	Jamestown	-97.88403988	39.59630462
Hollis Cemetery	 	-97.5364515	39.63822574
Mount Hope Cemetery	Clyde	-97.41210668	39.59672972
Mount Calvary Catholic Cemetery	Clyde	-97.41448588	39.59169932
Kindel Cemetery	Concordia	-97.64692057	39.4517978
Colfax Cemetery	 	-97.44311139	39.43741097
Wilcox Cemetery	 	-97.73167869	39.49229563
Princeville Cemetery	Aurora	-97.50141721	39.46695236
Pleasant Hill Cemetery	Huscher	-97.62955535	39.50943341
Danish Lutheran Cemetery	 	-97.81056655	39.65318917
Pleasant Hill Cemetery	Concordia	-97.66473507	39.55771699
Morrison Cemetery	 	-97.79728069	39.48196122
Saint Concordia Cemetery	Concordia	-97.6494573	39.55851599
Highland Methodist Cemetery	 	-97.86280192	39.48055332
Saron Baptist Cemetery	 	-97.83849636	39.63172328
Summit 3 Cemetery	 	-97.91961204	39.52539454
Brethren Cemetery	Green	-97.03457703	39.48080304
Rosevelt Broughton Cemetery	Clay Center	-97.05418099	39.33098
Idylwyld Mormon Cemetery	Clay Center	-97.07159339	39.5094038
Switzers Gap Cemetery	Formoso	-98.02597399	39.842119
Pleasant Plains Cemetery	Lebanon	-98.54258099	39.879294
Woodlawn Cemetery	Gypsum	-97.35307499	38.65101
Meade Cemetery	Smith Center	-98.88388199	39.868137
WaKeeney City Cemetery	WaKeeney	-99.87373299	39.016215
Corinth Cemetery	Downs	-98.52715599	39.444111
Maple Hill Cemetery	Kansas City	-94.66554199	39.057447
Union Cemetery	Abilene	-97.18611299	39.024405
Swartwood Cemetery	Longford	-97.342735	39.132529
Calvary Cemetery	Wichita	-97.29532199	37.67807
Newburn Cemetery	Abilene	-97.24330239	38.8134403
Union Cemetery	Shawnee	-94.86203299	38.992007
Liberty Township Cemetery	Nashville	-98.42847499	37.428111
Saint Bridget Cemetery	Scammon	-94.80652399	37.280645
Memorial Park Cemetery	Hutchinson	-98.02199899	38.053623
Pence Cemetery	Baxter Springs	-94.69366999	37.013341
Crandall Cemetery	Ness City	-99.63961399	38.334433
Riverside Cemetery	Ness City	-99.77734499	38.304738
Saint Johns Lutheran Cemetery	Herington	-96.99958348	38.69550711
Chenoworth Cemetery	Ness City	-99.87543599	38.421145
Saint Peters Cemetery	Wichita	-97.47123914	37.62466145
Page Cemetery	Page City	-101.183788	39.084218
Butler Cemetery	Alton	-98.84934299	39.540054
Hope Cemetery	Hope	-97.07013449	38.69254817
Greenwood Cemetery	Leavenworth	-94.93885299	39.288056
Pleasant Plains Cemetery	Alton	-99.03739599	39.336426
Bethel Cemetery	Easton	-95.07784969	39.28482979
Bazine Cemetery	Bazine	-99.69604899	38.473747
Ivanhoe Cemetery	Sublette	-100.871133	37.641581
Saint Patricks Church Cemetery	Kansas City	-94.7981437	39.11550263
Park Cemetery	Valley Center	-97.31837099	37.871296
Fairview Cemetery	Ness City	-99.87290199	38.435016
North Branch Friends Cemetery	Esbon	-98.37100245	39.97263057
Ebenezer Cemetery	Green	-96.99761421	39.3867571
Gilbert Cemetery	Clay Center	-97.06267132	39.28532855
Goshen Central Cemetery	Clay Center	-97.01592867	39.50994289
Athelstane Cemetery	Longford	-97.17532284	39.17741967
Greenwood Cemetery	Clay Center	-97.12444299	39.397182
City of Green Cemetery	Green	-96.98851319	39.42395787
Lincoln Cemetery	Morganville	-97.29348071	39.42295532
Lady Smith Pleasant Ridge Cemetery	Clay Center	-97.18482437	39.27878578
Riverdale Cemetery	Clifton	-97.29327417	39.51078274
Rose Maron Cemetery	Oak Hill	-97.33433268	39.21988084
Swedish Pleasant Hill Cemetery	Clay Center	-97.12632892	39.47430051
Madura Cemetery	Wakefield	-97.01202741	39.1843066
Fancy Creek Cemetery	Green	-96.99661446	39.46671725
Hays Cemetery	Clay Center	-97.080705	39.45166192
Morganville City Cemetery	Morganville	-97.1821132	39.47316294
Appleton Cemetery	Green	-96.99751304	39.52520181
Bloom Township Cemetery	Morganville	-97.27787103	39.4518971
City of Wakefield Cemetery	Wakefield	-97.01221864	39.21894322
Garfield Cemetery	Clay Center	-97.12716877	39.52448907
Gatesville Cemetery	Grant	-97.01723135	39.28151436
Hebron Cemetery	Clay Center	-97.25882986	39.32174616
Mizpath Cemetery	Clay Center	-97.12448199	39.395241
Republic City Cemetery	Clay Center	-97.16369347	39.34325152
Shields Cemetery	Clay Center	-97.35078292	39.32044867
Swedsburg Cemetery	Clay Center	-97.14696302	39.49128959
Highland Cemetery	Wakefield	-96.98063218	39.21801058
Norwegion Luthern Cemetery	Morganville	-97.18238276	39.50276885
Pleasant Valley Cemetery	Clay Center	-97.28874574	39.2471554
Sherman Cemetery	Morganville	-97.22490729	39.5320021
Smith Cemetery	Beloit	-98.00992971	39.45151561
Calvery Cemetery	Brookville	-97.85426633	38.77379749
Chapel Hill Cemetery	Gypsum	-97.41084262	38.63864358
Donmeyer Cemetery	New Cambria	-97.48617039	38.87043631
Dry Creek Cemetery	Falun	-97.81473207	38.64093188
Falun Cemetery	Falun	-97.74016309	38.66802633
Gypsum Cemetery	Gypsum	-97.44532424	38.69199913
Poheta Cemetery	Solomon	-97.39926283	38.79841741
St. Patrick Cemetery	Gypsum	-97.43649132	38.66747385
Rosehill Cemetery	Lindsborg	-97.65057293	38.63072091
Saline Valley Cemetery	Salina	-97.60786845	38.91599816
Smoky Hill Cemetery	Lindsborg	-97.70215661	38.60962973
Smolan Cemetery	Lindsborg	-97.6863365	38.74691205
Summit Cemetery	Brookville	-97.88891195	38.67418944
Walnut Hill Cemetery	Tescott	-97.71449716	38.93571466
Salemsborg Cemetery	Lindsborg	-97.68491765	38.69587117
Clear Creek Cemetery	 	-98.10875337	38.78397317
Kanopolis Cemetery	 	-98.1293627	38.7115396
Lorraine Baptist Cemetery	 	-98.33198744	38.56594141
Buckeye Cemetery	 	-98.11029268	38.65223911
Carneiro Cemetery	 	-98.03531398	38.7286058
Ellsworth Cemetery	 	-98.24260142	38.72664789
Bickerdyke Cemetery	 	-98.24362163	38.71132319
Fairview Cemetery	 	-98.29129211	38.84254619
Pleasant Valley Cemetery	 	-98.37415354	38.84909456
Scates Cemetery	 	-98.10082519	38.62194716
Henry Family Cemetery	 	-98.33894513	38.62300964
Lorraine Cemetery	 	-98.33048058	38.55051856
Langley Cemetery	 	-97.96534004	38.55104263
Mulberry Cemetery	 	-97.95049912	38.87035865
Palacky Cemetery	 	-98.46254504	38.66331736
St. Pauls Lutheran Cemetery	 	-98.26204837	38.82055203
Excelsior Lutheran Cemetery	 	-98.33841689	38.84121575
St. Pauls United Church of Christ Cemetery	 	-98.40682431	38.58389818
St. Peters Lutheran Cemetery	 	-98.38853376	38.58117431
Wilson Cemetery	 	-98.46627755	38.81964831
Wilson Union Cemetery	 	-98.45791986	38.81235036
St. Wenceslaus Catholic Cemetery	 	-98.46625714	38.81834823
Glenwood Cemetery	Basehor	-94.94527199	39.10831
Resurrection Cemetery	Wichita	-97.46109999	37.71314
Delaware Cemetery	Linwood	-95.09233099	38.966861
Starns Family Cemetery	Leavenworth	-94.94581299	39.241108
Congregational Cemetery	Linwood	-95.03747699	39.001058
Delaware Cemetery	Leavenworth	-94.87764299	39.24887899
Maupin Family Cemetery	Lenexa	-94.79983499	38.96203
Saint Joseph Cemetery	Bel Aire	-97.25249999	37.769
Branson Cemetery	Derby	-97.20723899	37.607139
Greenwich Cemetery	Wichita	-97.22675499	37.751937
Mapleton Cemetery	Fort Scott	-94.87919361	38.02197003
Cleveland Cemetery	Kingman	-98.15290899	37.553327
Greenwood Cemetery	Murdock	-97.98946442	37.56068005
Osaga Cemetery	Fulton	-94.73146399	38.008007
Gandy Cemetery	Riverton	-94.69200299	37.066973
Saint Lawrence Cemetery	Easton	-95.13363099	39.344588
Odessa Cemetery	Lebanon	-98.4954099	39.71205923
Bloomington Cemetery	Osborne	-98.81205199	39.467489
Vincent Cemetery	Naomi	-98.72298699	39.191977
Harrington Cemetery	Clearwater	-97.58754899	37.490018
Custer Cemetery	Gaylord	-98.654514	39.735011
Fairview Cemetery	Sharon Springs	-101.868218	39.126408
Resurrection Catholic Cemetery	Lenexa	-94.72600599	38.976827
Noel Cemetery	Clearwater	-97.424012	37.486926
Afton Cemetery	Goddard	-97.60634342	37.63400037
Forest Grove Cemetery	Little River	-98.01745999	38.507042
Galena Cemetery	Galena	-94.64863399	37.075801
Mount Vernon Cemetery	Cheney	-97.81613699	37.704397
New Pleasant View Cemetery	Scammon	-94.72444799	37.251751
Christ the King Cemetery	Dodge City	-100.005866	37.64964807
West Cedar Cemetery	Agra	-99.11391921	39.81449897
Lucas Cemetery	Lucas	-98.53132757	39.06482754
Hobart Cemetery	Stockton	-99.36194564	39.38431338
Ash Rock Cemetery	Woodston	-99.08279427	39.52439911
Belle Prairie Cemetery	Alexander	-99.54863401	38.45851059
Holy Cross Cemetery	Pfeifer	-99.17110299	38.710689
Locust Hill Cemetery	Rush Center	-99.31798419	38.47135608
Riverview Cemetery	Bonner Springs	-94.89195899	39.04313
Restlawn Garden of Memory Cemetery	Newton	-97.40652899	38.027501
Attica Cemetery	Attica	-98.24594999	37.23847999
Abbyville Cemetery	Abbyville	-98.19791999	37.975784
Cherokee Cemetery	Cherokee	-94.82964699	37.36042
Church of God of the First Born Cemetery	Halstead	-97.42667099	38.094069
Lyons Municipal Cemetery	Lyons	-98.20313476	38.36041917
Myers Cemetery	Beulah	-94.88875799	37.446166
Twelvemile Cemetery	Gaylord	-98.63530599	39.629262
St. Anna Cemetery	Walker	-99.07765499	38.872321
Concord Cemetery	Dodge City	-100.116163	37.59114275
Hope Cemetery	Nekoma	-99.38325471	38.37840533
Sodville Cemetery	Ford	-99.75116099	37.526342
Green Mound Cemetery	Palco	-99.51205369	39.27887546
Saint Aloysius Cemetery	Osborne	-98.69050199	39.453215
Roll Cemetery	Peck	-97.37399499	37.520603
Shawnee Methodist Mission Cemetery	Fairway	-94.62180599	39.030829
Viola Cemetery	Viola	-97.64230439	37.48640226
Ebenezer Baptist Cemetery	Abilene	-97.17011469	38.76604192
Valley Center Cemetery	Valley Center	-97.37107735	37.85923028
Vineman Cemetery	Long Island	-99.61345719	39.95852854
St. Joseph Cemetery	Offerle	-99.60475299	37.89699
St. Anthony Cemetery	Schoenchen	-99.33522167	38.71195736
St. Severin Cemetery	Hays	-99.25997069	39.02305987
Bloom Cemetery	Minneola	-99.89695418	37.49287755
Pleasant Valley Cemetery	Bucklin	-99.63459245	37.688099
Seventh Day Adventist Cemetery	Otis	-99.1261868	38.52267466
Norman Cemetery	Plainville	-99.15805472	39.10403313
Milberger Cemetery	Russell	-98.91277199	38.708413
Bucklin Cemetery	Bucklin	-99.64496381	37.54274805
Plainville Cemetery	Plainville	-99.28888248	39.22579814
St. Catharina Cemetery	Catherine	-99.219266	38.923345
St. Michaels Cemetery	Dodge City	-100.102393	37.94213804
Survey Cemetery	Woodstown	-99.13443473	39.372585
Pleasant Hill Cemetery	Smith Center	-98.91785699	39.951124
Leasburg Cemetery	Gaylord	-98.97330999	39.58192
Saint Mark Cemetery	Colwich	-97.56334614	37.73836474
Union Cemetery	Collyer	-100.112387	39.030127
Highland Cemetery	Esbon	-98.43012999	39.966329
College Hill Cemetery	Hope	-97.20576799	38.609723
Albert Cemetery	Albert	-99.034197	38.421302
Marvin Cemetery	Glade	-99.32410275	39.67985874
St. Fidelis Cemetery	Victoria	-99.14991699	38.864654
St. Josephs and Highland Cemetery	Ashland	-99.7487955	37.19973783
Hyacinth Cemetery	Buckeye	-99.38984899	39.002854
Hyde Park Cemetery	Bunker Hill	-98.66989783	38.78466168
Prairie View Cemetery	Prairie View	-99.58081764	39.82991287
St. Johns Cemetery	Spearville	-99.75413465	37.840881
Rosebank Cemetery	Ramona	-97.07834287	38.62416024
Pleasant View Cemetery	Athol	-98.89915799	39.785504
Fuller Cemetery	Gardner	-94.88982499	38.775021
De Soto Cemetery	De Soto	-94.98870399	38.970046
First Baptist Cemetery	Hope	-97.16771038	38.65439463
Family Cemetery	Olathe	-94.723611	38.876944
Garrett Cemetery	Gaylord	-98.72838299	39.58739
Restlawn Cemetery	Liberal	-100.920703	37.111617
Pleasant Hill Cemetery	Enterprise	-97.07554959	38.8885257
Pleasant Valley Cemetery	Harper	-97.96690499	37.289754
Partridge Cemetery	Partridge	-98.08637437	37.96299313
Lone Star Cemetery	Pretty Prairie	-97.98255499	37.807513
Duquoin Cemetery	Harper	-98.11239881	37.37564838
Mount Ayr Cemetery	Alton	-98.97185999	39.376116
Kickapoo Memorial Cemetery	Leavenworth	-94.96524199	39.398609
Fairview Cemetery	Downs	-98.71992199	39.539083
Antioch Cemetery	Merriam	-94.68685699	38.99393
Sacred Heart Cemetery	Ness City	-99.90079399	38.443689
Tonganoxie Cemetery	Tonganoxie	-95.10874721	39.10906033
Wirtonia Cemetery	Columbus	-94.70007099	37.188049
Hillside Cemetery	Sedgwick	-97.41004099	37.91306699
Lutheran Cemetery	Hepler	-94.97019899	37.616829
Mount Orum Cemetery	Redfield	-94.89742188	37.81370882
Rest haven Cemetery	Wichita	-97.47754699	37.666681
Highland Cemetery	Minneapolis	-97.68930999	39.116211
Gardner Cemetery	Gardner	-94.93724899	38.804744
Kickapoo Sacred Heart Cemetery	Fort Leavenworth	-94.97055241	39.39839668
Corinth Cemetery	Prairie Village	-94.62647299	38.978324
Alanthus Cemetery	Utica	-100.282491	38.772975
Griffith Cemetery	Kansas City	-94.73664661	39.1418872
Lenexa Cemetery	Lenexa	-94.74189999	38.9679
Reformed Cemetery	Downs	-98.48861699	39.595947
Zion Norwegian Cemetery	Oakley	-100.796097	39.046965
Holy Angels Cemetery	Tonganoxie	-94.99552199	39.146113
Lakeview Gardens Cemetery	Wichita	-97.19620799	37.710935
Good Hope Cemetery	Chapman	-96.999726	39.038863
Temple Emanuel Cemetery	Wichita	-97.30096543	37.70117934
Cheyenne Cemetery	Osborne	-98.64113299	39.177018
Smith Cemetery	Olathe	-94.85300899	38.93422
Union Center Cemetery	Fort Scott	-94.64051499	37.86865
Hebron Cemetery	Buhler	-97.68854325	38.1435364
Stevenson Cemetery	Mapleton	-94.985228	38.021131
Beeler Cemetery	Beeler	-100.196987	38.450068
Calvary Cemetery	Garden Plain	-97.68491099	37.652789
Wesleyan Cemetery	Clay Center	-97.25724499	39.226838
Immaculate Conception Cemetery	Grinnell	-100.631825	39.128014
Bethany Center Cemetery	Portis	-98.63813799	39.494769
Lenape Cemetery	Linwood	-94.960823	39.007904
Fort Wallace Cemetery	Wallace	-101.559503	38.904955
Grinter Cemetery	Kansas City	-94.76220867	39.07976166
Keystone Cemetery	Healy	-100.868758	38.743903
Hillcrest Cemetery	Galena	-94.66244999	37.076173
Whitewater Cemetery	Whitewater	-97.17033473	37.95524941
Mount Vernon Cemetery	Stockton	-99.4146237	39.46644259
Michaels Cemetery	Russell	-98.81955572	38.71143717
Fort Cemetery	Hays	-99.3542144	38.86769183
Cordial Cemetery	McCracken	-99.42955299	38.66918
Old Stockton Cemetery	Stockton	-99.30521083	39.45860184
Matteson Cemetery	Agra	-99.16145146	39.88637792
Abbey Cemetery	Alexander	-99.49958622	38.46593395
Hillsdale Cemetery	Phillipsburg	-99.2100119	39.73106274
Kensington Gardens Memorial Centre	Wichita	-97.20249234	37.72480586
Saint Johns Cemetery	Atchison	-95.13898299	39.404349
Shiloh Cemetery	Plainville	-99.14179821	39.2346787
St. Boniface Cemetery	Victoria	-99.11481799	38.774456
Winterset Cemetery	Gorham	-99.0311121	38.75478279
Hampton Cemetery	McCracken	-99.47581804	38.59651513
Baptist Cemetery	Bison	-99.15246938	38.53723422
Amherst Cemetery	Luray	-98.76104472	39.05885628
Morning Star Cemetery	Gove	-100.335243	38.843326
Sunset Hill Cemetery	Herington	-96.95701136	38.67822591
Fairview Cemetery	Phillipsburg	-99.30968199	39.748308
West Hope Cemetery	Stockton	-99.21113399	39.502636
St. Mary's Cemetery	Gorham	-99.02107785	38.89178418
St. Thomas Cemetery	Stockton	-99.27748911	39.44481093
Greenlawn Cemetery	Columbus	-94.881821	37.045012
Saint John Cemetery	Zenda	-98.42004499	37.427977
Township Cemetery	Partridge	-98.07709899	37.854045
Pyramid View Cemetery	Scott City	-100.790505	38.757678
Monument Cemetery	Monument	-101.017096	39.118063
Mount Hope Cemetery	Osborne	-98.84546458	39.39379611
Shawnee Indian Cemetery	Shawnee	-94.71217799	39.021043
Saline Valley Cemetery	WaKeeney	-99.96162499	39.117672
Campbell Cemetery	Shawnee	-94.70869699	39.029565
Hammond Cemetery	Gaylord	-98.747297	39.589733
Johnson County Memorial Gardens	Overland Park	-94.66930799	38.92187
Ruby Cemetery	Clearwater	-97.51621599	37.56212
Old St Joseph Cemetery	Spearville	-99.64356799	37.91239599
Hanston Cemetery	Hanston	-99.71664884	38.15642283
Chapman Cemetery	Agra	-99.1789575	39.99285065
Pleasant Hill Cemetery	Phillipsburg	-99.27191332	39.85719928
Ford Cemetery	Ford	-99.74149999	37.632063
Union Cemetery	Nekoma	-99.42796603	38.45121425
St. Joseph Cemetery	Palco	-99.60474813	39.30485073
Chalk Mound Cemetery	Woodstown	-99.08543981	39.32044442
West Hope Cemetery	Jamestown	-97.98743299	39.589351
Liberal Cemetery	Liberal	-100.947822	37.056145
Delta Cemetery	Formoso	-98.05528199	39.796204
Oak Grove Cemetery	Kansas City	-94.61690099	39.133337
Mount Olivet Cemetery	Leavenworth	-95.059997	39.33888236
Uniontown Cemetery	Uniontown	-94.96534488	37.84921666
Halstead Cemetery	Halstead	-97.49908149	38.02594919
Bethany Cemetery	Murdock	-98.01811399	37.589182
Jamesburg Cemetery	Wichita	-97.44523299	37.716059
Sacred Heart Cemetery	Park	-100.35597	39.114729
Mount Calvary Catholic Cemetery	Olathe	-94.81536799	38.841297
Elmwood Cemetery	Beloit	-98.10171499	39.469451
Saint Thomas Cemetery	Easton	-95.11909199	39.259713
Saylor Cemetery	Kansas City	-94.738333	39.15756973
Clearwater Cemetery	Clearwater	-97.50523969	37.5118111
Pleasant Valley Cemetery	Alton	-99.008141	39.458344
IXL Cemetery	Naomi	-98.92209099	39.24893899
Mount Pleasant Cemetery	Norwich	-97.84342411	37.52472313
Lath Branch Cemetery	Fort Scott	-94.65357099	37.846707
Crocker Cemetery	Pittsburg	-94.67169599	37.337547
Stevenson Cemetery	Galena	-94.672818	37.075167
Borland Cemetery	Columbus	-94.977301	37.259958
Englevale Cemetery	Arma	-94.73208427	37.58589807
Edgmand Cemetery	Columbus	-94.88779099	37.208803
Hunt Cemetery	Burrton	-97.66552678	37.94128853
Lowell Cemetery	Baxter Springs	-94.700758	37.038762
Kansas Center Cemetery	Genesee	-98.24839399	38.508343
Old Saint Johns Cemetery	Viola	-97.57082999	37.582198
Pleasant View Cemetery	Formoso	-98.05332599	39.755519
Hillsdale Cemetery	Spivey	-98.01255999	37.370852
Mayfield Cemetery	Garland	-94.64791099	37.693284
Fairview Cemetery	Chetopa	-95.00459599	37.027603
Avondale Cemetery	Fort Scott	-94.81491599	37.953608
Farlington Cemetery	Farlington	-94.83327126	37.62553019
Old Bross Cemetery	Nashville	-98.39389099	37.474509
Waterloo Cemetery	Murdock	-97.93672199	37.682792
Henry Cemetery	Abilene	-97.18622399	39.082661
Branch Comb Cemetery	Leavenworth	-95.01065317	39.41747237
Oak Hill Cemetery	Lebanon	-98.619234	39.843346
Quaker Valley Cemetery	Riverton	-94.717824	37.082983
Mount Carmel Cemetery	Frontenac	-94.67861999	37.4555
Mayberry Cemetery	Fort Scott	-94.65857099	37.797264
McCune Cemetery	McCune	-95.03366699	37.355263
Center Cemetery	Partridge	-98.06182899	37.984899
Schooley Cemetery	Pretty Prairie	-98.08302199	37.733438
Sego Cemetery	Arlington	-98.16401799	37.79189
Sumner Memorial Gardens	Wellington	-97.37941999	37.268764
Ames Cemetery	Moline	-96.27323899	37.314385
Meridian Cemetery	Canton	-97.42674899	38.25674
Covert Cemetery	Naomi	-98.81118999	39.289733
Saint Phillips Cemetery	Hope	-97.05086902	38.68092329
Pierpoint Cemetery	Wichita	-97.20764115	37.70109974
Springfield Cemetery	Kismet	-100.860438	37.279189
Saints Peter and Paul Cemetery	Cawker City	-98.43311599	39.48751
Rose Valley Cemetery	Downs	-98.590664	39.545669
Olathe Memorial Cemetery	Olathe	-94.81722199	38.896111
Athens Cemetery	Glen Elder	-98.302479	39.610332
Maywood Community Church Cemetery	Kansas City	-94.84025388	39.1278941
Cole Cemetery	Naomi	-98.80628999	39.235222
Stone Cemetery	Smith Center	-99.04786199	39.930012
Lorraine Avenue Mennonite Cemetery	Valley Center	-97.20120172	37.84065028
Pleasant Valley Cemetery	Sedgwick	-97.48417886	37.88400125
Lutheran Cemetery	Naomi	-99.009604	39.270689
Union Cemetery	Hunter	-98.369504	39.292786
Osborne Cemetery	Osborne	-98.71400399	39.451033
Pioneer Cemetery	Alton	-98.97536199	39.474177
Cedar Bluff Cemetery	Naomi	-98.84341399	39.24973299
Pleasant Valley Cemetery	Overland Park	-94.69502699	38.838872
South Solomon Cemetery	Osborne	-98.619257	39.4516
Fort Leavenworth National Cemetery	Leavenworth	-94.930519	39.351388
Long Island Cemetery	Long Island	-99.54036365	39.95847739
Fort Hays Memorial Gardens	Hays	-99.38007022	38.89838702
Hall Cemetery	La Crosse	-99.45654607	38.50730843
Appleton Township Cemetery	Minneola	-100.00515	37.400621
Gorham Cemetery	Gorham	-99.03964306	38.87866189
Harder Cemetery	Whitewater	-97.11618067	37.95951029
Prairie Ridge Cemetery	Dexter	-96.80725099	37.195251
Belle Plaine Cemetery	Belle Plaine	-97.28448447	37.38666019
Robert Marshall Cemetery	Sedan	-96.19821561	36.99945962
Rocky Ford Cemetery	Toronto	-96.05197081	37.80846351
Liberty Cemetery	Arkansas City	-96.88757599	37.127976
Easton Cemetery	Easton	-95.12368579	39.33973575
Four Corners Cemetery	Gardner	-94.97294199	38.831346
Cyrus Cemetery	Ransom	-99.84975799	38.683067
Sarcoxie Cemetery	Linwood	-95.01855699	39.040939
Gaylord Cemetery	Gaylord	-98.84281599	39.660208
Rosedale Cemetery	Walnut	-95.02608499	37.717544
Dietz Cemetery	Pittsburg	-94.73757399	37.41814
Fowler Cemetery	Fowler	-100.201365	37.37364
Beasley Cemetery	Baxter Springs	-94.83126499	37.075723
Hunt Cemetery	Kingman	-98.06240399	37.505002
Schlender Cemetery	Moundridge	-97.53769897	38.16693359
Mount Zion Cemetery	Redfield	-94.91526699	37.818207
Glenwood Cemetery	Walnut	-95.07096099	37.609874
Crisfield Cemetery	Attica	-98.32081199	37.174249
Bushton Cemetery	Bushton	-98.38875599	38.507792
McGonigle Cemetery	Arcadia	-94.73078999	37.626692
Bean Cemetery	Little River	-97.99772699	38.406289
Eastside Cemetery	Hutchinson	-97.91521299	38.046602
Mertilla Cemetery	Plains	-100.5613334	37.39498693
Brown Cemetery	Arcadia	-94.69996199	37.657267
Barnesville Cemetery	Fulton	-94.66250499	38.007286
Timberhill Oak Hill Cemetery	Columbus	-94.74340899	37.134393
Girard Cemetery	Girard	-94.85332299	37.500188
Lebanon Cemetery	Kingman	-97.97307799	37.704202
Wilburn Cemetery	Fowler	-100.126714	37.474348
Lutheran Cemetery	Meade	-100.344604	37.096398
Singer Cemetery	Bluff City	-97.85586699	37.123978
Pleasant View Cemetery	Pleven	-98.28861399	38.072544
Saint Rose Cemetery	Cheney	-97.84546651	37.71748792
Fairview Cemetery	Hutchinson	-97.90275699	37.963125
Haven Cemetery	Haven	-97.74595299	37.86861
Vinita Cemetery	Cheney	-97.86132399	37.615389
Mount Carmel Cemetery	McCune	-94.99652799	37.427108
Osage Cemetery	Girard	-94.94548499	37.404106
Atwater Cemetery	Meade	-100.450323	37.140833
Saint Mary's Cemetery	Newton	-97.32851599	38.041833
Saint Mary's Cemetery	Fort Scott	-94.89591099	37.732477
Devore Cemetery	Bluff City	-97.80730599	37.054191
West Point Cemetery	Cunningham	-98.43326699	37.557645
Lerado Cemetery	Turin	-98.2817281	37.78202569
Lone Star Cemetery	Pittsburg	-94.70468399	37.476993
Plains Cemetery	Plains	-100.5825406	37.258521
Baker Cemetery	Patridge	-98.08268492	37.85247341
Brazilton Cemetery	Brazilton	-94.95160269	37.55802133
Olive-School Cemetery	Walnut	-95.07164299	37.544232
Gross Cemetery	Arcadia	-94.63908373	37.64386127
County Farm Cemetery	Franklin	-94.70701999	37.51340582
Langdon Lane Cemetery	Pittsburg	-94.70484999	37.35275
Hepler Cemetery	Hepler	-94.97067473	37.67011595
Elsie Chapel Cemetery	Meade	-100.3778987	37.05407526
Countryside Bible Church Cemetery	Meade	-100.2705606	37.16871211
West Glendale Cemetery	Plains	-100.5790024	37.11948425
Buhler Thiessen Cemetery	Buhler	-97.77626686	38.14114634
Buhler Municipal	Buhler	-97.7749297	38.14412384
Wesley Chapel Cemetery	 	-98.33037952	38.44974313
Ebenezer Cemetery	Lyons	-98.27547619	38.39044394
Fairview Methodist Cemetery	Nickerson	-98.16031818	38.05793791
St Paul Cemetery	Arlington	-97.79490006	37.89687244
Sacred Heart Catholic Cemetery	Cunningham	-98.42818702	37.64715189
St Leo Catholic Cemetery	Nashville	-98.41214182	37.52783559
St Peter Catholic Cemetery	Spivey	-98.30409293	37.51572465
Civil War Cemetery	Whitewater	-97.17577907	38.0436008
Highland Cemetery	Newton	-97.35170307	38.14399163
Grace Hill Cemetery	Whitewater	-97.18069961	38.02931335
Eastlawn Cemetery	Zimmerdale	-97.38938817	38.11509708
Garden Community Church Cemetery	Halstead	-97.51840895	38.12292316
Melvin Cemetery	Harper	-98.13938506	37.28942963
Crystal Springs Cemetery	Harper	-98.12675075	37.25367083
Cimmaron Cemetery	Cimmaron	-100.3411549	37.81701928
North Mennonite Cemetery	Montezuma	-100.4786328	37.62083876
Copeland Cemetery	Copeland	-100.6174177	37.54538712
Trogdon Drywood Cemetery	Arcadia	-94.71125926	37.6621767
Rowe Cemetery	Pittsburg	-94.65029482	37.4017881
Hillcrest Cemetery	Florence	-96.928919	38.252664
Timber Creek Cemetery	Atlanta	-96.67852899	37.457663
Muqbra Muslim Cemetery	Atlanta	-96.88140887	37.49842867
De Bask Cemetery	Sedan	-96.34012799	37.022616
Union Chapel Cemetery	Sedan	-96.20999286	37.22818559
Findley Cemetery	Sedan	-96.18624376	37.02117751
Benton Cemetery	Benton	-97.09123899	37.79682
Eden Cemetery	Milton	-97.75063099	37.440038
Groveland Cemetery	Inman	-97.78740814	38.31839285
Beaumont Cemetery	Beaumont	-96.52631099	37.665585
Rock Creek Cemetery	Cedar Vale	-96.55275699	37.037788
Moline Cemetery	Moline	-96.30940255	37.37456471
Mennonite Cemetery	Lehigh	-97.31614199	38.376676
Memorial Lawn Cemetery	Arkansas City	-97.04253799	37.135306
Geuda Springs Cemetery	Geuda Springs	-97.16115199	37.130027
Burton Cemetery	Havana	-95.98258726	37.17952255
Reece Cemetery	Eureka	-96.43417699	37.794469
Union Cemetery	Benton	-97.13357199	37.831434
Round Mound Cemetery	Cedar Vale	-96.39969999	37.1634
Friedenstal Cemetery	Tampa	-97.32502799	38.551674
Cedar Creek Cemetery	Cedar Vale	-96.54011999	37.122494
Gnadenau Cemetery	Hillsboro	-97.18036726	38.32525038
Deem Family Cemetery	Andover	-97.13482957	37.74917639
Alton Cemetery	Caldwell	-97.527894	37.004081
Bogle Cemetery	Leon	-96.82639	37.628917
Shafer Cemetery	Potwin	-97.04864599	37.90751699
Homer Creek Cemetery	Eureka	-96.20972299	37.926048
Butts - Wakefield Cemetery	Leon	-96.83515999	37.693681
Pilsen Cemetery	Marion	-97.03664146	38.47084841
Morris Center Cemetery	Caldwell	-97.74667499	37.169863
Pleasant Valley Cemetery	Arkansas City	-97.03563399	37.143688
Argonia Cemetery	Argonia	-97.755874	37.272275
Old Cloverdale Cemetery	Cedar Vale	-96.47567999	37.220376
Mooney Cemetery	Peru	-96.04859341	37.05444529
Elgin Cemetery	Sedan	-96.28270999	37.014162
Ladd Cemetery	Eureka	-96.38956999	37.875207
Lone Star Cemetery	Atlanta	-96.81641899	37.503631
Strassburg Cemetery	Marion	-97.07688199	38.405932
Elim Lutheran Cemetery	Marquette	-97.84200911	38.55827824
Fairview Cemetery	McPherson	-97.80615699	38.438897
Austin Cemetery	Wellington	-97.51301499	37.345568
Windom Cemetery	Windom	-97.86976999	38.384176
Prairie Chapel Cemetery	Hamilton	-96.25055699	38.022524
Valley View Memorial Cemetery	Gypsum	-97.40954299	38.550188
Mound Cemetery	Moundridge	-97.53839599	38.202553
South Lawn Cemetery	Severy	-96.24249799	37.634199
Riverview Cemetery	Arkansas City	-97.059752	37.080031
Grant Creek Cemetery	Cedar Vale	-96.39930199	37.113715
St. John's Lutheran Cemetery	Hope	-97.15000299	38.601424
Fairview Cemetery	Niotaze	-96.00664199	37.057169
Woods Cemetery	Madison	-96.17625299	38.092965
Ozro Cemetery	Cedar Vale	-96.42650499	37.055883
Gard Cemetery	Hillsboro	-97.15113899	38.290291
Highland Cemetery	Eureka	-96.3423765	37.94166244
Riverside Cemetery	Marquette	-97.90586968	38.60307727
First Christian Cemetery	Moundridge	-97.509206	38.188899
Neal Cemetery	Toronto	-96.06328799	37.822234
Frick Cemetery	Durham	-97.19733399	38.478858
Chautauqua Cemetery	Sedan	-96.07779063	37.10922076
Highland Cemetery	Winfield	-97.00268907	37.22439479
Gospel Ridge Cemetery	Cambridge	-96.62535499	37.258842
Hardrock Cemetery	Elk City	-96.02704194	37.19905809
Mount Zion Cemetery	Fall River	-96.09795499	37.584774
Grand Prairie Cemetery	Burden	-96.73507999	37.359066
Pleasant View Cemetery	Severy	-96.179438	37.569757
Ninnescah Cemetery	Udall	-97.14246799	37.335976
Leon Cemetery	Leon	-96.78761799	37.678124
Sherman Cemetery	El Dorado	-96.79870499	37.781953
Silver Creek Cemetery	Burden	-96.79737299	37.301413
Lehigh Mennonite Cemetery	Lehigh	-97.30697499	38.363065
North Inman Cemetery	Inman	-97.77934923	38.24731666
Caldwell Cemetery	Caldwell	-97.61490899	37.054115
Mount Hope Cemetery	Geuda Springs	-97.19987299	37.028163
Belle Vista Cemetery	El Dorado	-96.84031899	37.823703
Township Cemetery	Canton	-97.42834499	38.397315
Hale Cemetery	Elk City	-96.03660499	37.23405199
Township Cemetery	Hamilton	-96.17694299	37.985304
Green Lawn Cemetery	Grenola	-96.43667399	37.346699
Mount Zion Cemetery	Winfield	-97.113606	37.245641
Jordan Cemetery	Wellington	-97.34214699	37.188167
Ott Cemetery	Hamilton	-96.1506101	37.96883787
Glen Grouse Cemetery	Cambridge	-96.58537399	37.461564
Milan Cemetery	Milan	-97.69088499	37.27141
Bunker Hill Cemetery	Howard	-96.33482899	37.540885
Cresco Cemetery	Howard	-96.25194099	37.561977
District 1 Cemetery	Sedan	-96.28614468	37.0041397
Rose Hill Cemetery	Rose Hill	-97.11819214	37.56349146
Booth Cemetery	Peru	-96.11324099	37.06146
Pleasant Valley Cemetery	Virgil	-96.02037815	37.9026683
Sutton Cemetery	El Dorado	-96.95228099	37.738074
Grant Cemetery	Marion	-96.88442599	38.362127
Rose Valley Cemetery	Winfield	-96.87944599	37.171554
Alford Cemetery	Sedan	-96.10972889	37.11909008
Silverdale Cemetery	Arkansas City	-96.91407799	37.040803
Baker Cemetery	El Dorado	-96.93265199	37.890237
Brownlow Cemetery	Leon	-96.68497399	37.62289
City of McPherson Cemetery	McPherson	-97.64420781	38.3634923
Cedar Vale Cemetery	Cedar Vale	-96.50862299	37.101148
Potwin Cemetery	Potwin	-97.02461469	37.94179268
Osborne Township Cemetery	Mayfield	-97.53936566	37.25691753
Lehigh Mennonite Cemetery	Lehigh	-97.31709799	38.390909
Mount Olivet Cemetery	Moline	-96.28986799	37.352517
Excelsior Cemetery	McPherson	-97.85247099	38.463751
Walnut Valley Memorial Park	El Dorado	-96.89964299	37.811828
Elk Falls Cemetery	Elk Falls	-96.20049695	37.37762572
Gödel Cemetery	South Haven	-97.47159699	37.029685
Work Cemetery	Geuda Springs	-97.219109	37.064309
Caneyville Cemetery	Cedar Vale	-96.49840099	37.214594
Conway Springs Cemetery	Conway Springs	-97.61977199	37.386964
Prairie Lawn Cemetery	Peabody	-97.09445599	38.179594
Mount Vernon Cemetery	Winfield	-97.07750599	37.280972
Parkview Cemetery	Hillsboro	-97.20659514	38.31961451
Claney Cemetery	Marion	-97.03665999	38.290496
Latham Cemetery	Latham	-96.66142659	37.53371106
St. Josephs Cemetery	Conway Springs	-97.63893899	37.380298
Pleasant Valley Cemetery	Grenola	-96.39976199	37.272521
Maple City Cemetery	Dexter	-96.76819999	37.073483
Spring Creek Cemetery	Sedan	-96.28441999	37.185525
Forest Hill Cemetery	South Haven	-97.28504299	37.115304
Chikaskia Cemetery	Caldwell	-97.61895299	37.156065
Hackler Community Cemetery	Tampa	-97.16882499	38.551836
Saint Charles Cemetery	Longton	-96.12829399	37.220437
Wood Cemetery	Milan	-97.62245699	37.249406
Lewis Cemetery	Ramona	-97.06777899	38.595347
Saint Mary's Cemetery	Winfield	-96.97321899	37.23864899
Economy Cemetery	El Dorado	-96.73464899	37.765938
Peru Cemetery	Peru	-96.111511	37.078525
Crestwood Memorial Park	McPherson	-97.65858516	38.45016517
Douglass Cemetery	Douglass	-96.996707	37.51121
Springfield Cemetery	Hillsboro	-97.33532899	38.320575
Haven of Rest Cemetery	Hillsboro	-97.17697899	38.347494
Red Bud Cemetery	Udall	-97.09690199	37.441336
Quincy Cemetery	Virgil	-95.97780799	37.883359
Akron Cemetery	Winfield	-97.024628	37.360729
Fairview Cemetery	Wellington	-97.39406299	37.361712
Zion Cemetery	Newton	-97.11646899	38.078215
Worden Cemetery	Clearwater	-97.49396599	37.395369
Spring side Cemetery	Arkansas City	-96.963547	37.013221
Andover Lutheran Church Cemetery	Windom	-97.90736099	38.301008
Twin Grove Cemetery	Severy	-96.24239199	37.63572
Porter Cemetery	Wellington	-97.42329299	37.423662
Koon Cemetery	McPherson	-97.62986399	38.507315
Saint Pauls Evangelical Lutheran Cemetery	Ramona	-97.03872664	38.60844215
Elmwood Cemetery	Augusta	-96.96911335	37.68342147
Salem Cemetery	Burden	-96.87081799	37.317165
Blakely Cemetery	Madison	-96.16668099	38.15945
Zion Cemetery	Lindsborg	-97.54227546	38.55117334
Ridgeway Cemetery	Burns	-96.85580899	37.954831
Swiss Cemetery	Whitewater	-97.13490799	37.97979
Oak Hill Cemetery	Chautauqua	-96.17385699	37.01847
Union Cemetery	Winfield	-96.98390799	37.254417
Tisdale Cemetery	Winfield	-96.84238299	37.26532
Widener Cemetery	Rock	-96.97076099	37.457211
Hope Cemetery	Arkansas City	-97.09180599	37.026943
Fairview Cemetery	Augusta	-97.01678899	37.625416
West Liberty Cemetery	Elk City	-96.03733499	37.279076
Old Benton Cemetery	Benton	-97.12571399	37.781084
Spring Hill Cemetery	Conway Springs	-97.672363	37.372353
Greencastle Cemetery	Clearwater	-97.51272999	37.402745
Rose Dale Cemetery	Cedar Vale	-96.38521199	37.033584
Washington Cemetery	Havana	-95.98440118	37.14744487
Star Valley Cemetery	Udall	-97.04217499	37.412442
Schoenthal Cemetery	Newton	-97.29960399	38.187266
Stalter Cemetery	Rock	-96.96959599	37.43336
Holderman Cemetery	Potwin	-97.01333507	37.99895871
Greenwood Cemetery	Eureka	-96.27278099	37.82339333
Cassoday Cemetery	Cassoday	-96.6570556	38.04353356
Fairview - Griffith Cemetery	Winfield	-96.89725977	37.21557995
Udall Cemetery	Udall	-97.12635699	37.383983
Friends Cemetery	Rose Hill	-97.08979499	37.562583
McCabe Cemetery	Douglass	-96.91603299	37.548389
Oakes Cemetery	Canton	-97.40824999	38.449175
Longton Cemetery	Longton	-96.06975399	37.392071
Littleton Cemetery	Mulvane	-97.20745499	37.449802
South Bend Cemetery	Winfield	-96.94151799	37.128159
Pleasant View Cemetery	Newton	-97.115588	38.050015
Richland Cemetery	Douglass	-97.08114999	37.511964
McGill Cemetery	Potwin	-97.02476258	37.91898379
Busby Cemetery	Longton	-96.04237199	37.45954
Belknap Cemetery	Moline	-96.34609999	37.2508
Chelsea Cemetery	El Dorado	-96.76726467	37.91988009
Elmwood Cemetery	Lindsborg	-97.65864999	38.57833999
Mount Calvary Cemetery	Florence	-96.95919099	38.230296
Baptist Cemetery	Durham	-97.30683648	38.50785184
Doyle Valley Cemetery	Peabody	-97.24364299	38.204456
Denick Cemetery	Sedan	-96.33300599	37.148729
Zion Cemetery	Hillsboro	-97.19730092	38.3555437
Butts Cemetery	Beaumont	-96.53461904	37.66474729
Rogers Cemetery	Sedan	-96.27656842	37.16304013
Towanda Cemetery	Towanda	-96.99749153	37.80266275
Little Walnut Cemetery	Leon	-96.60580267	37.70102479
Dunkard Cemetery	Peabody	-97.17001999	38.225438
Ebenezer Methodist Cemetery	Burns	-96.91433026	38.03536987
Burden Cemetery	Burden	-96.74371899	37.329789
Empire Cemetery	Galva	-97.51988199	38.339948
Star Cemetery	Piedmont	-96.42435199	37.693719
Brainerd Cemetery	Whitewater	-97.09346799	37.956675
Pleasant View Cemetery	Eureka	-96.29782199	37.694112
Inman South Cemetery	Inman	-97.77543499	38.216867
Johannestal Cemetery	Hillsboro	-97.22483399	38.40937
St. Mary Cemetery	Tampa	-97.13513899	38.551582
Union Chapel Cemetery	Mayfield	-97.57432199	37.227897
Amish Cemetery	Inman	-97.84194799	38.274911
Cowley Cemetery	Winfield	-96.96942699	37.222677
Casement Cemetery	Sedan	-96.199273	37.123442
Haynes Cemetery	Niotaze	-96.02495698	37.0314442
Wilson Cemetery	Sedan	-96.34361349	37.01507344
French Creek Cemetery	Hillsboro	-97.21991199	38.392181
Browns Chapel Cemetery	Fall River	-96.09221399	37.649481
Freedom Cemetery	Moundridge	-97.43634887	38.20259566
Tannehill Cemetery	Winfield	-97.09583399	37.16202
Clear Cut Cemetery	Howard	-96.41746649	37.48736772
Charleston Cemetery	Fall River	-96.03383599	37.63714
Spring Creek Cemetery	Barnard	-97.94625739	39.12517049
Lincoln City Cemetery	Lincoln	-98.13559201	39.03888722
St. Patricks Catholic Cemetery	Lincoln	-98.15108488	39.0160302
Hammer Cemetery	Lincoln	-98.08704441	38.95753253
St. John Luthern Cemetery	Lincoln	-98.15185982	38.99468682
St. Johns Catholic Cemetery	Lincoln	-98.25898086	39.01684005
Sylvan Grove City Cemetery	Sylvan Grove	-98.3834205	39.0155115
Cesko Slovanky Hrbitov Cemetery	Caldwell	-97.676465	37.054421
Dunkard Cemetery	Galva	-97.50091758	38.34972809
Crum Cemetery	Longton	-96.11810999	37.289484
Lincolnville Cemetery	Lincolnville	-96.96630399	38.49963376
Beagle Cemetery	Osawatomie	-94.94917651	38.41795883
Dexter Cemetery	Dexter	-96.71097592	37.17310717
Marquette Cemetery	Marquette	-97.83642399	38.566542
Logan Cemetery	Tampa	-97.26137499	38.568984
Parker Cemetery	Arkansas City	-96.98752699	37.069557
Rose Hill Cemetery	South Haven	-97.38229399	37.04499
Catlin Cemetery	Peabody	-97.13345199	38.22502
Alexanderwohl Fried of Cemetery	Hillsboro	-97.33184699	38.261646
Oak Valley Cemetery	Longton	-96.000471	37.343019
Greenwood Cemetery	Sedan	-96.17068799	37.124911
Mohn Cemetery	Tampa	-97.12392699	38.522526
Oak Grove Cemetery	Sedan	-96.22025889	37.01565881
Fairmount Cemetery	Newton	-97.05145699	38.028831
Lost Springs Cemetery	Lost Springs	-96.96386048	38.56297038
Grace Lawn Cemetery	Howard	-96.27239299	37.458843
Andover Cemetery	Andover	-97.13443267	37.72987748
Bethany Cemetery	Wellington	-97.50084999	37.172059
Harter Cemetery	Marion	-96.94881299	38.369637
Sunset Lawns Cemetery	El Dorado	-96.87808699	37.802796
Pankratz Cemetery	Durham	-97.29822999	38.522394
Garrison Cemetery	Augusta	-96.86280699	37.668401
Moore Prairie Cemetery	Sedan	-96.30463399	37.076266
Monitor Church of the Brethren Cemetery	McPherson	-97.81365823	38.33260427
Quito Cemetery	Leon	-96.72502599	37.715297
Sacred Heart Cemetery	Wellington	-97.56014099	37.171426
Andrew Cemetery	Madison	-96.27583399	38.100854
Upola Cemetery	Longton	-95.99664899	37.432966
Pleasant Center Cemetery	Burns	-96.96794396	38.04321065
Forest Cemetery	Piedmont	-96.37997917	37.54152403
Pontiac Cemetery	El Dorado	-96.73384199	37.815937
Canada Cemetery	Marion	-97.11282366	38.36292866
Hartke Cemetery	Lincolnville	-96.94702599	38.508169
Lolled Cemetery	Geuda Springs	-97.16578099	37.063826
Allison Cemetery	Florence	-96.93307899	38.223907
Prairie Garden Cemetery	Peck	-97.31511	37.464996
Indianola Cemetery	Andover	-97.07614999	37.745016
West Zion Cemetery	Moundridge	-97.53681699	38.202695
Prairie Lawn Cemetery	Wellington	-97.37865599	37.266967
Township Cemetery	Fall River	-96.07110299	37.678092
Windsor Cemetery	Cambridge	-96.67955799	37.310816
Amish Cemetery	Conway Springs	-97.685426	37.372593
Bethlehem Lutheran Cemetery	Sylvan Grove	-98.38456997	39.01558466
Heiser Cemetery	Lincoln	-98.20696031	38.99727392
Vesper Cemetery	Sylvan Grove	-98.31887979	39.03811588
Emmanual Church Cemetery	Lincoln	-98.27998326	38.97989309
Hynes Cemetery	Sylvan Grove	-98.41120929	38.94381354
Voss Cemetery	Lincoln	-98.2804316	38.94450102
Beverly Cemetery	Beverly	-97.97592122	39.02325287
Monroe Cemetery	Beverly	-97.98489467	38.98164093
St. Paul Luthern Cemetery	Lincoln	-98.0777379	38.94510782
Denmark Cemetery	Lincoln	-98.27847427	39.08982292
Milo Cemetery	Barnard	-98.01717645	39.20035152
Sunnyside Cemetery	Lincoln	-98.06339715	39.11239312
Courtland Cemetery	Courtland	-97.87700999	39.783268
Oakdale Cemetery	Jamestown	-97.80921	39.673895
Saint Josaphat Cemetery	Belleville	-97.69029	39.899543
Hubbell Cemetery	Narka	-97.50083599	40.000435
National Cemetery	Narka	-97.42587199	39.89306
Saint Katherine Cemetery	Belleville	-97.53879699	39.827905
Zion Cemetery	Concordia	-97.59443999	39.675
Grace Hill Cemetery	Belleville	-97.65250299	39.762232
Riverview Cemetery	Scandia	-97.787372	39.801509
Washington Cemetery	Republic	-97.76256499	39.950929
Saint George Cemetery	Munden	-97.53740899	39.871358
Poplar Grove Cemetery	Scandia	-97.73470199	39.77008
White Rock Cemetery	Courtland	-97.91339599	39.878657
Pleasant Ridge Cemetery	Scandia	-97.71247399	39.711151
Rose Mound Cemetery	Courtland	-97.91338099	39.965233
Washam Cemetery	Lincoln	-98.02132799	38.92988
Willoughby Cemetery	Agenda	-97.42471919	39.74041213
Gritten Cemetery	Republic	-97.85765599	39.900625
Prairie Rose Cemetery	Scandia	-97.80164799	39.892962
Lake Cemetery	Republic	-97.83789099	39.966365
Belleville Cemetery	Belleville	-97.64144899	39.828627
Agenda Cemetery	Agenda	-97.43359099	39.676032
Rose Hill Cemetery	Agenda	-97.56590699	39.711197
Pleasant Hill Cemetery	Belleville	-97.59548541	39.79058546
Union Cemetery	Belleville	-97.54588399	39.697564
Mount Pleasant Cemetery	Courtland	-97.88504399	39.831954
Pleasant View Cemetery	Belleville	-97.67880099	39.783002
Persinger Cemetery	Courtland	-97.90454299	39.860488
Maple Grove Cemetery	Narka	-97.45509599	39.972705
Farmington Cemetery	Cuba	-97.45283999	39.830025
Stephenson Cemetery	Belleville	-97.64446099	39.92800999
Bohemian Cemetery	Cuba	-97.43798599	39.783529
Liberty Cemetery	Republic	-97.70643099	39.944176
Hawks Cemetery	Cuba	-97.37738599	39.798469
Frontier Cemetery	Belleville	-97.59892899	39.740004
Tabor Cemetery	Cuba	-97.51678499	39.863476
Valley Cemetery	Concordia	-97.76218599	39.668631
Rose Creek Cemetery	Munden	-97.56685161	39.94677364
Lutheran Cemetery	Scandia	-97.78143199	39.812508
Mill Creek Cemetery	Cuba	-97.39641899	39.841815
Ada Lutheran Church Cemetery	Courtland	-97.86691538	39.71295335
Rose Hill Cemetery	Robinson	-95.41449146	39.809722
Morrisville Cemetery	Morrowville	-97.18792843	39.84313903
Mission View Cemetery	Eskridge	-96.11443699	38.942501
Oakwood Cemetery	Baldwin City	-95.18274899	38.769452
Mitchell Valley Cemetery	Herington	-96.89390199	38.666952
White City Cemetery	White City	-96.74165199	38.810591
Grandview Cemetery	Leonardville	-96.77295299	39.335116
Mount Hope Cemetery	Frankfort	-96.40733999	39.602694
South Denison Cemetery	Denison	-95.622139	39.383476
Partlow Cemetery	White Cloud	-95.36024599	39.999833
Oliver Cemetery	Haddam	-97.350592	39.842781
Homestead Cemetery	Cedar Point	-96.69568199	38.202131
Antioch Cemetery	Ottawa	-95.35972499	38.538589
Olive Branch Cemetery	White Cloud	-95.31639235	39.97316156
Peach Grove Cemetery	Randolph	-96.81104299	39.549676
Ulrich Cemetery	Lawrence	-95.25071953	38.8410309
Haskell Indian Nations University - Haskell Cemetery	Lawrence	-95.22829999	38.9352
Hillside Cemetery	Emporia	-96.37490865	38.4304596
Boys Industrial School Cemetery	Topeka	-95.68357807	39.10196181
Sunset Memory Gardens	Atchison	-95.13514146	39.59789264
Capioma Cemetery	Fairview	-95.82046129	39.78047479
Spring Grove Quaker Cemetery	Osawatomie	-95.01833099	38.440935
Prairie View Cemetery	Alta Vista	-96.37016075	38.81145401
Evergreen Cemetery	Emporia	-96.17963499	38.356954
Mitchell Cemetery	Mayetta	-95.80017199	39.354928
May Day Cemetery	Green	-96.93057099	39.495832
East View - Big Springs Cemetery	Lecompton	-95.48613899	39.022018
Home Cemetery	Home	-96.54029499	39.835001
Hull Grove Cemetery	Winchester	-95.24368467	39.36313013
Miller Cemetery	Muscotah	-95.52756125	39.48555014
Union Cemetery	Emporia	-96.0428678	38.43764423
Bethel Cemetery	Baldwin City	-95.34414199	38.767506
Turner Cemetery	Pleasanton	-94.64494532	38.16450806
Wilson - Raymer Cemetery	Louisburg	-94.65696133	38.59208787
Vienna Cemetery	Onega	-96.14692772	39.44722751
Maydale Cemetery	Olpe	-96.11849399	38.229109
Linnville Cemetery	Mound City	-94.79690499	38.224748
Indianapolis Cemetery	Osawatomie	-94.99341599	38.50501423
Upper Wolf Lutheran Cemetery	Robinson	-95.38882717	39.76901046
Vickery Family Cemetery	Denton	-95.23616928	39.73257374
Jingo Cemetery	La Cygne	-94.68690199	38.403907
Admatha Cemetery	Westmoreland	-96.44462599	39.34805
Highland Cemetery	Paola	-94.76849599	38.534067
Myers Cemetery	Atchison	-95.11524799	39.636941
Black Jack Cemetery	Black Jack	-95.11647399	38.766055
Saint Patricks Cemetery	Onaga	-96.14622708	39.60286354
Briggs Cemetery	Manhattan	-96.57046699	39.033924
Waverly Cemetery	Waverly	-95.58228986	38.39453733
Mennonite Cemetery	Hartford	-96.0168123	38.30367132
Mount Saint Scholastica Cemetery	Atchison	-95.12741742	39.55238943
Kincaid Cemetery	Kincaid	-95.15129735	38.09126119
Union Cemetery	Overbrook	-95.37094872	38.74074626
Battlefield Cemetery	Pleasanton	-94.7232785	38.12225276
Colyer Cemetery	Lawrence	-95.36285199	38.818904
Stony Point Cemetery	Baldwin City	-95.21087999	38.824707
Washington Creek Cemetery	Lawrence	-95.400191	38.826887
Silver Lake Cemetery	Silver Lake	-95.861917	39.118832
Haskell Indian Nations University - Haskell Cemetery	Lawrence	-95.22829999	38.9352
Prairie City Cemetery	Baldwin City	-95.21054599	38.766745
Rossville Cemetery	Rossville	-95.93710073	39.14347075
Saint Johns Cemetery	Baldwin City	-95.33461583	38.79587369
Sutton Valley Cemetery	Greeley	-95.10386499	38.331171
Ursula Cemetery	Paola	-94.8675	38.567778
Mariadahl Cemetery	Oostburg	-96.61950199	39.428922
Pen well - Gabel Cemetery and Mausoleum	Topeka	-95.72248299	39.061945
Newman Cemetery	Perry	-95.48303099	39.088055
Nortonville Cemetery	Nortonville	-95.33740606	39.41332127
Latimer Cemetery	Herington	-96.85817099	38.754557
Saint Lawrence Cemetery	Neosho Rapids	-95.97061796	38.37699346
Kelso Cemetery	Council Grove	-96.57156199	38.749751
Worden Cemetery	Baldwin City	-95.32653699	38.78194
Kimberlin Cemetery	Everest	-95.39656499	39.710996
Elmdale Cemetery	Elmdale	-96.66343063	38.37779359
Fourmile Cemetery	Bern	-95.95686899	39.985806
Rock Creek Cemetery	Edgerton	-95.01555799	38.709831
Neuchatel Cemetery	Onaga	-96.20223929	39.5685807
Dunkard Cemetery	Morrill	-95.68416799	39.899453
Rosean Cemetery	Emporia	-96.14650665	38.5347003
Prairie Home Cemetery	La Cygne	-94.84371588	38.30954421
Union Cemetery	Osage City	-95.83972317	38.65256346
Fanning Cemetery	Troy	-95.15330469	39.83424414
Frank Cemetery	Paola	-94.80061499	38.499145
Miami Cemetery	Paola	-94.70572799	38.526829
Saint Mary's Cemetery	Seneca	-96.09790299	39.886698
Laid Cemetery	Junction City	-96.962512	39.103053
Hodges Cemetery	Paola	-94.78745999	38.595568
Coal Creek Cemetery	Valley Falls	-95.45902993	39.40604753
Osawatomie Cemetery	Paola	-94.93756214	38.53581251
Mount Nebo Cemetery	Osawatomie	-94.91919464	38.45288091
Cornelison Cemetery	Hiawatha	-95.54853392	39.97531183
Zion Cemetery	Tecumseh	-95.54699399	38.986455
Little Cross Creek Cemetery	Delia	-95.98440499	39.36504
Pleasant Ridge Cemetery	Olpe	-96.18166299	38.260295
Rock Creek Cemetery	Overbrook	-95.45668199	38.849185
Lancaster Cemetery	Lancaster	-95.30626733	39.56650993
Pleasant View Cemetery	Waverly	-95.52722499	38.425836
Danish Cemetery	Lyndon	-95.63825299	38.57235
Hays Cemetery	Pleasanton	-94.62412199	38.24808
Cottage Hill Cemetery	Waterville	-96.75543199	39.59515
Fox Cemetery	Onega	-96.323145	39.421206
Saint John Cemetery	Greeley	-95.12568799	38.354668
Comet Cemetery	Sabetha	-95.73402284	39.75437466
Iola Cemetery	Highland	-95.18965799	39.841698
Alpine Cemetery	Lebo	-95.77540604	38.5050389
Green Valley Cemetery	Osawatomie	-95.04734299	38.47014781
Saint Joseph Cemetery	Olpe	-96.16280999	38.266726
Old Huron Cemetery	Lancaster	-95.35881499	39.60561
Duluth Cemetery	Onega	-96.23087499	39.524437
Olson Cemetery	Junction City	-96.70278399	38.909168
Overbrook Cemetery	Overbrook	-95.5479805	38.77491612
Hesper Friends Cemetery	Eudora	-95.06267246	38.89823168
Rebekah Independent Order of Odd Fellows Home Cemetery	Manhattan	-96.65619199	39.153431
Cashman Cemetery	Louisburg	-94.66203999	38.592078
Howard Cemetery	Rantoul	-95.11635899	38.58723499
Rose Hill Cemetery	Valley Falls	-95.46187699	39.332397
Pleasant View Cemetery	Blue Mound	-95.01740399	38.095099
Franklin Cemetery	Rossville	-95.97979612	39.20174215
Highland Cemetery	Wilsey	-96.672279	38.667719
Mount Hope Cemetery	Topeka	-95.73796831	39.03954831
Memorial Park Cemetery	Lawrence	-95.21552699	38.955281
Dunlap Cemetery	Council Grove	-96.35416699	38.57917699
Rapp Cemetery	Osage City	-95.91304499	38.653064
Twin Mounds Cemetery	Overbrook	-95.481716	38.869354
Mount Vernon Cemetery	Atchison	-95.14357999	39.538886
Sunny Slope Cemetery	Blue Mound	-95.01508799	38.095195
Star Cemetery	Westphalia	-95.59036799	38.227238
Albany Cemetery	Sabetha	-95.800634	39.94249
Bitner Cemetery	Denton	-95.24650599	39.744016
Fisher Cemetery	Pleasanton	-94.75006399	38.20407
Saint Mary's Cemetery	Valley Falls	-95.446751	39.343889
Wabaunsee Cemetery	Wamego	-96.32515315	39.15135384
Antioch Cemetery	Frankfort	-96.52778899	39.638332
Ogden Cemetery	Ogden	-96.71072543	39.12244209
Richland Cemetery	Overbrook	-95.52002099	38.876445
Keene Cemetery	Maple Hill	-96.00544115	38.96507043
Bethel Cemetery	Topeka	-95.58664599	39.008612
Czech - Moravian Cemetery	Rossville	-95.93815927	39.21627255
Mulberry Cemetery	Corning	-96.20166799	39.631051
Cedar Hill Cemetery	Westmoreland	-96.46328599	39.562096
Clinton Cemetery	Lawrence	-95.41080899	38.913614
Old Fairview Cemetery	Fairview	-95.69494299	39.855021
Saint Teresa Cemetery	Westphalia	-95.49826421	38.18770623
Logue Cemetery	Leroy	-95.536854	38.073706
Somervell Cemetery	Wakarusa	-95.749706	38.918336
Altamont Cemetery	Leroy	-95.54630099	38.153515
University of Kansas - Lawrence Campus Pioneer Cemetery	Lawrence	-95.26176169	38.9526082
Curry Cemetery	Mound City	-94.86107599	38.100586
Eudora Cemetery	Eudora	-95.08941399	38.94556
Linn City Cemetery	Linn	-97.08686399	39.653177
Wesley Chapel Cemetery	Mound City	-94.90740939	38.1900329
Sabetha Cemetery	Sabetha	-95.78989635	39.90110137
Proctor Cemetery	Frankfort	-96.54756799	39.578673
Highland Cemetery	Junction City	-96.84195399	39.013887
Saint Joseph's Catholic Cemetery	Manhattan	-96.640961	39.051829
Saint Johns Cemetery	Randolph	-96.84915299	39.481297
Courter - Ritchey Cemetery	Troy	-95.04080999	39.819756
Pleasant Valley Cemetery	Paola	-95.04268035	38.62233869
Emmanuel Cemetery	Berryton	-95.57424885	38.97202393
Chicago Mound Cemetery	Neosho Rapids	-96.06138099	38.347794
Oneida Cemetery	Seneca	-95.94833927	39.86348955
Fairview Cemetery	Goff	-95.93813199	39.682826
Morrison Cemetery	Frankfort	-96.35302699	39.712499
Saint Leo's Catholic Cemetery	Horton	-95.48898642	39.6663744
Garnett Cemetery	Garnett	-95.22747123	38.2960259
Saint Johns Cemetery	Junction City	-96.96212199	39.074393
Polly Creek Cemetery	Belvue	-96.23095	39.273983
Evergreen Cemetery	Bremen	-96.76974499	39.820558
Denton Cemetery	Denton	-95.28414199	39.72609056
Maplewood Cemetery	Emporia	-96.20073482	38.4200816
Oakwood Cemetery	Osawatomie	-94.95034264	38.5025
Bazaar Cemetery	Cottonwood Falls	-96.54570599	38.271717
Maple Grove Cemetery	Effingham	-95.36001699	39.550337
Fontana Cemetery	Fontana	-94.84462535	38.43165444
Montgomery Cemetery	Cedar Point	-96.83664899	38.319417
Hyatt Cemetery	Garnett	-95.29719899	38.227523
Mount Hope Cemetery	Neosho Rapids	-95.97231928	38.37724664
Forest Grove Cemetery	Effingham	-95.41711699	39.580857
Holton Cemetery	Holton	-95.7585712	39.46162948
Brown Cemetery	Osawatomie	-94.95666699	38.498056
Lone Elm Cemetery	Lone Elm	-95.24186699	38.088283
Osage City Cemetery	Osage City	-95.83612699	38.652574
Wilsey Cemetery	Wilsey	-96.6885412	38.63880247
Hunter Cemetery	Emporia	-96.06054799	38.412236
Saint Paul Cemetery	Palmer	-97.14683899	39.638651
Somerset Cemetery	Paola	-94.78079299	38.607235
Ozawkie Cemetery	Ozawkie	-95.43310861	39.22253028
Cummings Cemetery	Atchison	-95.11261899	39.624133
America City Cemetery	Corning	-96.04296699	39.572438
Steward Cemetery	Hoyt	-95.63664699	39.231109
Silver Cliff Cemetery	Hollenberg	-97.034242	39.959117
Allen Cemetery	Allen	-96.16145599	38.65201752
Hartford Cemetery	Hartford	-95.95276799	38.28974
Pleasant Hill Cemetery	Burlington	-95.64808595	38.16930051
Delia Cemetery	Delia	-95.96055099	39.26041
Mount Calvary Cemetery	Ottawa	-95.251192	38.622396
Wea Community Cemetery	Bucyrus	-94.66508599	38.714803
Park Cemetery	Mound City	-94.85718599	38.138362
Mount Pleasant Cemetery	Williamsburg	-95.37902499	38.539876
Shaw Cemetery	Mound City	-94.86996499	38.109475
Malvern Cemetery	Malvern	-95.655262	38.505846
West Scipio Cemetery	Richmond	-95.26636399	38.36863
Sway Back Cemetery	Pleasanton	-94.679212	38.286713
Mount Hope Cemetery	Hiawatha	-95.51581499	39.849726
Frost Cemetery	Emporia	-96.20187599	38.557108
Saint Bridget Cemetery	Axtell	-96.257383	39.95711
Dover Cemetery	Topeka	-95.93629199	38.957711
Bern Cemetery	Bern	-95.97802987	39.96344315
Wetzel Cemetery	Junction City	-96.765285	38.945
Oak Hill Cemetery	Atchison	-95.14405899	39.563158
Security Benefit Association Cemetery	Topeka	-95.76104878	39.06313049
Hebron Lutheran Church Cemetery	Burdick	-96.87326737	38.57381656
Shipsee Cemetery	Mayetta	-95.85026499	39.303885
Mount Zion Cemetery	Kincaid	-95.18668299	38.104423
Mont Ida Cemetery	Welda	-95.36958699	38.206498
Valley Brook Cemetery	Overbrook	-95.56470299	38.723618
Burrell Cemetery	Troy	-95.19546599	39.784109
Bushong Cemetery	Allen	-96.24321999	38.636363
Stanton Cemetery	Osawatomie	-95.05944399	38.5425
Rose Hill Cemetery	Randolph	-96.71723499	39.514998
Fairview Cemetery	Atchison	-95.16163499	39.423887
Calvary Cemetery	Burlington	-95.77415299	38.187522
Saint Bernards Cemetery	Haddam	-97.26642799	39.741556
Miami County Poor Farm Cemetery	Paola	-94.91930175	38.59434203
Larkinburg Cemetery	Holton	-95.57067117	39.47967898
Sprading Cemetery	Greenleaf	-96.993456	39.704528
Saint Patricks Cemetery	Manhattan	-96.50208999	39.20418
Zion Cemetery	Clyde	-97.33572699	39.698151
Milford Cemetery	Milford	-96.90481599	39.18304191
Swedish Mission Cemetery	Herington	-96.89406399	38.56495
Cadmus Cemetery	Parker	-94.89994795	38.36994504
North Elm Cemetery	Home	-96.53265999	39.942757
Bowman and Adgate Cemetery	Lebo	-95.80358216	38.30387601
Onega Cemetery	Onega	-96.17645328	39.50853836
Wolf River Cemetery	Troy	-95.22017099	39.812755
Strawn Cemetery	Hartford	-95.87648138	38.26734136
Highland Cemetery	Lyndon	-95.70986199	38.710399
Sacred Heart Cemetery	Emporia	-96.14236699	38.393071
Effingham Cemetery	Effingham	-95.39720112	39.51504836
Mount Calvery Cemetery	Saint Mary's	-96.04609699	39.201659
Fairfield Cemetery	Morrowville	-97.23718899	39.784359
Oakwood Cemetery	Centerville	-95.03942699	38.160456
South Cedar Cemetery	Hoyt	-95.62688499	39.328788
Muscotah Cemetery	Muscotah	-95.51257375	39.55378121
Hamlin Cemetery	Hiawatha	-95.62914637	39.92056541
Mount Calvary Cemetery	Scranton	-95.70539399	38.752564
Bethel Cemetery	Westphalia	-95.47970767	38.27328951
Corning Cemetery	Corning	-96.03166399	39.66333
Sapp Cemetery	Kickapoo	-95.02357699	39.443053
Woodlawn Cemetery	Sabetha	-95.86380299	39.790431
Green Valley Cemetery	Pleasanton	-94.70990699	38.217916
Scotts Valley Cemetery	Paola	-94.93792099	38.652233
Saint Mary's Cemetery	Louisburg	-94.67559088	38.61323824
Stringtown Cemetery	Waverly	-95.69415299	38.250576
Pleasant Hill Cemetery	Wamego	-96.28986099	39.311871
Campbell Cemetery	Blue Mound	-94.88663299	38.073365
Simmons Cemetery	Strong City	-96.58528499	38.398903
Saint Peters Cemetery	Lecompton	-95.49476237	39.01403857
Parker - Highland Cemetery	White City	-96.66858999	38.76773
Beattie Union Cemetery	Beattie	-96.42080499	39.871529
Fix Cemetery	Alma	-96.39732886	38.94931989
Wheatland Cemetery	Horton	-95.56354599	39.645023
Mount Hope Cemetery	Burlington	-95.73777399	38.178112
Colony Cemetery	Colony	-95.36278714	38.06502484
Belvue Cemetery	Belvue	-96.19445799	39.223508
Mahaska Cemetery	Mahaska	-97.34081599	39.987223
Delavan Cemetery	Herington	-96.79988104	38.65222581
Baker Cemetery	Greeley	-95.13358199	38.437239
Elk Cemetery	Elmdale	-96.78472699	38.414053
Washington Cemetery	Washington	-97.05731399	39.797132
Netawaka Cemetery	Wetmore	-95.72256019	39.60871282
Baldwin City Cemetery	Baldwin City	-95.18441599	38.761119
Alderson Cemetery	Atchison	-95.22770099	39.602377
Quisling Cemetery	Leroy	-95.58981199	38.140495
Circleville Cemetery	Circleville	-95.86657899	39.500952
King Cemetery	Oostburg	-96.52958799	39.417906
Teachout Cemetery	Gridley	-95.85729099	38.127805
Oketo Cemetery	Oketo	-96.59558399	39.957242
State of Kansas Children's Orphan Home Cemetery	Atchison	-95.11054724	39.59345914
Auburn Cemetery	Auburn	-95.83465799	38.908529
Ununda Cemetery	Robinson	-95.41479599	39.858605
Baptist Cemetery	Clyde	-97.35899599	39.668219
Bala Cemetery	Riley	-96.93419199	39.305118
Pleasant Valley Cemetery	Manhattan	-96.46493757	39.13638778
Fruitland Cemetery	Americus	-96.33122521	38.50775192
Cola Hill Cemetery	Burlington	-95.79370999	38.1327
Saint Bernard Cemetery	Wamego	-96.30721999	39.221108
Keefover Cemetery	Waterville	-96.7891121	39.727444
Elm Creek Cemetery	Marysville	-96.612661	39.743546
Brumbaugh Cemetery	Lawrence	-95.23335099	38.831934
Saint Bartholomew Cemetery	Auburn	-95.88054299	38.88667
Zion Cemetery	Linn	-97.08788499	39.689783
Buster Cemetery	Perry	-95.34469499	39.128611
Cottonwood Cemetery	Emporia	-96.2727567	38.41280249
Settle Cemetery	Louisburg	-94.642222	38.548333
Pleasant Hill Cemetery	Blue Rapids	-96.71107899	39.610251
Columbus Cemetery	Wathena	-94.9779903	39.86812474
Covenant Cemetery	Clifton	-97.34148899	39.682855
Rock Creek Church of the Brethren Cemetery	Sabetha	-95.80602083	39.9863932
Moss Springs Cemetery	Alta Vista	-96.53505099	38.884537
Corpus Christi Cemetery	Atchison	-95.23967499	39.390711
Saville Cemetery	Blue Rapids	-96.61973799	39.689722
Cummings Cemetery	Cummings	-95.24139771	39.45994724
Rosey Cemetery	Junction City	-96.7430024	38.96046444
Neill Cemetery	Effingham	-95.39442499	39.449661
Mount Calvary Cemetery	Atchison	-95.13126199	39.59629
Home Holding Cemetery	Paola	-94.88294379	38.65087997
Dunlap African American Cemetery	Council Grove	-96.35416699	38.58750999
Eureka Cemetery	Pleasanton	-94.64863299	38.204537
Iowa Point Cemetery	Highland	-95.22766599	39.915713
Riley Cemetery	Riley	-96.81301999	39.287876
Tambor Cemetery	Wathena	-94.95885799	39.799994
Saint Peters Cemetery	Horton	-95.60172699	39.724694
Saint Boniface Cemetery	Barnes	-96.90983199	39.657173
Saint Louis Cemetery	Atchison	-95.22683726	39.62413951
Badger Creek Cemetery	Emporia	-96.058604	38.405015
Block Trinity Lutheran Cemetery	Paola	-94.80861099	38.494444
Mount Calvary Cemetery	Osage City	-95.83970999	38.650842
Ford Cemetery	Seneca	-95.98592999	39.801284
Berea Cemetery	Richmond	-95.18524999	38.398074
Mission Covenant Cemetery	Axtell	-96.31563499	39.826738
Greenwood Cemetery	Belvue	-96.15433326	39.1818442
Pardee Cemetery	Cummings	-95.28639644	39.49141507
Amish Cemetery	Garnett	-95.35052199	38.262044
Fowler Cemetery	McLouth	-95.19148099	39.238243
Wheaton Cemetery	Onega	-96.31361399	39.493607
Gaskill Cemetery	Morrowville	-97.11740056	39.93007361
Topeka Cemetery	Topeka	-95.652641	39.040738
Diamond Creek Cemetery	Wilsey	-96.71389899	38.507235
Carnahan - Garrison Cemetery	Oostburg	-96.62550427	39.33552559
Swartz Cemetery	Dwight	-96.56271499	38.827693
Hiawatha Cemetery	Hiawatha	-95.52540998	39.8606715
Mount Calvary Cemetery	Perry	-95.390714	39.091486
Parker Cemetery	Parker	-94.99068999	38.315814
Central Cemetery	Pomona	-95.45204508	38.5345243
Pleasant Ridge Cemetery	Allen	-96.07407599	38.717367
Rochester Cemetery	Topeka	-95.68025899	39.104444
Yocum Cemetery	Wakarusa	-95.655421	38.884892
Springfield Cemetery	Garnett	-95.222328	38.220063
Pecenka Cemetery	Bremen	-96.80574799	39.855996
Harbaugh Cemetery	Waterville	-96.76964999	39.640135
Saint Johns Cemetery	Belvue	-96.22277399	39.15921357
Fairmont Cemetery	Blue Rapids	-96.65332599	39.685953
Saint Charles Cemetery	Troy	-95.09747199	39.768607
Sumner Cemetery	Atchison	-95.10854499	39.516218
Saint Johns Cemetery	Leroy	-95.58142199	38.169544
Sales Cemetery	Westmoreland	-96.49690099	39.375559
Crandell Cemetery	Leroy	-95.71873299	38.068523
Saint Patrick Cemetery	Potter	-95.12408098	39.46909437
Key West Cemetery	Lebo	-95.75645499	38.405338
Hillsdale Cemetery - New	Paola	-94.84823572	38.66417329
Burlingame City Cemetery	Burlingame	-95.83236257	38.73914648
Marysville Cemetery - Old	Paola	-94.88976713	38.67319279
New Hope Cemetery	Paola	-95.06489728	38.60732554
Old Grantville Cemetery	Grantville	-95.57711302	39.09492107
Lincoln Cemetery	Lebo	-95.87545999	38.417417
Horn Cemetery	Garnett	-95.23164199	38.201136
Boan Cemetery	Holton	-95.92319752	39.43483861
Shelton Cemetery	Hiawatha	-95.63980099	39.885065
Central City Cemetery	Garnett	-95.39164599	38.270854
Vassar Cemetery	Vassar	-95.619256	38.640892
Sutton Cemetery	Baldwin City	-95.27910499	38.781872
Mound Creek Cemetery	Osawatomie	-94.976141	38.396109
Barrett Cemetery	Frankfort	-96.45077799	39.660588
Saint Johns Cemetery	Hanover	-96.86694499	39.8971156
Mannen Cemetery	Paola	-95.01171799	38.573324
Kenyon Cemetery	Waterville	-96.79849699	39.685732
Pleasant Ridge Cemetery	Alta Vista	-96.33502739	38.79683799
Lane Cemetery	Lane	-95.07054899	38.441138
Mount Pleasant Cemetery	Washington	-97.10502189	39.81275794
Strahm Cemetery	Sabetha	-95.88252899	39.942614
Agnes City Cemetery	Allen	-96.28046899	38.688159
Saint Clere Cemetery	Emmett	-96.06241399	39.362911
Rock Creek Cemetery	Waverly	-95.58208399	38.43329
Saint Marys Cemetery	Junction City	-96.85250899	39.009165
Welcome Cemetery	Dwight	-96.53900399	38.941694
Spring Hill Cemetery	Horton	-95.61167099	39.602416
Cemetery Beni Israel	Eudora	-95.11258224	38.92819432
Marshall Center Cemetery	Home	-96.53933999	39.784448
Tesson Cemetery	White Cloud	-95.34128499	39.976563
Patton Cemetery	Westphalia	-95.49847599	38.296134
Oak Ridge Cemetery	Perry	-95.39043499	39.089967
Greenwood Cemetery	Council Grove	-96.50229099	38.65886
Oak Hill Cemetery	Severance	-95.25602299	39.777848
Fairview Cemetery	Junction City	-96.745473	39.061894
Alma Cemetery	Alma	-96.298607	39.01611
Holliday Cemetery	Perry	-95.338863	39.04389
Bucyrus Cemetery	Bucyrus	-94.72268559	38.72062738
Township Cemetery	Americus	-96.24194199	38.515289
Salchow Cemetery	Junction City	-96.77334099	38.935278
Saint Boniface Catholic Cemetery	Garnett	-95.2115189	38.36396483
Saint Luke Lutheran North Cemetery	Wheaton	-96.31460489	39.50420986
McLouth Cemetery	McLouth	-95.21498641	39.19328914
Littell Cemetery	Pleasanton	-94.63974099	38.135785
Lyndon Cemetery	Lyndon	-95.701096	38.62251
Centerville Cemetery	Parker	-94.996913	38.219748
Markey Cemetery	Washington	-97.04087903	39.81542376
Scotch Valley Cemetery	Seneca	-96.07012458	39.95793672
Phillips Cemetery	Reading	-96.05165899	38.557789
Farrar Cemetery	Valley Falls	-95.46352889	39.33220712
Saint Paul Cemetery	Washington	-96.97227698	39.81332887
Pleasant Hill Cemetery	Clifton	-97.303019	39.712901
Garfield Cemetery	Council Grove	-96.45921999	38.781766
Mound Cemetery	Lecompton	-95.456364	38.94265
Miller Cemetery	Cottonwood Falls	-96.49194999	38.347237
Pleasanton Cemetery	Pleasanton	-94.71729499	38.166934
Ivy Cemetery	Admire	-96.06023299	38.615368
Prall Cemetery	Hollenberg	-96.93665265	39.96067337
Louisville Cemetery	Wamego	-96.30886699	39.259923
Cedar Grove Cemetery	Mayetta	-95.656434	39.337083
Calvary Cemetery	Frankfort	-96.42689699	39.718882
Roots Cemetery	Corning	-96.04891911	39.73223899
Medina Cemetery	Perry	-95.41591666	39.08054056
High Prairie Cemetery	Cassoday	-96.48537499	38.100265
Uniontown Cemetery	Topeka	-95.93739799	39.084594
Stull Cemetery	Lecompton	-95.45392722	38.9716368
Debrick Cemetery	Paola	-94.84357299	38.475849
Spring Grove Cemetery	Valley Falls	-95.34747299	39.327221
Bemoan Cemetery	Alta Vista	-96.42694499	38.807226
Richland Cemetery	Pleasanton	-94.61294599	38.258552
Crooked Creek Cemetery	Leonardville	-96.848094	39.436678
Bethlehem Cemetery	Paxico	-96.15430499	39.037174
Vermillion Cemetery	Vermillion	-96.27671799	39.723316
Brush Creek Cemetery	Horton	-95.47053399	39.609723
Deer Creek Cemetery	Marysville	-96.676758	39.914235
Big Creek Cemetery	Burlington	-95.76711199	38.112742
Oostburg Cemetery	Oostburg	-96.61936099	39.428006
Fairbanks Cemetery	Mound City	-94.86079699	38.196693
Gridley Cemetery	Gridley	-95.87748899	38.090026
Fairview Cemetery	Alma	-96.33238999	38.991923
Saint Anthony Cemetery	Strong City	-96.55520111	38.40550075
Kaub Cemetery	Centropolis	-95.39013599	38.717137
South Cemetery	Osage City	-95.82130058	38.61872872
Immanuel Cemetery	Marysville	-96.71208999	39.893292
West Templin Cemetery	Alta Vista	-96.47033282	38.912806
Wise Cemetery	Winchester	-95.2488606	39.31084486
Mount Auburn Cemetery	Topeka	-95.649646	39.039762
Saint Patricks Cemetery	Corning	-96.02528699	39.652518
Mount Calvary Cemetery	Topeka	-95.73675747	39.05270582
Bruck Cemetery	Holton	-95.71026	39.420551
Moodyville Cemetery	Westmoreland	-96.38378599	39.443574
Paola Cemetery	Paola	-94.888416	38.570368
Hohman Cemetery	Manhattan	-96.71888199	39.348939
Pleasantview Cemetery	Garnett	-95.35075499	38.303656
Wooster Cemetery	Leroy	-95.58278199	38.067081
Clarks Creek Cemetery	Herington	-96.86667799	38.782227
Powhattan Cemetery	Powhattan	-95.62885599	39.768045
Line Cemetery	Wamego	-96.25461099	39.282369
Freeman Cemetery	Maple Hill	-96.03721299	39.032778
Osawatomie State Hospital Cemetery	Osawatomie	-94.9325	38.513333
Ramsey - Black Cemetery	Council Grove	-96.64575199	38.760509
Maple Grove Cemetery	Lawrence	-95.23191699	39.001946
Regard Cemetery	Hawesville	-96.13610899	39.515273
Wetmore Cemetery	Wetmore	-95.81157989	39.63985124
Ninety Six Cemetery	La Cygne	-94.67490399	38.347574
Saint Paul Cemetery	Morrill	-95.67790767	39.85587169
Deay Cemetery	Eudora	-95.07514199	38.854846
Hawesville Cemetery	Hawesville	-96.08291999	39.511786
Mount Carmel Cemetery	Mound City	-94.78010399	38.179094
Pleasant Hill Cemetery	Pomona	-95.40247699	38.724452
Chepstow Cemetery	Barnes	-96.90116599	39.631519
Jackson Cemetery	Wathena	-94.92469099	39.826105
Pleasant Hill Cemetery	Onega	-96.28646599	39.550685
Mount Calvary Cemetery	Reading	-95.97826885	38.52790461
Haworth Cemetery	Emporia	-96.31774916	38.38028084
Wells Cemetery	Frankfort	-96.48028899	39.663728
Curry Cemetery	Queen	-95.52386999	38.608066
Greenwood Cemetery	Blue Rapids	-96.66985099	39.651657
Saint Paul Cemetery	Linn	-97.08685499	39.685456
Westmoreland Cemetery	Westmoreland	-96.41811199	39.384188
East Mount Zion Cemetery	La Cygne	-94.64183499	38.314958
Strong Township Cemetery	Strong City	-96.52173199	38.398011
Peats Creek Cemetery	Palmer	-97.13516284	39.60990933
Whiteford Cemetery	Paola	-94.89926299	38.461868
Zion Cemetery	Olpe	-96.24744167	38.232813
Lessenden Cemetery	Osawatomie	-94.96904231	38.45819891
Saint Bedes Cemetery	Goff	-95.99627399	39.739216
Hardy Oak Cemetery	McLouth	-95.24774899	39.116667
New Lancaster Cemetery	La Cygne	-94.74294799	38.462619
Claytonville Cemetery	Hiawatha	-95.50499399	39.779387
Highland Cemetery	Highland	-95.25164299	39.855554
Charleston Cemetery	Troy	-95.03636099	39.854439
Mount Calvary Catholic Cemetery	Lawrence	-95.21525927	38.95922797
Holy Family Cemetery	Summerfield	-96.34149299	39.999413
Richland Cemetery	Lawrence	-95.26330599	38.876949
Greenfield Cemetery	Morrowville	-97.22003499	39.943893
Pleasant Hill Cemetery	Hiawatha	-95.43351745	39.94394707
Spring Valley Cemetery	Barnes	-96.85557299	39.59519035
Anderson Cemetery	Denton	-95.32119799	39.660163
Wonsevu Cemetery	Cedar Point	-96.78668699	38.154739
Maplewood Cemetery	Barnes	-96.89974399	39.734169
Sunset Cemetery	Manhattan	-96.59333699	39.181386
Pleasant Ridge Cemetery	Vassar	-95.52748099	38.649175
Monrovia Cemetery	Effingham	-95.346991	39.514926
Saint Mary's Cemetery	Hartford	-95.95057499	38.295639
Holmes Cemetery	Prescott	-94.68185699	38.087924
Doniphan Cemetery	Troy	-95.06951299	39.647627
Wilmington Cemetery	Harleysville	-95.96886999	38.745526
Bucks Grove Church Cemetery	Havensville	-96.0154068	39.46378782
Centropolis Cemetery	Ottawa	-95.35244034	38.72441698
Roselawn Cemetery	Ottawa	-95.26691799	38.568902
Diamond Springs Cemetery	Wilsey	-96.74103829	38.55479838
Barnes Cemetery	Wetmore	-95.88258799	39.69627
Cedar Creek Cemetery	Manhattan	-96.55166999	39.270552
Springhill Cemetery	Cummings	-95.20251046	39.43033513
Saints Peter and Paul Cemetery	Seneca	-96.07113638	39.84966697
Graceland Cemetery	Burlington	-95.74677599	38.171947
Adrian Cemetery	Delia	-95.97992999	39.318873
Saint Josephs Cemetery	Nortonville	-95.31911099	39.419399
Line Cemetery	Madison	-96.23847399	38.176922
Grantville Cemetery	Grantville	-95.57466899	39.095774
All Saints Cemetery	Everest	-95.45125799	39.700663
Hanover Cemetery	Hanover	-96.87058999	39.878026
Saint Johns Cemetery	White City	-96.85346899	38.809722
Valencia Cemetery	Topeka	-95.88082099	39.058611
Fairview Cemetery	Olpe	-96.09503682	38.20486295
Upper Humboldt Cemetery	Dwight	-96.61403699	38.955994
Pleasant Hill Cemetery	Berryton	-95.57581689	38.9100364
Baptist Cemetery	Garnett	-95.31377099	38.258952
Hoyt Cemetery	Hoyt	-95.73776099	39.243608
Morrill Cemetery	Morrill	-95.69325364	39.93457305
Rusco Cemetery	Clifton	-97.28017799	39.653582
Troemper Cemetery	Alma	-96.20786717	38.99957725
Lorenz Schlichter Memorial Cemetery	Leroy	-95.69217138	38.12118368
Laus Creek Cemetery	Hiawatha	-95.47053267	39.97547429
Saint Benedicts Abbey Cemetery	Atchison	-95.10987559	39.57724957
Saint Mary's Cemetery	Clifton	-97.27454599	39.615202
Soldier Cemetery	Soldier	-95.96540492	39.54172195
Memorial Lawn Cemetery	Emporia	-96.20582999	38.420291
Burton Cemetery	White City	-96.70945399	38.754256
Bellemont Cemetery	Wathena	-94.95389999	39.778584
Ashland Cemetery	Manhattan	-96.61555899	39.110276
Needham Cemetery	Lane	-95.12330399	38.470016
Peoria Cemetery	Ottawa	-95.15706199	38.600501
Horton Municipal Cemetery	Horton	-95.51288788	39.65695096
Carbondale Cemetery	Carbondale	-95.66639499	38.796104
Summerfield Cemetery	Summerfield	-96.34252199	39.999757
Goodrich Cemetery	Parker	-94.983151	38.277592
Bloomfield Cemetery	Meriden	-95.57150073	39.28505079
Halls Summit Cemetery	Waverly	-95.67304099	38.33974
Lamb - Mills Cemetery	Pleasanton	-94.67717999	38.150238
Fancy Creek Randolph Cemetery	Randolph	-96.75689399	39.514979
Glendale Cemetery	Waverly	-95.654593	38.274869
Robertson Cemetery	Denton	-95.227822	39.667686
Reiter Cemetery	Linn	-97.15324499	39.711282
Prairie Grove Cemetery	Cottonwood Falls	-96.56377799	38.374054
Wag staff Cemetery	Spring Hill	-94.79638899	38.665833
Herman Cemetery	Louisburg	-94.64769177	38.59852758
Fairview Cemetery	Onega	-96.11042099	39.435532
Emmons Cemetery	Washington	-97.00354876	39.85649307
Saint Marys Cemetery	Denton	-95.31775299	39.689722
Dean Cemetery	Pomona	-95.47811547	38.70378391
Kenyon Cemetery	Robinson	-95.39667399	39.912197
Saint Louis Cemetery	Palmer	-97.130288	39.638891
Meriden Cemetery	Meriden	-95.56025175	39.19516619
Rosendale Cemetery	Wathena	-95.01211999	39.711317
Saint Anns Catholic Cemetery	Effingham	-95.40109645	39.51858824
Oaklawn Cemetery	La Cygne	-94.76857672	38.35035847
Swede Creek Cemetery	Randolph	-96.70795699	39.536746
Sacred Heart Cemetery	Baileyville	-96.18351099	39.848707
Le Roy Cemetery	LeRoy	-95.645818	38.081972
Evergreen Mound Baxter Cemetery	Ottawa	-95.32260099	38.635647
Edinborough Cemetery	Blue Rapids	-96.544802	39.725314
Welda Cemetery	Welda	-95.29727891	38.18052487
Old County Farm Cemetery	Wamego	-96.351628	39.295847
Laclede Cemetery	Wamego	-96.22051499	39.354697
Miami Memorial Gardens Cemetery	Paola	-94.92222199	38.533056
Ashcraft Cemetery	Potter	-95.14788672	39.46940754
Granada Cemetery	Wetmore	-95.79892999	39.732265
Reading Cemetery	Reading	-95.96971299	38.52029
Williams Cemetery	Bern	-95.97444199	39.92194299
Valley View Memorial Garden	Manhattan	-96.50416799	39.194997
Mount Olive Cemetery	Emmett	-96.01556649	39.36942864
Richland Cemetery	Parker	-94.82549499	38.254105
Brantford Cemetery	Clyde	-97.36821099	39.708687
District Number 17 Cemetery	Linn	-97.05047799	39.712099
Holy Cross Cemetery	Saint Mary's	-96.047436	39.274147
Rockville Cemetery	La Cygne	-94.66457699	38.446619
Larabee Cemetery	Haddam	-97.27681711	39.89047155
Flory Cemetery	Lawrence	-95.27969599	38.853616
Mount Calvary Cemetery	Wathena	-94.95900599	39.759961
Trading Post Cemetery	Pleasanton	-94.68072057	38.25242284
Hass Cemetery	Holton	-95.811238	39.463512
Muncie Cemetery	Ottawa	-95.36898499	38.568117
Barclay Cemetery	Osage City	-95.87548399	38.569054
Rose Hill Cemetery	Axtell	-96.26708299	39.878971
Rose Hill Cemetery	Goff	-96.01319999	39.58095
Graggs Chapel Cemetery	Valley Falls	-95.55379399	39.353763
Vinland Cemetery	Baldwin City	-95.17675399	38.848205
Saint Michael's Cemetery	Axtell	-96.25751899	39.892142
McFarland Cemetery	Alma	-96.24298855	39.06452032
Eskridge Cemetery	Eskridge	-96.08498522	38.85787518
Skiddy Cemetery	Junction City	-96.80792199	38.884899
Pleasant Hill Cemetery	Hiawatha	-95.64867172	39.9430558
Wardell Cemetery	Welda	-95.35358999	38.169747
Miller Cemetery	Everest	-95.36264199	39.686481
Fairhope Cemetery	Gridley	-95.81914399	38.076377
Olive Hill Cemetery	Soldier	-95.92882599	39.462799
Lambertson Cemetery	Fairview	-95.73265777	39.84636095
Pleasant Grove Cemetery	Effingham	-95.38608499	39.478609
Humboldt Cemetery	Junction City	-96.66944899	39.000832
Calvary Cemetery	Council Grove	-96.51139199	38.656675
Riverview Cemetery	La Cygne	-94.76079199	38.299745
Isley Cemetery	Sabetha	-95.74165299	39.884445
Chippewa Hills Cemetery	Ottawa	-95.36513399	38.591506
Danceground Cemetery	Delia	-95.89693299	39.310274
Prospect Hill Cemetery	Blue Rapids	-96.66768699	39.70525
Elevation Cemetery	Topeka	-95.76175093	38.983335
Saint Aloysius Cemetery	Meriden	-95.5799029	39.18703173
Pleasant View Cemetery	Oskaloosa	-95.31662739	39.22277227
Cedar Point Cemetery	Cedar Point	-96.82577248	38.23988353
Wait Cemetery	Parker	-95.03815799	38.352692
Fowler Cemetery	Emporia	-96.10947861	38.39022224
Saint Johns Cemetery	Hanover	-96.86826999	40.001111
Stoeltzing Cemetery	Leroy	-95.60972699	38.120648
Arvonia Cemetery	Osage City	-95.89598299	38.485858
Bellegarde Cemetery	Randolph	-96.65540899	39.550696
Holy Family Cemetery	Eudora	-95.09335511	38.94386941
Prairie Home Cemetery	Topeka	-95.74721313	39.10815454
Shockley Cemetery	Axtell	-96.28612199	39.92861099
Friedens United Church of Christ Cemetery	Seneca	-96.0541088	39.99288192
Baird Cemetery	Garnett	-95.48910899	38.317823
Zion Lutheran Church Cemetery	Everest	-95.43336863	39.72893959
Saint Columkilles Cemetery	Westmoreland	-96.40821427	39.48750396
Mount Gillin Cemetery	Atchison	-95.06717499	39.459891
Mount Zion Cemetery	Lyndon	-95.61813499	38.67998
Holy Cross Cemetery	Paola	-94.848363	38.562665
Apostolic Cemetery	Gridley	-95.91271499	38.127491
Marysville Cemetery	Marysville	-96.63613099	39.854169
Blue Mound Cemetery	Blue Mound	-95.02413799	38.063364
Saint Augustine's Cemetery	Fairview	-95.78979656	39.79032102
Hart Cemetery	Hiawatha	-95.53692699	39.951947
Immanuel Lutheran Cemetery	Fairview	-95.68581899	39.856112
Vinton Cemetery	Milford	-96.840123	39.137319
Ridgeway Cemetery	Carbondale	-95.60658699	38.841114
Haddam Cemetery	Haddam	-97.30107299	39.860733
Admire Cemetery	Allen	-96.107347	38.651154
Bauer Cemetery	Tecumseh	-95.57670299	38.986463
Burdick United Methodist Cemetery	Burdick	-96.87461122	38.5664615
Powhattan Cemetery	Netawaka	-95.75998499	39.66083
Home City Cemetery	Home	-96.52065899	39.852912
Maple Grove Cemetery	Lecompton	-95.42330799	39.040556
Swedish Cemetery	Alma	-96.19656599	38.942611
Bailey Cemetery	Burlington	-95.837038	38.235665
Kennekuk Cemetery	Horton	-95.487481	39.653525
Underwood Cemetery	Perry	-95.311799	39.066435
Reed Cemetery	Louisburg	-94.70409078	38.59987005
Hart Cemetery	Nortonville	-95.348207	39.37700104
Brooklyn Cemetery	La Cygne	-94.79717599	38.304018
Baileyville Cemetery	Baileyville	-96.19758699	39.842455
Centralia Cemetery	Centralia	-96.13312999	39.734127
Saint Joseph's Catholic Cemetery	Hoyt	-95.70947799	39.260206
Mount Hope Cemetery	Williamsburg	-95.44001399	38.476425
Pleasant View Cemetery	Malvern	-95.57311599	38.506053
Baker Cemetery	Burlington	-95.82362	38.198865
Wildhorse Cemetery	McLouth	-95.19691347	39.18014959
Shawnee Center Cemetery	Wakarusa	-95.70649161	38.87796212
New Hope Cemetery	Troy	-95.01757599	39.820464
Zion Cemetery	Marysville	-96.712263	39.914308
Martin Cemetery	Highland	-95.24408799	39.900055
Half - Day Cemetery	Topeka	-95.71438339	39.15922085
Walnut Grove Cemetery	Parker	-94.87718599	38.25808
Leonardville Cemetery	Leonardville	-96.85936699	39.379967
Saint Gregorys Cemetery	Marysville	-96.62057499	39.848335
Judy Cemetery	Garnett	-95.17551699	38.309392
Clearfield Cemetery	Eudora	-95.09280832	38.82648778
East Templin Cemetery	Alta Vista	-96.46236576	38.913417
Woodlawn Cemetery	Pomona	-95.46753499	38.609925
Plum Grove Cemetery	Oskaloosa	-95.27943099	39.267278
Huff Cemetery	Westmoreland	-96.458616	39.464996
Louisburg Cemetery - Old	Louisburg	-94.68472199	38.621944
Mayetta Cemetery	Hoyt	-95.73749099	39.30313
Berg Cemetery	Westmoreland	-96.38795699	39.537071
Antioch Cemetery	Spring Hill	-94.94499999	38.716111
Taylor Cemetery	Atchison	-95.10552499	39.586663
Louisburg Cemetery - New	Louisburg	-94.68694399	38.621667
West Lawn Memorial Gardens	Topeka	-95.81572199	39.051959
Ottawa Indian Mission and Burial Ground	Ottawa	-95.20580499	38.633344
Highland Cemetery	Ottawa	-95.25183699	38.591954
Mount Jesus Cemetery	Greenleaf	-96.97446799	39.751948
Saint John's Cemetery	Williamsburg	-95.35939299	38.506263
Lynn Creek Cemetery	Berryton	-95.6402624	38.9575044
Carr Cemetery	Everest	-95.45169599	39.725858
Old Westmoreland Cemetery	Westmoreland	-96.433986	39.384243
Wellsville Cemetery	Wellsville	-95.10226799	38.717274
Greeley City Cemetery	Garnett	-95.12598085	38.37473402
Mound Cemetery	Barnes	-96.85384003	39.65361233
Walnut Hill Cemetery	Topeka	-95.85033055	39.19346201
Camp Creek Cemetery	Cummings	-95.23431355	39.52012399
Saint Lukes Cemetery	Onega	-96.25865799	39.450152
Elmdale Cemetery	Osawatomie	-94.93811899	38.50109
Saint Patricks Cemetery	Ogden	-96.72124299	39.123475
Spring Creek Cemetery	Westmoreland	-96.52752499	39.494044
Saint George Cemetery	Saint George	-96.41555499	39.202219
Quaker Cemetery	Dwight	-96.58601999	38.880345
Greenwood Cemetery	Emporia	-96.20835499	38.35443
Fairview Cemetery	Oskaloosa	-95.36774699	39.267011
Round Mound Cemetery	Cummings	-95.19108099	39.46472
Grandview Cemetery	Emporia	-96.35451999	38.384283
Sutton Cemetery	Malvern	-95.61695899	38.543106
Mission Center Cemetery	Topeka	-95.78223	39.0148948
Saint Malachys Cemetery	Beattie	-96.422932	39.870057
Matfield Green Cemetery	Cassoday	-96.55806599	38.151962
Middle Creek Cemetery	Williamsburg	-95.38155	38.495309
Denison Cemetery	Denison	-95.62796861	39.39781506
Dodder Cemetery	Overbrook	-95.44553299	38.782783
Vieux Cemetery	Wamego	-96.24650299	39.25572799
Alta Vista Cemetery	Alta Vista	-96.46466799	38.854259
Friends Cemetery	Washington	-97.161178	39.769061
Saint Josephs Catholic Cemetery	Vermillion	-96.31208412	39.6019873
Foster Cemetery	Topeka	-95.70655388	38.99429135
Saint Michaels Cemetery	Onega	-96.31500299	39.497218
Life Cemetery	Frankfort	-96.46335299	39.819904
Clear Creek Cemetery	Westmoreland	-96.35944899	39.52333
Fairview Cemetery	Home	-96.51139999	39.827284
Chalk Cemetery	Eskridge	-96.29196214	38.76771184
Pleasant View Cemetery	Clifton	-97.30803599	39.57285
Prairie View Cemetery	Waverly	-95.63635362	38.31100407
Oak Hill Cemetery	Queen	-95.53359199	38.591955
Hillsdale Cemetery - Old	Spring Hill	-94.84805599	38.665556
Mount Olive Cemetery	Troy	-95.10416399	39.768281
Saint Wenceslaus Cemetery	Blue Rapids	-96.66027999	39.566695
Griffith Cemetery	Cedar Point	-96.81216079	38.19154164
Frankfort Cemetery	Frankfort	-96.42555841	39.71114928
Fouts Cemetery	Ottawa	-95.21677314	38.57984145
Home Cemetery	Onega	-96.22197899	39.504723
Mission Creek Cemetery	Oketo	-96.464651	39.986198
Valley View Cemetery	Saint Mary's	-96.07201177	39.20540017
Oak Hill Cemetery	Lawrence	-95.21219399	38.958892
Riverside Cemetery	Waterville	-96.75500016	39.69782673
Hope Cemetery	Ottawa	-95.28775199	38.617233
Comisky Cemetery	Council Grove	-96.35378499	38.651866
Appanoose Cemetery	Overbrook	-95.46425299	38.739288
Estes Cemetery	Whiting	-95.61691199	39.53481646
Center Hill Cemetery	Burlington	-95.66433999	38.155495
Sacred Heart Cemetery	Greenleaf	-96.95252299	39.726392
Scranton Cemetery	Scranton	-95.72248399	38.770839
Dwight Cemetery	Dwight	-96.59216899	38.86344
Ontario Cemetery	Holton	-95.88835172	39.56634839
\.


--
-- TOC entry 4793 (class 0 OID 25418)
-- Dependencies: 216
-- Data for Name: haunted_places; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.haunted_places (city, description, location_name, state, longitude, latitude) FROM stdin;
Alma	The Alma Cemetery is haunted for two reasons. One is the people who are buried there and refuse to leave. Some pictures have been taken during the night up there. (It's the best time.) The pictures were unbeleivable, there were orbs and mist figures in t	Alma Cemetery	Kansas                                  	-96.2990179	39.016088
Alma	Wabaunsee High School is the Haunted by past students and teachers. Most of the students groups are those of students who never got to graduate from the high school because they died while attending it. Teachers and even students have experienced strange	Wabaunsee High School	Kansas                                  	-96.2892193	39.0187264
Arcadia	When in this church day or night you can see shadows of people things come on when they are not plugged in and the lights come on by there self	the church of Gods word	Kansas                                  	-95.4680869	37.6677732
Atchison	The local newspaper office's are said to be haunted by the ghost of an editor who died under mysterious circumstances. Several people who have been working late at night have been or heard the locked back door open and close by itself.	The Globe	Kansas                                  	-95.1167769	39.5616302
Atchison	It is said that on the stroke of midnight the terrifying screams of Molly can be heard. Molly was a beautiful young woman out with her date after prom. The next day Molly was found dead, hanging by her neck in one of the park trees down in the hallow o	Jackson Park	Kansas                                  	-95.1178018	39.5439232
Blue Rapids	Upon a hill there is a cemetery. It's unlike any other cemetery; It has no real paths leading up to it. It is an area about one half of an acre where several members of the Schroyer family were buried in the late 1800's. Today only one grave remains, the	Schroyer Cemetery	Kansas                                  	-96.6674872	39.7049369
Burlingame	There have been reports for years of a man dressed in black walks the highway and disappears.	US 56 &amp; 189th Street	Kansas                                  	-99.6343004	37.8773453
Canton	Supposedly on nights with a full moon you could see the shadow of a body hanging from a tree and hear the hoof beats.	Jones Cemetery	Kansas                                  	-97.3862683	38.3835159
Chanute	when they changed Wal-mart to a super center a man who died(1978) in the parking lot was mad. now he haunts Wal-mart. he is known to play in the children's isle. (when he's happy) but when he's mad everything get cold an the power goes out on Hallo	Wal-Mart super center	Kansas                                  	-95.450917	37.65365
Coffeyville	This is a turn of the 20th century mansion that has had more than its share of tragedy. Despite his wealth, Mr. Brown lost all of his children but one in childhood. In the basement, employees tell of hearing bowling balls striking pins where the alley us	Brown Mansion	Kansas                                  	-95.6144971	37.0199234
Coffeyville	This is one of the oldest cemeteries in Coffeyville and has many graves over 100 years old, including the graves of the fallen Dalton Gang and the town's Defenders from the gun battle of October 5, 1892 that ensued when the Dalton Gang attempted to rob t	Elmwood Cemetery	Kansas                                  	-95.6188542	37.0232568
Cummings	Round Mound Cemetery - A witch haunts this old cemetery, the wind does not blow at the cemetery even though its on top of a round hill. This place even made TIME magazine years ago as one of the most haunted places on earth. If you go there late enough y	Chautauqua County	Kansas                                  	-96.1868274	37.1280891
Derby	you can often read the tombstones, and you'll all of a sudden feel that someone is their, it is un explainable. it is also said apparitions can be seen every once in a while	Derby cemetery	Kansas                                  	-97.2628773	37.5413175
Dodge City	still stands and in use as a retirement home for old solders. The building there is 150 years old and holds many spirits and is not for the faint of heart.	Fort Dodge	Kansas                                  	-99.963396	37.7408005
Dodge City	Barn - This is a old barn at the edge of Ft. Dodge at 3:30 every morning all the light come on and all of the doors come open even the door at the very top of the barn the one they threw hay out of nobody new why this happened so the security guard did s	Ft. Dodge	Kansas                                  	-99.963396	37.7408005
Dodge City	(Now Soul Intermediate Center) - An old high school built in the 1800's. The true nature of the haunting has been lost in legend and lies, but one thing still holds true, there are ghosts in the halls in the basement of the school and the library. Severa	Old Dodge City High School	Kansas                                  	-100.0447332	37.7825488
Dodge City	Saint Mary's is an old church (no longer used) which is connected to the college. A nun was walking down the first flight of stairs near the doors and had tripped and fallen to her death. From personal experience, (the doors usually arent locked), you ca	Saint Mary's	Kansas                                  	-100.007651	37.7753807
Ellis	Lockers slamming, The toilet in the girls bathroom flushes by itself all of the time, accompanied by chills.	Ellis High School	Kansas                                  	-99.5594342	38.9288608
Ellis	In the bottom of the Railroad Museum there is an old jail cell, (used for storage.) It is said that during the flood of 58 there was still someone locked up in the cell. He drowned and died, and up to this day you can noises and see figures walk past the	Jail Cell	Kansas                                  	-99.5616172	38.9400082
Emporia	There is an old one lane bridge in the country south of Empor that a preacher and his mistress had drugged his wife and pushed her car over the side into the water below. Late at night, if you are in that area, you can here the screams of a woman and see	Bird Bridge	Kansas                                  	-96.1148706	38.3658441
Fort Irwin	the fire alarm often go off in this building. The alarm wires are no longer hooked up because the fire marshal and the fire department are tired of going and resetting the alarms.	Community Hospital	Kansas                                  	-96.7684631	39.0830205
Fort Riley	has a woman wrapped in chains that frequently haunts there.	The Artillery Parade Field	Kansas                                  	-96.7798502	39.0682635
Fort Riley	used to be the polo field is haunted by two gentleman on horseback playing Polo and they aren't exactly the most congenial of gentlemen they get upset when they are interrupted.	The Infantry Parade Field	Kansas                                  	-96.8099772	39.110058
Fort Riley	Witnesses report seeing the apparition of an old nurse/caretaker.	Main Post	Kansas                                  	-96.7806537	39.0720627
Fort Riley	There is a spot around Moon Lake that has a Chiefs Circle. If you camp any where near the circle you start seeing what looks like fire flies that are in sets of two and stay low to the ground and don't separate. If you are awake when it happens they will	Moon Lake	Kansas                                  	-96.8032837	39.074028
Fort Scott	There have been hundreds of sightings here of soldiers from the Civil War and fog-like apparitions sifting up the chimney in the officers' quarters. This fort was built in the 1800's during Bleeding Kansas and border wars with Missouri. People have also	Old Fort	Kansas                                  	-94.704733	37.8436307
Galena	There is a grave of a so-called-witch hidden in the back of a cemetery on a tall hill north of the town. People have stayed there overnight to see if it was haunted just to hear weird sounds like mumbling and sometimes see a strange figure walking around	Witch's grave	Kansas                                  	-94.6916164	37.067285
Garden City	In the small town of Garden City across from Stevens park. There are some very old apartments. Which were closed for disclosed reasons. Some believe a boy had a jealous uncle. Who was jealous of his brother because he stole his girlfriend and told their	Main Street's Brocken Home	Kansas                                  	-100.8724538	37.9703264
Greatbend	The rock - It is said that the ghost of Indians battling can be heard, Also a few years ago a man killed his wife's lover there it is said ghosts remain from this as well.	Pawnee Rock	Kansas                                  	-98.9821631	38.2723361
Hartner	it is very very haunted. In the 1st floor men's room it is always 15 to 20 degrees cooler the rest of the building and you feel as if you are being watched. In the basement there is the old morgue and you can see bloody footprints on the floor, walls	Auchenba	Kansas                                  	-98.6506283	37.0189418
Hays	In 1867, a drummer named Ephriam Polly and his wife Elizabeth, stopped at Fort Hays. While staying there, a terrible Cholera epidemic struck the fort. It is not known what happened to Ephriam, but Elizabeth Polly stayed on at the fort tirelessly nursing	Old Fort Hays	Kansas                                  	-99.341484	38.862995
Holcomb	A janitor was cleaning a bathroom when he fell, hit his head, and died. He comes once a year at midnight and rings the school bell.	Holcomb Elementary School	Kansas                                  	-100.988126	37.9876564
Hutchinson	5th Floor - Witnesses have seen and heard a ghost of a woman She seems to be all in white. Files and different items turn up missing of messed with. Also doors slamming.	City Court House	Kansas                                  	-97.9366618	38.0538773
Hutchinson	The ghost that is reputed to haunt the Hutchinson Public library is that of former librarian, Ida Day Holzapfel.	Hutchinson Public Library	Kansas                                  	-97.9324631	38.0632079
Hutchinson	late at night when you are alone you will often here doors slamming shut. the seats of the theatre will often open and shut by them selves. In 2001 a custodian reported hearing glass break. when officials investigated they found a broken fire extinguishe	fox theatre	Kansas                                  	-97.9309	38.0538
Hutchinson	The Ghost of a former priest has been seen walking the halls of this high school. He is said to be watching over the students as walks the halls. Most incidents occurred at night, and have been witnessed by faculty, and some students.	Trinity Catholic High School	Kansas                                  	-97.9028647	38.0727176
Independence	LeHunt is an old abandoned cement plant outside of Independence, now in ruins. Also onsite is an old cemetery. The ruins are said to be haunted by the ghost of a worker who died there. There is also evidence that people have gathered there to perform som	LeHunt	Kansas                                  	-95.7519248	37.2692337
Kansas city	Now on the historical registry. The story goes that the owner left his wife to go off to war during the Civil war. She received a letter toward the end of the war from him stating that he would arrive on a particular ferry and to wait for him there. Sh	Sauer castle	Kansas                                  	-94.6332489	39.0686599
Larned	Larned State Hospital's Dillon Building is haunted by former patients. Ghostly apparitions have been seen on the East 2 unit of Dillon building.	Larned State Hospital	Kansas                                  	-99.1508984	38.1714275
Lawrence	There is an original cornerstone that was used to rebuild the hotel after Quatril's Raid burned it down. On the 5th level, room 506 contains a portal spirit to the spirit world. There have been examples of flashing lights, breath marks on recently clean	Eldridge Hotel	Kansas                                  	-95.236257	38.971029
Lawrence	Indian children crying and roaming about the campus looking for their parents.	Haskell Indian school	Kansas                                  	-95.2333404	38.9377658
Lawrence	Haskell is a know sight for countless paranormal activity. The campus itself dates back to the 1800's when the US Government built Haskell Institute to help control the Native American population and assimilate them into mainstream America. Native Americ	Haskell Indian Nations University	Kansas                                  	-95.2333404	38.9377658
Lawrence	Bell Tower - From the bell tower of the church people often will feel someone watching them while walking past the building. The building has a basement that has a section that has been sealed off, for reasons unknown. Most feel that whatever is behind t	Haskell Indian Nations University	Kansas                                  	-95.2333404	38.9377658
Lawrence	Haskell auditorium - is said to house a spirit that can be seen sitting in the auditorium enjoying a show. People have also heard the sound of a little girl crying in the backstage area.	Haskell Indian Nations University	Kansas                                  	-95.2333404	38.9377658
Lawrence	Hiawatha Hall - is the oldest building on the campus and was built by the Methodist church in order to bring Christianity to the Native children. The church has been closed for decades and possession of the building has been assumed by the Government and	Haskell Indian Nations University	Kansas                                  	-95.2333404	38.9377658
Lawrence	Pocahontas Hall - is the freshmen girls dormitory and has been reported to have a haunted basement. The story goes that a girl hung her self in the basement which houses the girls laundry facilities. To this day most people will not go down in the baseme	Haskell Indian Nations University	Kansas                                  	-95.2333404	38.9377658
Lawrence	Just south of Taminend Hall - there is a small cemetery with about 70 markers of children who died from a smallpox epidemic that plagued the city of Lawrence for a good year. When you approach the cemetery don't be afraid if you start to hear the sound o	Haskell Indian Nations University	Kansas                                  	-95.2333404	38.9377658
Lawrence	Originally a church, the Lawrence Community Theatre is home to a mysterious presence. Lights habitually malfunction, set pieces and props move seemingly on their own, and many report a feeling of being watched.	The Lawrence Community Theatre	Kansas                                  	-95.3025591	38.973086
Lawrence	is said to be a gateway to the afterlife. I have been there once. It is closed off and one risks an overnight stay in the Douglas county jail if they are caught trespassing. It is an old cemetery surrounding an abandoned church. Legend holds that any obj	Stull Cemetery	Kansas                                  	-95.4538653	38.9715686
Lawrence	Sigma Nu Fraternity -  Apparently the ghost of the mistress of a former governor who lived there. She hung herself and is now sighted every once in a while. Some ghost hunters came to town and agreed that something was there. It was Ed Warren and his wif	University of Kansas	Kansas                                  	-95.2557961	38.9543439
Lawrence	Shadowy, darkly clad individual is said to roam the halls of the school in the early evening and throughout the night. This entity is reported to have been seen on many occasions by staff working late at night.Janitors have reported having seen the s	Wakaruse Elementary School	Kansas                                  	-95.3154114	38.8996225
Lindsborg	There's an old farm house in Lindsborg that no one whether it be day or night can miss the unmistakable black tarry looking mist or something that will crawl rapidly and aimlessly along the grass of the property or even in the house crawling up the walls	Old Farm near Coronado Heights	Kansas                                  	-97.7029775	38.6121276
Louisburg	A young boy who attended the school years back had committed suicide due to being bullied. It is said that he roams the halls late in the night in search of revenge.	Louisburg Middle School	Kansas                                  	-94.669091	38.6197513
Lyons	There is a lady in white who is said to haunt this salt mine and is looking for her child who got stolen and killed and her husband got killed in the old salt mine so if you go there at night you will see the lady in white.	Old Salt Mine	Kansas                                  	-98.191406	38.3331074
Manhattan	at this place you get a really bad feeling and you can see a one red eye on a full moon.	Cedar Creek Cemetery	Kansas                                  	-96.551839	39.2702737
Manhattan	Founded at Kansas State in 1957 the Gamma Phi's are haunted by an old house mom who was murdered by the cook in jealous affair. it is said that when chicken nuggets are cooked inside the house blood curdling screams can be heard. needless to say, chick	Kansas State University -Gamma Phi Beta Sorority	Kansas                                  	-96.5847249	39.1974437
Manhattan	On the k-state campus is haunted by several ghosts. nick a football player killed in a tragic accident rearranges chairs and makes loud bangings. Another ghost is that of a confederate soldier that sits in a phantom chair atop the stage.	The Purple Masque Theater	Kansas                                  	-96.5849931	39.1868562
McPherson	The Cedars is a retirement center, one of the past residents of the south unit used to walk up and down the halls with a funny little hat on, years after he died new residents of the facility who had never met him say during some nights the see a figure	The Cedars	Kansas                                  	-97.652883	38.379907
Mission	There have been sightings of a ghost haunting the choir room in the basement.	St. Michaels and All Angels Episcopal Church	Kansas                                  	-94.649981	39.008156
Montgomery	Dale apartments - Tenants describe shadow phenomenon, as well as noises from nowhere, doors slamming, screams from nowhere, etc.	Coffeyville	Kansas                                  	-95.6163665	37.0373005
Mulvane	Late at night somebody prepares pizza crust. It has been said when the store is opened in the mornings the music is playing loud. At one table it appears that somebody has eaten a full course meal.	Pizza Hut	Kansas                                  	-97.2450636	37.4881777
Ness City	In the 1960's the second floor was rented as apartments to some older women. After the passed away nobody else every lived there. To this day many people claim to hear footsteps in the hallway and when you check to see if anyone was coming there would be	Old Ness County Bank Building	Kansas                                  	-99.9052691	38.4540034
Newton	Haunted by an old lady that walks around in olden day cloths very white she is in an old gray dress when followed her she disappears.	Old Mill Plaza	Kansas                                  	-97.3458168	38.043933
Nickerson	Reports of a gaudian spirit, sometimes looking like a woman, other times a strange light or a demon. The legend is if you have famiy burried there then you will never be harmed.	Nickerson grave yard	Kansas                                  	-98.0932445	38.1583957
Olathe	This location is the former Olathe Naval Air Station, a combat pilot training center from WWII through the Vietnam era. The base was turned over to the local Johnson County Government in the Early 1970s and converted into a commercial airport, industrial	New Century Air Center	Kansas                                  	-94.8914828	38.831083
Ottawa	Footsteps go across the stage when no one is there. Voices carry on conversations just out of understanding range, usually downstairs. Chairs may move from where they are set in the mezzanine.	Municipal Auditorium	Kansas                                  	-95.2669655	38.6140464
Overland Park	Old Stanley Hotel - Old gentlemen that resided in the hotel who suffered from schizophrenia frequently saw a woman in a white dress floating over his armoire and when he would reach out to her she would disappear. Since years have passed several unexplai	Stanley	Kansas                                  	-94.6657907	38.8544521
Overland Park	The pizza parlor in the old Stonewall Inn is accepted by most as no less then haunted. The manager has reported many spooky occurrences after closing time. Every night after closing time when the manager is the only one left he locks himself in. He then	Stonewall Inn	Kansas                                  	-94.7425916	38.942684
Paola	the former head of maintenance haunts the school where he died.	Paola High School	Kansas                                  	-94.8569876	38.5753853
Park City	One of the ghost was murdered back in these woods several years ago. It was by her husband who had caught her in a deep love affair. Little did he now that she was pregnant. Now her soul can't rest. So she takes it out on the kids who travel this trail.	The Backtrail	Kansas                                  	-100.1974705	37.8993459
Parsons	An explosion in the late 1980s killed two workers, a man and a woman, and closed the plant for more than two years. When work resumed in 1990, just in time for the Persian Gulf War, part of the building was closed. To prevent sympathetic detonation in ca	Army Ammunition Plant	Kansas                                  	-95.1842132	37.2844919
Pittsburg	In the Basement you get creepy feelings. The lights in the Auditorium will sway. Pentagrams will be scratched into the ten-foot tall ceiling. Things will fly across the room. You can see a ghost of a man with dark brown curly hair in a racecar uniform. Y	Lakeside School	Kansas                                  	-94.7108598	37.4019683
Pittsburg	There is many diffrent creepy things that goes on in the Pittsburg Middle School. Many people have heard stories about the toillets flush by them selves and the doors open and close by them selves. It is said that there used to be a piano up in the very	Pittsburg Middle School	Kansas                                  	-94.7029275	37.4197003
Pittsburg	McCray Hall - Music Department -  Sightings of a lady in a black dress. The Pipe organ is heard playing at night. Sudden temperature variations. Strange movements from corners of eyes. If wanting to investigate, please contact the university to ask permi	Pittsburgh State University	Kansas                                  	-94.6915709	37.3902857
Pratt	a man parked his car on the south end of the park and committed suicide, several kids were involved in a fatal car accident on the same end of the park, and satanic worship goes on in the woods on the south end of the park. the park is haunted, and VERY	Lemon's Park	Kansas                                  	-98.7336628	37.6356457
Prairie Village	In the restaurant, there have always been several reports of cold spots, especially at one specific table where there is no draft. In the kitchen, as well as the dining room, there have been reports from diners and workers of strange occurrences: voices,	Homestead Country Club	Kansas                                  	-94.6330604	39.0118185
Salina	The belife it is haunted teacher.(the identity is not know) Witnesses have experienced many noises, footsteps, doors closing, banging, and lights going off and on by themselves. All the 3rd shift janitors carry boomboxes so they cannot hear the noises sh	Salina Central High School	Kansas                                  	-97.6014534	38.8257628
Silver Lake	Man who was killed accidentally while getting a shave is still seen inside the shop.	Barber Shop	Kansas                                  	-95.7639371	39.0450589
Stull	evil sprints and entities are said to live here.	Stull Cemetery	Kansas                                  	-95.455833	38.971111
Tescott	There was a man that ran into the trophy case. He died. He still haunts the school. The first principal of the school died and haunts the school too. There were reports of 3 hauntings there.	Tescott Grade School	Kansas                                  	-97.8796052	39.0128184
Topeka	It is said that a woman killed herself by jumping off the staircase that leads up to the top of the dome. Sometimes in the basement you can hear footsteps and her crying.	Capital Building	Kansas                                  	-95.6780594	39.0481533
Topeka	The studio has been in the basement of a home since 1942. Dorothy passed away in 1988 and all of this started then. There have been what sounds like 150 people tap dancing at 3 am. The lights go off and on by themselves. An old broken down piano plays Sw	Dorothy Thomas School of Dance	Kansas                                  	-95.70975	39.0292975
Topeka	this house is home to a poltergeist.	Gardner House	Kansas                                  	-95.698397	39.0527609
Topeka	This church is one of the most haunted places in Kansas. This church was a normal church until one-day possessed by the Devil and is now abandoned. People say they hear screams and a little girl crying. Do not go there unless you are wanting a fright.	Harrison Church	Kansas                                  	-95.6796899	39.0493435
Topeka	The Albino Lady is seen often in the cemetery	Rochester Cemetery	Kansas                                  	-95.680433	39.1021381
Topeka	at the KDHE there are said to be two different ghosts that haunt that place. George and Sam are their names and their stories are just about all other ghosts they died a horrible death and they can go till it avenged.	Kansas Department of Health and Environment	Kansas                                  	-95.6770093	39.0454931
Topeka	Three spirits have tied themselves to this building-the most famous being a police officer shot by a burglar he surprised on the roof, the other two are women inexplicably tied to an armchair in the ladies' room and loveseat in the hall at the lodge.i	North Topeka Moose Lodge	Kansas                                  	-97.6600732	39.5727867
Topeka	Former ATSF train station reportedly haunted by at least three entities: One is a woman occasionally seen dressed in early 20th century apparel on the second floor of the station, another sighting is of a former ticket-clerk who is often seen at his ti	Overland station	Kansas                                  	-95.6694451	39.0662718
Topeka	Apparitions have been seen and heard. Employees and security are all afraid to go upstairs alone. Sometimes if you go out late at night alone the lights will be on and loud music playing though no one is there and all was quiet earlier. The building is a	Topeka Country Club	Kansas                                  	-95.6928997	39.0199599
Topeka	Topeka High School is one of the oldest schools in Topeka. There are tunnels beneath the school and is supposedly built over a graveyard. There have been witnesses of ghosts and even pictures. When said to be alone, there has been conversations between t	Topeka High School	Kansas                                  	-95.6854466	39.0494774
Topeka	Very large facility, opened in 1872-closed 1997, at one time the site of Kansas' hospital for criminally insane.Orbs, apparitions in windows, voices and music heard from many of the buildings on campus.1,157 people are buried in the cemetery on sit	Topeka State Hospital	Kansas                                  	-95.696951	39.0563813
Towanda	It is said that this grocery used to be an orphanage and also a home for wayward woman. Truckers used to sleep in the basement of the building. This is one of the oldest buildings in Towanda. Many of the women that worked at the grocery have said to see	Wilburs Grocery	Kansas                                  	-97.0193417	37.938657
Ulysses	It is haunted by a little girl she walks in a certain hallway near the cafeteria	Red Rock Elementary School	Kansas                                  	-101.1726694	37.5633562
Valley Center	There are several legends about this bridge but the basis of all is that a child was drowned in the creek below and her mother is calling out to her, looking for her baby. The bridge burnt down in 1974 but you can still go to the sight today. People repo	Theorosa's Bridge	Kansas                                  	-97.374042	37.883106
Wamego	Reports of lights turning on and off in the basement, and on the main theater floor, props mysteriously move from place to place sounds of moaning and climbing of stairs in utter silence. One report says the fire alarm mysteriously went off with no one a	Columbian Theater	Kansas                                  	-96.3054547	39.2029622
Wamego	Reports of David White's ghost haunting the carnival.	Wamego's alleys	Kansas                                  	-96.305245	39.199736
Wichita	when the Bel Aire water tower was being built a man snuck into the construction site and climbed the tower, he slipped and fell inside falling a horrible 183 feet to his death, when workers discovered he fell, they would have had to taken the tower apart	Bel Aire	Kansas                                  	-97.2598913	37.7708346
Wichita	Reports of lights flickering on and off only in the rooms not in the hallway. Within seconds of leaving a room furniture would be rearranged. The doors while they shake violently only to find no one on the other side.	The Broadview Hotel in Old Town	Kansas                                  	-97.342446	37.686398
Wichita	it is said that locker 303 is haunted by a little girl who got raped and killed in the auditorium, then got stuffed in the locker. if you go down that hallway by yourself, people say that you can smell her deceased body from the locker. it is also said t	Brooks Middle School	Kansas                                  	-97.2914214	37.7350239
Wichita	for almost 150 years ghost hunters and curious people have traveled to an old crumbling bridge near Wichita known to be haunted by restless spirit of an agonized mother desperately seeking her murdered baby. the restless spirits of many of dead continue	Jesters Creek/Theorosas Bridge	Kansas                                  	-97.374042	37.883106
Wichita	People have been known to hear strange sounds while performing maintenance on the aircraft, and lights going on and off without any explanation. They say on Halloween night if it is foggy out, a WW2 aircraft with appear to land on the runway then disappe	McConnell Airforce Base	Kansas                                  	-97.2469636	37.6410754
Wichita	Amateur ghost hunters claim to have captured a child's voice and capture anomalies on film.	Rest Haven Cemetery	Kansas                                  	-97.4787686	37.6646137
Wichita	There's a lady/girl that walks around the hall ways after dark. She makes the locks of the lockers clank, and bounce against them.	Robinson Middle School	Kansas                                  	-97.2796172	37.691072
Wichita	Many students have complained of mysterious footsteps and unknown knocking on doors, and closing and shutting of doors, televisions turning on by themselves. gray dress when followed her she disappears.	Wichita State University	Kansas                                  	-97.2928693	37.7193933
Wichita	Wilner Auditorium -  several accounts of voices, doors opening and closing, and lights flickering have been noticed by students. The ghost is believed to be that of building namesake.	Wichita State University	Kansas                                  	-97.2928693	37.7193933
\.


--
-- TOC entry 4794 (class 0 OID 25423)
-- Dependencies: 217
-- Data for Name: historical_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.historical_sites (place_name, city, longitude, latitude, state) FROM stdin;
Four Horsemen of the Lines Marker	Horton	39.6711021	-95.5270499	Kansas                                  
Four Horsemen of the Lines Marker	Horton	39.6711021	-95.5270499	Kansas                                  
1139 Steam Engine	Dodge City	37.7530206	-100.022025	Kansas                                  
1139 Steam Engine	Dodge City	37.7530206	-100.022025	Kansas                                  
1139 Steam Engine	Dodge City	37.7530206	-100.022025	Kansas                                  
1872 Gernon House	Russell	38.8934628	-98.8587858	Kansas                                  
1872 Gernon House	Russell	38.8934628	-98.8587858	Kansas                                  
1872 Gernon House	Russell	38.8934628	-98.8587858	Kansas                                  
1872 Gernon House	Russell	38.8934628	-98.8587858	Kansas                                  
1886 Stage Coach Mile Marker	Ellsworth	38.7462563	-98.262562	Kansas                                  
1886 Stage Coach Mile Marker	Ellsworth	38.7462563	-98.262562	Kansas                                  
1886 Stage Coach Mile Marker	Ellsworth	38.7462563	-98.262562	Kansas                                  
1886 Stage Coach Mile Marker	Ellsworth	38.7462563	-98.262562	Kansas                                  
1886 Stage Coach Mile Marker	Ellsworth	38.7462563	-98.262562	Kansas                                  
1889 McInteer Villa	Atchison	39.5632838	-95.1334962	Kansas                                  
1889 McInteer Villa	Atchison	39.5632838	-95.1334962	Kansas                                  
1889 McInteer Villa	Atchison	39.5632838	-95.1334962	Kansas                                  
1889 McInteer Villa	Atchison	39.5632838	-95.1334962	Kansas                                  
1907 Girl Scout Little House	Ashland	37.1908147	-99.7716576	Kansas                                  
1907 Girl Scout Little House	Ashland	37.1908147	-99.7716576	Kansas                                  
1907 Girl Scout Little House	Ashland	37.1908147	-99.7716576	Kansas                                  
A Day On The Trail Historical Marker	Overland Park	38.9840857	-94.6718358	Kansas                                  
Achenbach Memorial Park	Hardtner	37.0179138	-98.6498183	Kansas                                  
Albany Historical Society	Sabetha	39.9362486	-95.797851	Kansas                                  
Albany Historical Society	Sabetha	39.9362486	-95.797851	Kansas                                  
Albany Historical Society	Sabetha	39.9362486	-95.797851	Kansas                                  
Allegawaho Memorial Heritage Park	Council Grove	38.6257382	-96.4315409	Kansas                                  
Allegawaho Memorial Heritage Park	Council Grove	38.6257382	-96.4315409	Kansas                                  
Allegawaho Memorial Heritage Park	Council Grove	38.6257382	-96.4315409	Kansas                                  
Allegawaho Memorial Heritage Park	Council Grove	38.6257382	-96.4315409	Kansas                                  
Allegawaho Memorial Heritage Park	Council Grove	38.6257382	-96.4315409	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Allen County Historical Society	Iola	37.9215804	-95.4057539	Kansas                                  
Altoona Mill Falls	Altoona	37.5228121	-95.6651992	Kansas                                  
Altoona Mill Falls	Altoona	37.5228121	-95.6651992	Kansas                                  
Altoona Mill Falls	Altoona	37.5228121	-95.6651992	Kansas                                  
Altoona Mill Falls	Altoona	37.5228121	-95.6651992	Kansas                                  
Altoona Mill Falls	Altoona	37.5228121	-95.6651992	Kansas                                  
Altoona Mill Falls	Altoona	37.5228121	-95.6651992	Kansas                                  
Altoona Mill Falls	Altoona	37.5228121	-95.6651992	Kansas                                  
Amelia Earhart Memorial Statue	Atchison	39.5618651	-95.1184219	Kansas                                  
Amelia Earhart One Acre Earth Portrait	Atchison	39.5378136	-95.1449691	Kansas                                  
Amelia Park Bridge	Lincolnville	38.4462421	-96.9660795	Kansas                                  
Amelia Park Bridge	Lincolnville	38.4462421	-96.9660795	Kansas                                  
Amelia Park Bridge	Lincolnville	38.4462421	-96.9660795	Kansas                                  
Amos H. Boultinghouse Homestead	Osborne	39.4448404	-98.8416056	Kansas                                  
Amos H. Boultinghouse Homestead	Osborne	39.4448404	-98.8416056	Kansas                                  
Amos H. Boultinghouse Homestead	Osborne	39.4448404	-98.8416056	Kansas                                  
Amos H. Boultinghouse Homestead	Osborne	39.4448404	-98.8416056	Kansas                                  
Amphitheater at Memorial Peace Park	Medicine Lodge	37.271854	-98.5523587	Kansas                                  
Amphitheater at Memorial Peace Park	Medicine Lodge	37.271854	-98.5523587	Kansas                                  
Amphitheater at Memorial Peace Park	Medicine Lodge	37.271854	-98.5523587	Kansas                                  
Amphitheater at Memorial Peace Park	Medicine Lodge	37.271854	-98.5523587	Kansas                                  
Anderson County Historical Society Museum	Garnett	38.2784359	-95.2487028	Kansas                                  
Anderson County Historical Society Museum	Garnett	38.2784359	-95.2487028	Kansas                                  
Anderson County Historical Society Museum	Garnett	38.2784359	-95.2487028	Kansas                                  
Anderson County Historical Society Museum	Garnett	38.2784359	-95.2487028	Kansas                                  
Anderson's Broom Factory	Salina	38.8431362	-97.6035567	Kansas                                  
Arthur Capper Memorial	Garnett	38.2798604	-95.2361546	Kansas                                  
Arthur Capper Memorial	Garnett	38.2798604	-95.2361546	Kansas                                  
Arthur Capper Memorial	Garnett	38.2798604	-95.2361546	Kansas                                  
Arthur Capper Memorial	Garnett	38.2798604	-95.2361546	Kansas                                  
Arthur Capper Memorial	Garnett	38.2798604	-95.2361546	Kansas                                  
Arthur Capper Memorial	Garnett	38.2798604	-95.2361546	Kansas                                  
Arvonia School House	Lebo	38.4783058	-95.8708093	Kansas                                  
Arvonia School House	Lebo	38.4783058	-95.8708093	Kansas                                  
Asylum Bridge	Osawatomie	38.5051635	-94.941989	Kansas                                  
Asylum Bridge	Osawatomie	38.5051635	-94.941989	Kansas                                  
Asylum Bridge	Osawatomie	38.5051635	-94.941989	Kansas                                  
Asylum Bridge	Osawatomie	38.5051635	-94.941989	Kansas                                  
Atchison County Historical Society	Atchison	39.5599814	-95.1272359	Kansas                                  
Atchison County Historical Society	Atchison	39.5599814	-95.1272359	Kansas                                  
Atchison County Historical Society	Atchison	39.5599814	-95.1272359	Kansas                                  
Atchison County Historical Society	Atchison	39.5599814	-95.1272359	Kansas                                  
Atchison County Historical Society	Atchison	39.5599814	-95.1272359	Kansas                                  
Atchison County Historical Society	Atchison	39.5599814	-95.1272359	Kansas                                  
Augusta Historical Museum	Augusta	37.6739215	-96.9791917	Kansas                                  
Augusta Historical Museum	Augusta	37.6739215	-96.9791917	Kansas                                  
Augusta Historical Museum	Augusta	37.6739215	-96.9791917	Kansas                                  
Augusta Historical Museum	Augusta	37.6739215	-96.9791917	Kansas                                  
Augusta Historical Museum	Augusta	37.6739215	-96.9791917	Kansas                                  
B-29 Memorial Plaza	Great Bend	38.3472756	-98.8498471	Kansas                                  
B-29 Memorial Plaza	Great Bend	38.3472756	-98.8498471	Kansas                                  
B-29 Memorial Plaza	Great Bend	38.3472756	-98.8498471	Kansas                                  
B-29 Memorial Plaza	Great Bend	38.3472756	-98.8498471	Kansas                                  
B-29 Museum	Pratt	37.6996544	-98.741938	Kansas                                  
B-29 Museum	Pratt	37.6996544	-98.741938	Kansas                                  
B-29 Museum	Pratt	37.6996544	-98.741938	Kansas                                  
Baker Bridge (Fishing Bridge)	Valley Falls	39.3403125	-95.4481875	Kansas                                  
Barbed Wire Museum	La Crosse	38.5246153	-99.311587	Kansas                                  
Barbed Wire Museum	La Crosse	38.5246153	-99.311587	Kansas                                  
Barbed Wire Museum	La Crosse	38.5246153	-99.311587	Kansas                                  
Barbed Wire Museum	La Crosse	38.5246153	-99.311587	Kansas                                  
Barbed Wire Museum	La Crosse	38.5246153	-99.311587	Kansas                                  
Barbed Wire Museum	La Crosse	38.5246153	-99.311587	Kansas                                  
Barber County Heritage Center	Medicine Lodge	37.2763041	-98.5492987	Kansas                                  
Barber County Heritage Center	Medicine Lodge	37.2763041	-98.5492987	Kansas                                  
Barber County Heritage Center	Medicine Lodge	37.2763041	-98.5492987	Kansas                                  
Barton County Historical Society	Great Bend	38.3486362	-98.7659099	Kansas                                  
Barton County Historical Society	Great Bend	38.3486362	-98.7659099	Kansas                                  
Barton County Historical Society	Great Bend	38.3486362	-98.7659099	Kansas                                  
Barton County Historical Society	Great Bend	38.3486362	-98.7659099	Kansas                                  
Barton County Historical Society	Great Bend	38.3486362	-98.7659099	Kansas                                  
Barton County Historical Society	Great Bend	38.3486362	-98.7659099	Kansas                                  
Basehor Historical Museum Society	Basehor	39.1395137	-94.9385844	Kansas                                  
Bateham	Wakefield	39.1476001	-97.0916953	Kansas                                  
Bateham	Wakefield	39.1476001	-97.0916953	Kansas                                  
Battle of Fort Titus	Lecompton	39.044316	-95.3913306	Kansas                                  
Battle of Punished Woman's Fork National Historic Site	Scott City	38.6435538	-100.9279405	Kansas                                  
Battle of Punished Woman's Fork National Historic Site	Scott City	38.6435538	-100.9279405	Kansas                                  
Battle of Punished Woman's Fork National Historic Site	Scott City	38.6435538	-100.9279405	Kansas                                  
Battle of Punished Woman's Fork National Historic Site	Scott City	38.6435538	-100.9279405	Kansas                                  
Battle of Punished Woman's Fork National Historic Site	Scott City	38.6435538	-100.9279405	Kansas                                  
Battlefield Cemetery	Pleasanton	38.1221656	-94.7233876	Kansas                                  
Baxter Springs Heritage Center & Museum	Baxter Springs	37.0280556	-94.7333333	Kansas                                  
Bellwether Barn	Scott City	38.6308898	-100.9140625	Kansas                                  
Benson Museum	Howard	37.4681597	-96.2634047	Kansas                                  
Big Basin Prairie Preserve Wildlife Area	Minneola	37.2396284	-100.0004651	Kansas                                  
Big Basin Prairie Preserve Wildlife Area	Minneola	37.2396284	-100.0004651	Kansas                                  
Big Ed's	Bird City	39.7497704	-101.5332395	Kansas                                  
Big Orange Caboose	Overland Park	38.9213806	-94.7316055	Kansas                                  
Big Well Museum	Greensburg	37.603412	-99.2944379	Kansas                                  
Big Well Museum	Greensburg	37.603412	-99.2944379	Kansas                                  
Big Well Museum	Greensburg	37.603412	-99.2944379	Kansas                                  
Big Well Museum	Greensburg	37.603412	-99.2944379	Kansas                                  
Big Well Museum	Greensburg	37.603412	-99.2944379	Kansas                                  
Black Jack Battlefield	Wellsville	38.7622179	-95.1329633	Kansas                                  
Block House	Fort Scott	37.8431913	-94.7065805	Kansas                                  
Blue Rapids Museum	Blue Rapids	39.6812124	-96.658911	Kansas                                  
Blue Rapids Museum	Blue Rapids	39.6812124	-96.658911	Kansas                                  
Bluestem Pasture Region	Matfield Green	38.094572	-96.5799591	Kansas                                  
Bluestem Pasture Region	Matfield Green	38.094572	-96.5799591	Kansas                                  
Bob Dole's Childhood Home	Russell	38.8957563	-98.8608065	Kansas                                  
Bob Dole's Childhood Home	Russell	38.8957563	-98.8608065	Kansas                                  
Bob Dole's Childhood Home	Russell	38.8957563	-98.8608065	Kansas                                  
Bob Dole's Childhood Home	Russell	38.8957563	-98.8608065	Kansas                                  
Bohemian Hall	Glasco	39.2630639	-97.9111585	Kansas                                  
Bohemian Hall	Glasco	39.2630639	-97.9111585	Kansas                                  
Bohemian Hall	Glasco	39.2630639	-97.9111585	Kansas                                  
Bohemian Hall	Glasco	39.2630639	-97.9111585	Kansas                                  
Boot Hill Cemetery	Hays	38.8784129	-99.3278616	Kansas                                  
Boot Hill Cemetery	Hays	38.8784129	-99.3278616	Kansas                                  
Boot Hill Museum	Dodge City	37.7538033	-100.0217447	Kansas                                  
Boot Hill Museum	Dodge City	37.7538033	-100.0217447	Kansas                                  
Boot Hill Museum	Dodge City	37.7538033	-100.0217447	Kansas                                  
Boyd's Ranch Historical Marker	Larned	38.1732144	-99.1600355	Kansas                                  
Boyd's Ranch Historical Marker	Larned	38.1732144	-99.1600355	Kansas                                  
Boyd's Ranch Historical Marker	Larned	38.1732144	-99.1600355	Kansas                                  
Boyd's Ranch Historical Marker	Larned	38.1732144	-99.1600355	Kansas                                  
Boyd's Ranch Historical Marker	Larned	38.1732144	-99.1600355	Kansas                                  
Brown County Historical Society - Ag Museum and Windmill Lane	Hiawatha	39.8481521	-95.5219182	Kansas                                  
Brown County Historical Society - Ag Museum and Windmill Lane	Hiawatha	39.8481521	-95.5219182	Kansas                                  
Brown Mansion	Coffeyville	37.0199708	-95.6144994	Kansas                                  
Brown Mansion	Coffeyville	37.0199708	-95.6144994	Kansas                                  
Buffalo Bill Cultural Center	Oakley	39.1269748	-100.8698706	Kansas                                  
Buffalo Bill Cultural Center	Oakley	39.1269748	-100.8698706	Kansas                                  
Buffalo Bill Cultural Center	Oakley	39.1269748	-100.8698706	Kansas                                  
Buffalo Bill's Well on the Santa Fe Trail	Lyons	38.3338561	-98.2756556	Kansas                                  
Buffalo Bill's Well on the Santa Fe Trail	Lyons	38.3338561	-98.2756556	Kansas                                  
Buffalo Bill's Well on the Santa Fe Trail	Lyons	38.3338561	-98.2756556	Kansas                                  
Buffalo Bill's Well on the Santa Fe Trail	Lyons	38.3338561	-98.2756556	Kansas                                  
Buffalo Bill's Well on the Santa Fe Trail	Lyons	38.3338561	-98.2756556	Kansas                                  
Burdett Historical Marker	Burdett	38.1889421	-99.5294439	Kansas                                  
Burdett Historical Marker	Burdett	38.1889421	-99.5294439	Kansas                                  
Burdett Historical Marker	Burdett	38.1889421	-99.5294439	Kansas                                  
Burdett Historical Marker	Burdett	38.1889421	-99.5294439	Kansas                                  
Butcher Falls	Sedan	37.1472893	-96.2682028	Kansas                                  
Butcher Falls	Sedan	37.1472893	-96.2682028	Kansas                                  
Butcher Falls	Sedan	37.1472893	-96.2682028	Kansas                                  
Butcher Falls	Sedan	37.1472893	-96.2682028	Kansas                                  
Butterfield Overland Despatch Trail Marker	Grinnell	38.7890678	-100.7629312	Kansas                                  
Butterfield Overland Despatch Trail Marker	Grinnell	38.7890678	-100.7629312	Kansas                                  
Butterfield Overland Despatch Trail Marker	Grinnell	38.7890678	-100.7629312	Kansas                                  
Butterfield Overland Despatch Trail Marker	Grinnell	38.7890678	-100.7629312	Kansas                                  
Butterfield Overland Trail Marker	Winona	38.7995829	-100.8549158	Kansas                                  
Butterfield Overland Trail Marker	Winona	38.7995829	-100.8549158	Kansas                                  
Butterfield Overland Trail Marker	Winona	38.7995829	-100.8549158	Kansas                                  
Butterfield Overland Trail Marker	Winona	38.7995829	-100.8549158	Kansas                                  
Butterfield Overland Trail Marker	Winona	38.7995829	-100.8549158	Kansas                                  
Butterfield Trail Museum	Russell Springs	38.9123597	-101.1804207	Kansas                                  
Butterfield Trail Museum	Russell Springs	38.9123597	-101.1804207	Kansas                                  
Butterfield Trail Museum	Russell Springs	38.9123597	-101.1804207	Kansas                                  
Butterfield Trail Museum	Russell Springs	38.9123597	-101.1804207	Kansas                                  
Butterfield Trail Museum	Russell Springs	38.9123597	-101.1804207	Kansas                                  
Caldwell Historical Museum	Caldwell	37.032243	-97.6070967	Kansas                                  
Caldwell Historical Museum	Caldwell	37.032243	-97.6070967	Kansas                                  
Cameron's Colonial	Atwood	39.8096376	-101.039919	Kansas                                  
Cameron's Colonial	Atwood	39.8096376	-101.039919	Kansas                                  
Caney Valley Historical Society & Museum Complex	Caney	37.0117096	-95.9379711	Kansas                                  
Caney Valley Historical Society & Museum Complex	Caney	37.0117096	-95.9379711	Kansas                                  
Cannonball Stage Line Highway	Greensburg	37.6085445	-99.2754664	Kansas                                  
Cannonball Stage Line Highway	Greensburg	37.6085445	-99.2754664	Kansas                                  
Cannonball Stage Line Highway	Greensburg	37.6085445	-99.2754664	Kansas                                  
Cannonball Stage Line Highway	Greensburg	37.6085445	-99.2754664	Kansas                                  
Cannonball Stage Line Highway	Greensburg	37.6085445	-99.2754664	Kansas                                  
Cannonball Stage Line Highway	Greensburg	37.6085445	-99.2754664	Kansas                                  
Carnahan Church	Olsburg	39.3366633	-96.6261172	Kansas                                  
Carnahan Church	Olsburg	39.3366633	-96.6261172	Kansas                                  
Carnahan Church	Olsburg	39.3366633	-96.6261172	Kansas                                  
Carnival Heritage Center	Kinsley	37.9225727	-99.4119149	Kansas                                  
Carnival Heritage Center	Kinsley	37.9225727	-99.4119149	Kansas                                  
Carnival Heritage Center	Kinsley	37.9225727	-99.4119149	Kansas                                  
Carry Nation Home	Medicine Lodge	37.2756651	-98.5820087	Kansas                                  
Carry Nation Home	Medicine Lodge	37.2756651	-98.5820087	Kansas                                  
Carry Nation Home	Medicine Lodge	37.2756651	-98.5820087	Kansas                                  
Carry Nation Home	Medicine Lodge	37.2756651	-98.5820087	Kansas                                  
Castle Rock	Larrabee	38.861122	-100.169852	Kansas                                  
Castle Rock Badlands	Quinter	38.8583328	-100.1715166	Kansas                                  
Castle Rock Badlands	Quinter	38.8583328	-100.1715166	Kansas                                  
Castle Rock Badlands	Quinter	38.8583328	-100.1715166	Kansas                                  
Castle Rock Badlands	Quinter	38.8583328	-100.1715166	Kansas                                  
Catholic Church of the Immaculate Heart of Mary	Spearville	37.7851663	-99.6417543	Kansas                                  
Cato Historic Stone School	Arcadia	37.6668637	-94.7413278	Kansas                                  
Cato Historic Stone School	Arcadia	37.6668637	-94.7413278	Kansas                                  
Cedar Bluff State Park- Bluffton Area	Ellis	38.8113556	-99.7325435	Kansas                                  
Cedar Depot museum	Cedar	39.6568983	-98.9401802	Kansas                                  
Cedar Depot museum	Cedar	39.6568983	-98.9401802	Kansas                                  
Cedar Depot museum	Cedar	39.6568983	-98.9401802	Kansas                                  
Cedar Point Mill	Cedar Point	38.2616658	-96.8197803	Kansas                                  
Center of Wichita	Wichita	37.6860019	-97.3381779	Kansas                                  
Center of Wichita	Wichita	37.6860019	-97.3381779	Kansas                                  
Center of Wichita	Wichita	37.6860019	-97.3381779	Kansas                                  
Center of Wichita	Wichita	37.6860019	-97.3381779	Kansas                                  
Center of Wichita	Wichita	37.6860019	-97.3381779	Kansas                                  
Chase County Historical Society & Museum	Cottonwood Falls	38.3718966	-96.5418717	Kansas                                  
Chase County Historical Society & Museum	Cottonwood Falls	38.3718966	-96.5418717	Kansas                                  
Chase County Historical Society & Museum	Cottonwood Falls	38.3718966	-96.5418717	Kansas                                  
Cherry Creek Encampment	Wheeler	39.7866695	-101.8391888	Kansas                                  
Cherry Creek Encampment	Wheeler	39.7866695	-101.8391888	Kansas                                  
Cherryvale Historical Museum	Cherryvale	37.2671827	-95.5499421	Kansas                                  
Cherryvale Historical Museum	Cherryvale	37.2671827	-95.5499421	Kansas                                  
Cherryvale Historical Museum	Cherryvale	37.2671827	-95.5499421	Kansas                                  
Cherryvale Historical Museum	Cherryvale	37.2671827	-95.5499421	Kansas                                  
Chimney Sweep	McPherson	38.3116435	-97.6142778	Kansas                                  
Chimney Sweep	McPherson	38.3116435	-97.6142778	Kansas                                  
Chimney Sweep	McPherson	38.3116435	-97.6142778	Kansas                                  
Chisholm Trail Marker	Wichita	37.6854689	-97.344638	Kansas                                  
Chisholm Trail Marker	Wichita	37.6854689	-97.344638	Kansas                                  
Chisholm Trail Marker	Wichita	37.6854689	-97.344638	Kansas                                  
Chisholm Trail Marker	Wichita	37.6854689	-97.344638	Kansas                                  
Chisolm Trail Crossing Santa Fe Trail	Canton	38.3770911	-97.3718299	Kansas                                  
Chisolm Trail Crossing Santa Fe Trail	Canton	38.3770911	-97.3718299	Kansas                                  
Chisolm Trail Crossing Santa Fe Trail	Canton	38.3770911	-97.3718299	Kansas                                  
Christ Pilot Me Hill	Bazine	38.4531245	-99.6386894	Kansas                                  
Christ Pilot Me Hill	Bazine	38.4531245	-99.6386894	Kansas                                  
Chrysler Boyhood Home and Museum	Ellis	38.9365551	-99.5609397	Kansas                                  
Chrysler Boyhood Home and Museum	Ellis	38.9365551	-99.5609397	Kansas                                  
Chrysler Boyhood Home and Museum	Ellis	38.9365551	-99.5609397	Kansas                                  
Cimarron Crossing Park	Cimarron	37.7993155	-100.3522963	Kansas                                  
City of Marion Historical Museum	Marion	38.3482017	-97.0167117	Kansas                                  
City of Smith Center	Smith Center	39.776567	-98.7870891	Kansas                                  
Clay County Museum	Clay Center	39.3761339	-97.1257569	Kansas                                  
Clay County Museum	Clay Center	39.3761339	-97.1257569	Kansas                                  
Clint Lightner Field	Garden City	37.960144	-100.866711	Kansas                                  
Clint Lightner Field	Garden City	37.960144	-100.866711	Kansas                                  
Clint Lightner Field	Garden City	37.960144	-100.866711	Kansas                                  
Clint Lightner Field	Garden City	37.960144	-100.866711	Kansas                                  
Cloud County Historical Museum	Concordia	39.5706754	-97.6588463	Kansas                                  
Cloud County Historical Museum	Concordia	39.5706754	-97.6588463	Kansas                                  
Cloud County Historical Museum	Concordia	39.5706754	-97.6588463	Kansas                                  
Cloud County Historical Museum	Concordia	39.5706754	-97.6588463	Kansas                                  
Cloud County Historical Museum	Concordia	39.5706754	-97.6588463	Kansas                                  
Cloud County Historical Museum	Concordia	39.5706754	-97.6588463	Kansas                                  
Cloud County Historical Museum	Concordia	39.5706754	-97.6588463	Kansas                                  
Coffey County Historical Museum	Burlington	38.194431	-95.749326	Kansas                                  
Coffey County Historical Museum	Burlington	38.194431	-95.749326	Kansas                                  
Coffey County Historical Museum	Burlington	38.194431	-95.749326	Kansas                                  
Coffey County Historical Museum	Burlington	38.194431	-95.749326	Kansas                                  
Coffey County Historical Museum	Burlington	38.194431	-95.749326	Kansas                                  
Coffey County Historical Museum	Burlington	38.194431	-95.749326	Kansas                                  
Coffey County Historical Museum	Burlington	38.194431	-95.749326	Kansas                                  
Coldwater City Park	Coldwater	37.2686636	-99.3306461	Kansas                                  
Coldwater City Park	Coldwater	37.2686636	-99.3306461	Kansas                                  
Concordia, KS, 1st Santa Fe Depot	Concordia	39.5741534	-97.6600436	Kansas                                  
Concordia, KS, 1st Santa Fe Depot	Concordia	39.5741534	-97.6600436	Kansas                                  
Conestoga Trailhead	Richfield	37.201023	-101.719629	Kansas                                  
Conestoga Trailhead	Richfield	37.201023	-101.719629	Kansas                                  
Conestoga Trailhead	Richfield	37.201023	-101.719629	Kansas                                  
Conestoga Trailhead	Richfield	37.201023	-101.719629	Kansas                                  
Constitution Hall State Historic Site	Lecompton	39.0454091	-95.3947322	Kansas                                  
Constitution Hall State Historic Site	Lecompton	39.0454091	-95.3947322	Kansas                                  
Constitution Hall State Historic Site	Lecompton	39.0454091	-95.3947322	Kansas                                  
Constitution Hall State Historic Site	Lecompton	39.0454091	-95.3947322	Kansas                                  
Constitution Hall State Historic Site	Lecompton	39.0454091	-95.3947322	Kansas                                  
Conway Springs City Park	Conway Springs	37.3903432	-97.6457404	Kansas                                  
Cooper Barn	Colby	39.3692548	-101.0438679	Kansas                                  
Cooper Barn	Colby	39.3692548	-101.0438679	Kansas                                  
Cooper Barn	Colby	39.3692548	-101.0438679	Kansas                                  
Coronado Cross	Dodge City	37.725763	-99.9125981	Kansas                                  
Coronado Cross	Dodge City	37.725763	-99.9125981	Kansas                                  
Coronado Cross	Dodge City	37.725763	-99.9125981	Kansas                                  
Coronado Heights Castle	Falun	38.6129915	-97.7032171	Kansas                                  
Coronado Heights Castle	Falun	38.6129915	-97.7032171	Kansas                                  
Coronado Heights Castle	Falun	38.6129915	-97.7032171	Kansas                                  
Coronado Quivira Museum	Lyons	38.3456946	-98.2036586	Kansas                                  
Coronado Quivira Museum	Lyons	38.3456946	-98.2036586	Kansas                                  
Cottonwood Ranch State Historic Site	Studley	39.356305	-100.173178	Kansas                                  
Cottonwood Ranch State Historic Site	Studley	39.356305	-100.173178	Kansas                                  
Cottonwood Ranch State Historic Site	Studley	39.356305	-100.173178	Kansas                                  
Cottonwood Ranch State Historic Site	Studley	39.356305	-100.173178	Kansas                                  
Cottonwood Ranch State Historic Site	Studley	39.356305	-100.173178	Kansas                                  
Cottonwood Ranch State Historic Site	Studley	39.356305	-100.173178	Kansas                                  
Council Oak	Council Grove	38.6617658	-96.4846454	Kansas                                  
Country School Museum	Caldwell	37.115486	-97.6168141	Kansas                                  
Cousin Eddies	Coolidge	38.0410388	-102.0112382	Kansas                                  
Cousin Eddies	Coolidge	38.0410388	-102.0112382	Kansas                                  
Covered Rail Bridge New Albany KS	Fredonia	37.5822417	-95.9561293	Kansas                                  
Covered Rail Bridge New Albany KS	Fredonia	37.5822417	-95.9561293	Kansas                                  
Covered Rail Bridge New Albany KS	Fredonia	37.5822417	-95.9561293	Kansas                                  
Covered Rail Bridge New Albany KS	Fredonia	37.5822417	-95.9561293	Kansas                                  
Covered Rail Bridge New Albany KS	Fredonia	37.5822417	-95.9561293	Kansas                                  
Covered Rail Bridge New Albany KS	Fredonia	37.5822417	-95.9561293	Kansas                                  
Cowley County Historical Society Museum (CCHSM)	Winfield	37.2386917	-97.0013309	Kansas                                  
Cowley County Historical Society Museum (CCHSM)	Winfield	37.2386917	-97.0013309	Kansas                                  
Crab Creek Bridge	Dexter	37.141268	-96.74509	Kansas                                  
Crab Creek Bridge	Dexter	37.141268	-96.74509	Kansas                                  
Crab Creek Bridge	Dexter	37.141268	-96.74509	Kansas                                  
Crawford County Historical Museum	Pittsburg	37.4326655	-94.7135763	Kansas                                  
Crawford County Historical Museum	Pittsburg	37.4326655	-94.7135763	Kansas                                  
Crawford County Historical Museum	Pittsburg	37.4326655	-94.7135763	Kansas                                  
Cray Historical Home Museum	Atchison	39.5697573	-95.1193028	Kansas                                  
Creamery Bridge	Osawatomie	38.5029344	-94.955109	Kansas                                  
Creamery Bridge	Osawatomie	38.5029344	-94.955109	Kansas                                  
Creamery Bridge	Osawatomie	38.5029344	-94.955109	Kansas                                  
Cupelo House	Russell Springs	38.939157	-101.077495	Kansas                                  
Cupelo House	Russell Springs	38.939157	-101.077495	Kansas                                  
Cyclone Day Memorial	Codell	39.1944011	-99.1750393	Kansas                                  
Cystal Springs	Atwood	39.8149466	-101.151884	Kansas                                  
Cystal Springs	Atwood	39.8149466	-101.151884	Kansas                                  
DAR Santa Fe Trail Crossing Monument	Council Grove	38.6528785	-96.5768735	Kansas                                  
DAR Santa Fe Trail Crossing Monument	Council Grove	38.6528785	-96.5768735	Kansas                                  
DAR Santa Fe Trail Crossing Monument	Council Grove	38.6528785	-96.5768735	Kansas                                  
DAR Santa Fe Trail Crossing Monument	Council Grove	38.6528785	-96.5768735	Kansas                                  
DAR Santa Fe Trail Crossing Monument	Council Grove	38.6528785	-96.5768735	Kansas                                  
Dalton Gang Hideout	Meade	37.2808319	-100.3370671	Kansas                                  
Dalton Gang Hideout	Meade	37.2808319	-100.3370671	Kansas                                  
Dalton Gang Hideout	Meade	37.2808319	-100.3370671	Kansas                                  
Dalton Gang Hideout	Meade	37.2808319	-100.3370671	Kansas                                  
Damar Community Historical Foundation	Damar	39.3184234	-99.5844866	Kansas                                  
Damar Community Historical Foundation	Damar	39.3184234	-99.5844866	Kansas                                  
De Soto Historical Society	De Soto	38.9779789	-94.9686352	Kansas                                  
DeGeer Corner	Scott City	38.4819244	-100.907089	Kansas                                  
DeGeer Corner	Scott City	38.4819244	-100.907089	Kansas                                  
DeGeer Corner	Scott City	38.4819244	-100.907089	Kansas                                  
DeGeer Corner	Scott City	38.4819244	-100.907089	Kansas                                  
DeGeer Corner	Scott City	38.4819244	-100.907089	Kansas                                  
Decatu County Last Indian Raid Museum	Oberlin	39.817967	-100.5286887	Kansas                                  
Decatu County Last Indian Raid Museum	Oberlin	39.817967	-100.5286887	Kansas                                  
Deerfield Texaco Service Station	Deerfield	37.9796221	-101.1342162	Kansas                                  
Deerfield Texaco Service Station	Deerfield	37.9796221	-101.1342162	Kansas                                  
Deerfield Texaco Service Station	Deerfield	37.9796221	-101.1342162	Kansas                                  
Deerfield Texaco Service Station	Deerfield	37.9796221	-101.1342162	Kansas                                  
Delano Clock Tower	Wichita	37.6840349	-97.346959	Kansas                                  
Delano Clock Tower	Wichita	37.6840349	-97.346959	Kansas                                  
Delano Clock Tower	Wichita	37.6840349	-97.346959	Kansas                                  
Delano Clock Tower	Wichita	37.6840349	-97.346959	Kansas                                  
Delano Clock Tower	Wichita	37.6840349	-97.346959	Kansas                                  
Derby Historical Museum	Derby	37.5446454	-97.2628757	Kansas                                  
Derby Historical Museum	Derby	37.5446454	-97.2628757	Kansas                                  
Derby Historical Museum	Derby	37.5446454	-97.2628757	Kansas                                  
Derby Historical Museum	Derby	37.5446454	-97.2628757	Kansas                                  
Dickinson County Heritage Center	Abilene	38.9114465	-97.2085839	Kansas                                  
Dickinson County Heritage Center	Abilene	38.9114465	-97.2085839	Kansas                                  
Dickinson County Heritage Center	Abilene	38.9114465	-97.2085839	Kansas                                  
Dickinson County Heritage Center	Abilene	38.9114465	-97.2085839	Kansas                                  
Dietrich Cabin	Ottawa	38.6106064	-95.2679511	Kansas                                  
Dietrich Cabin	Ottawa	38.6106064	-95.2679511	Kansas                                  
Dietrich Cabin	Ottawa	38.6106064	-95.2679511	Kansas                                  
Dietrich Cabin	Ottawa	38.6106064	-95.2679511	Kansas                                  
Dietrich Cabin	Ottawa	38.6106064	-95.2679511	Kansas                                  
Dietrich Cabin	Ottawa	38.6106064	-95.2679511	Kansas                                  
Dietrich Cabin	Ottawa	38.6106064	-95.2679511	Kansas                                  
Doc Holliday Statue	Dodge City	37.7529127	-100.0213203	Kansas                                  
Doc Holliday Statue	Dodge City	37.7529127	-100.0213203	Kansas                                  
Doc Holliday Statue	Dodge City	37.7529127	-100.0213203	Kansas                                  
Dodge City	Dodge City	37.7520557	-100.0218078	Kansas                                  
Dodge City	Dodge City	37.7520557	-100.0218078	Kansas                                  
Dodge City	Dodge City	37.7520557	-100.0218078	Kansas                                  
Dorothy's House and the Land of Oz	Liberal	37.0345435	-100.9105968	Kansas                                  
Dorothy's House and the Land of Oz	Liberal	37.0345435	-100.9105968	Kansas                                  
Dorothy's House and the Land of Oz	Liberal	37.0345435	-100.9105968	Kansas                                  
Dr. George A.Tann Gravesite	Independence	37.2432658	-95.7055897	Kansas                                  
Dr. William B. Jones - Old Stone House	Florence	38.2022937	-96.8613161	Kansas                                  
Dwight D Eisenhower Boyhood Home	Abilene	38.9123573	-97.2120094	Kansas                                  
Dwight D Eisenhower Boyhood Home	Abilene	38.9123573	-97.2120094	Kansas                                  
Dwight D Eisenhower Boyhood Home	Abilene	38.9123573	-97.2120094	Kansas                                  
East CCC Historical Society	Burden	37.3169871	-96.7532523	Kansas                                  
East CCC Historical Society	Burden	37.3169871	-96.7532523	Kansas                                  
Edwards County Historical Museum and Sod House	Kinsley	37.9177363	-99.4221397	Kansas                                  
Edwards County Historical Museum and Sod House	Kinsley	37.9177363	-99.4221397	Kansas                                  
Edwards County Historical Museum and Sod House	Kinsley	37.9177363	-99.4221397	Kansas                                  
Edwards County Historical Museum and Sod House	Kinsley	37.9177363	-99.4221397	Kansas                                  
Edwards County Historical Museum and Sod House	Kinsley	37.9177363	-99.4221397	Kansas                                  
El Cuartelejo	Scott City	38.6768293	-100.9148925	Kansas                                  
El Cuartelejo	Scott City	38.6768293	-100.9148925	Kansas                                  
El Cuartelejo	Scott City	38.6768293	-100.9148925	Kansas                                  
El Cuartelejo	Scott City	38.6768293	-100.9148925	Kansas                                  
El Cuartelejo	Scott City	38.6768293	-100.9148925	Kansas                                  
El Quartelejo Museum	Scott City	38.4827857	-100.9182503	Kansas                                  
El Quartelejo Museum	Scott City	38.4827857	-100.9182503	Kansas                                  
El Quartelejo Museum	Scott City	38.4827857	-100.9182503	Kansas                                  
El Quartelejo Museum	Scott City	38.4827857	-100.9182503	Kansas                                  
El Quartelejo Museum	Scott City	38.4827857	-100.9182503	Kansas                                  
El Quartelejo Museum	Scott City	38.4827857	-100.9182503	Kansas                                  
Ellinwood Cemetery	Ellinwood	38.3486854	-98.5737928	Kansas                                  
Ellis County Historical Society	Hays	38.8697144	-99.3323813	Kansas                                  
Ellis County Historical Society	Hays	38.8697144	-99.3323813	Kansas                                  
Ellis County Historical Society	Hays	38.8697144	-99.3323813	Kansas                                  
Ellis County Historical Society	Hays	38.8697144	-99.3323813	Kansas                                  
Ellis County Historical Society	Hays	38.8697144	-99.3323813	Kansas                                  
Ellis Railroad Museum	Ellis	38.9384203	-99.5600955	Kansas                                  
Ellis Railroad Museum	Ellis	38.9384203	-99.5600955	Kansas                                  
End of the Chisholm Trail Marker	Abilene	38.9161421	-97.2141686	Kansas                                  
Father Padilla Cross and Historic Marker	Lyons	38.3475135	-98.2765413	Kansas                                  
Father Padilla Cross and Historic Marker	Lyons	38.3475135	-98.2765413	Kansas                                  
Father Padilla Cross and Historic Marker	Lyons	38.3475135	-98.2765413	Kansas                                  
Father Padilla Cross and Historic Marker	Lyons	38.3475135	-98.2765413	Kansas                                  
Father Padilla Cross and Historic Marker	Lyons	38.3475135	-98.2765413	Kansas                                  
Fick Fossil & History Museum	Oakley	39.1279519	-100.8616602	Kansas                                  
Fick Fossil & History Museum	Oakley	39.1279519	-100.8616602	Kansas                                  
Fick Fossil & History Museum	Oakley	39.1279519	-100.8616602	Kansas                                  
Fick Fossil & History Museum	Oakley	39.1279519	-100.8616602	Kansas                                  
Fike Park	Colby	39.4000358	-101.0446605	Kansas                                  
Fike Park	Colby	39.4000358	-101.0446605	Kansas                                  
Fike Park	Colby	39.4000358	-101.0446605	Kansas                                  
Finney County Museum	Garden City	37.9602562	-100.8709223	Kansas                                  
Finney County Museum	Garden City	37.9602562	-100.8709223	Kansas                                  
Finney County Museum	Garden City	37.9602562	-100.8709223	Kansas                                  
Finney County Museum	Garden City	37.9602562	-100.8709223	Kansas                                  
Finney County Museum	Garden City	37.9602562	-100.8709223	Kansas                                  
First Territorial Capitol State Historic Site	Fort Riley	39.0852807	-96.7621019	Kansas                                  
First Territorial Capitol State Historic Site	Fort Riley	39.0852807	-96.7621019	Kansas                                  
First Territorial Capitol State Historic Site	Fort Riley	39.0852807	-96.7621019	Kansas                                  
First Territorial Capitol State Historic Site	Fort Riley	39.0852807	-96.7621019	Kansas                                  
First Territorial Capitol State Historic Site	Fort Riley	39.0852807	-96.7621019	Kansas                                  
First Territorial Capitol State Historic Site	Fort Riley	39.0852807	-96.7621019	Kansas                                  
First Territorial Capitol State Historic Site	Fort Riley	39.0852807	-96.7621019	Kansas                                  
Florence Deeble Rock Garden	Lucas	39.0585202	-98.5364805	Kansas                                  
Florence Deeble Rock Garden	Lucas	39.0585202	-98.5364805	Kansas                                  
Florence Deeble Rock Garden	Lucas	39.0585202	-98.5364805	Kansas                                  
Florence Deeble Rock Garden	Lucas	39.0585202	-98.5364805	Kansas                                  
Ford County Historical Society	Dodge City	37.7538328	-100.0198411	Kansas                                  
Ford County Historical Society	Dodge City	37.7538328	-100.0198411	Kansas                                  
Ford County Historical Society	Dodge City	37.7538328	-100.0198411	Kansas                                  
Former Missouri-Kansas-Texas Depot	Council Grove	38.6618761	-96.4801873	Kansas                                  
Former Missouri-Kansas-Texas Depot	Council Grove	38.6618761	-96.4801873	Kansas                                  
Former Missouri-Kansas-Texas Depot	Council Grove	38.6618761	-96.4801873	Kansas                                  
Former Missouri-Kansas-Texas Depot	Council Grove	38.6618761	-96.4801873	Kansas                                  
Former Missouri-Kansas-Texas Depot	Council Grove	38.6618761	-96.4801873	Kansas                                  
Former Rock Island Railroad Depot	Hutchinson	38.0473891	-97.9297192	Kansas                                  
Former Rock Island Railroad Depot	Hutchinson	38.0473891	-97.9297192	Kansas                                  
Former Rock Island Railroad Depot	Hutchinson	38.0473891	-97.9297192	Kansas                                  
Former Rock Island Railroad Depot	Hutchinson	38.0473891	-97.9297192	Kansas                                  
Former Santa Fe Depot	Abilene	38.9135312	-97.2147612	Kansas                                  
Former Santa Fe Depot	Abilene	38.9135312	-97.2147612	Kansas                                  
Fort Bissell Museum	Phillipsburg	39.7554363	-99.332581	Kansas                                  
Fort Bissell Museum	Phillipsburg	39.7554363	-99.332581	Kansas                                  
Fort Bissell Museum	Phillipsburg	39.7554363	-99.332581	Kansas                                  
Fort Bissell Museum	Phillipsburg	39.7554363	-99.332581	Kansas                                  
Fort Bissell Museum	Phillipsburg	39.7554363	-99.332581	Kansas                                  
Fort Bissell Museum	Phillipsburg	39.7554363	-99.332581	Kansas                                  
Fort Brooks - Historical Marker	Mulberry	39.5668671	-97.337088	Kansas                                  
Fort Brooks - Historical Marker	Mulberry	39.5668671	-97.337088	Kansas                                  
Fort Brooks - Historical Marker	Mulberry	39.5668671	-97.337088	Kansas                                  
Fort Dodge Camp Supply Military Road	Minneola	37.4906872	-99.8873312	Kansas                                  
Fort Dodge Camp Supply Military Road	Minneola	37.4906872	-99.8873312	Kansas                                  
Fort Dodge Camp Supply Military Road	Minneola	37.4906872	-99.8873312	Kansas                                  
Fort Dodge Camp Supply Military Road	Minneola	37.4906872	-99.8873312	Kansas                                  
Fort Harker Officers Quarters	Kanopolis	38.7105275	-98.1588626	Kansas                                  
Fort Hays State Historic Site	Hays	38.862995	-99.341484	Kansas                                  
Fort Hays State Historic Site	Hays	38.862995	-99.341484	Kansas                                  
Fort Hays State Historic Site	Hays	38.862995	-99.341484	Kansas                                  
Fort Hays State Historic Site	Hays	38.862995	-99.341484	Kansas                                  
Fort Hays State Historic Site	Hays	38.862995	-99.341484	Kansas                                  
Fort Larned National Historic Site	Larned	38.182531	-99.2211372	Kansas                                  
Fort Larned National Historic Site	Larned	38.182531	-99.2211372	Kansas                                  
Fort Larned National Historic Site	Larned	38.182531	-99.2211372	Kansas                                  
Fort Larned National Historic Site	Larned	38.182531	-99.2211372	Kansas                                  
Fort Larned National Historic Site	Larned	38.182531	-99.2211372	Kansas                                  
Fort Larned Visitor Center	Larned	38.1826114	-99.2210738	Kansas                                  
Fort Leavenworth - Fort Riley Military Road	Manhattan	39.1588092	-96.6817779	Kansas                                  
Fort Leavenworth - Fort Riley Military Road	Manhattan	39.1588092	-96.6817779	Kansas                                  
Fort Leavenworth - Fort Riley Military Road	Manhattan	39.1588092	-96.6817779	Kansas                                  
Fort Leavenworth - Fort Riley Military Road	Manhattan	39.1588092	-96.6817779	Kansas                                  
Fort Row	Fredonia	37.6683801	-95.8330553	Kansas                                  
Fort Scott National Historic Site	Fort Scott	37.8434508	-94.7042879	Kansas                                  
Fort Scott National Historic Site	Fort Scott	37.8434508	-94.7042879	Kansas                                  
Fort Scott National Historic Site	Fort Scott	37.8434508	-94.7042879	Kansas                                  
Fort Titus	Lecompton	39.044316	-95.3913306	Kansas                                  
Fort Titus	Lecompton	39.044316	-95.3913306	Kansas                                  
Fort Titus	Lecompton	39.044316	-95.3913306	Kansas                                  
Fort Titus	Lecompton	39.044316	-95.3913306	Kansas                                  
Fort Titus	Lecompton	39.044316	-95.3913306	Kansas                                  
Fort Wallace Museum	Wallace	38.9103451	-101.5828513	Kansas                                  
Fort Wallace Museum	Wallace	38.9103451	-101.5828513	Kansas                                  
Fort Wallace Museum	Wallace	38.9103451	-101.5828513	Kansas                                  
Fort Wallace Museum	Wallace	38.9103451	-101.5828513	Kansas                                  
Fort Wallace Museum	Wallace	38.9103451	-101.5828513	Kansas                                  
Fort Wallace Museum	Wallace	38.9103451	-101.5828513	Kansas                                  
Fort Wallace Post Cemetery	Wallace	38.9029021	-101.5595393	Kansas                                  
Fort Wallace Post Cemetery	Wallace	38.9029021	-101.5595393	Kansas                                  
Fort Wallace Post Cemetery	Wallace	38.9029021	-101.5595393	Kansas                                  
Fort Wallace Post Cemetery	Wallace	38.9029021	-101.5595393	Kansas                                  
Fort de Cavagnial	Leavenworth	39.3975881	-94.9651977	Kansas                                  
Fossett Plaza	Salina	38.7948981	-97.6420682	Kansas                                  
Fossett Plaza	Salina	38.7948981	-97.6420682	Kansas                                  
Fossett Plaza	Salina	38.7948981	-97.6420682	Kansas                                  
Frank J. and Harvey J. Ablah House	Wichita	37.6866813	-97.2756285	Kansas                                  
Frank J. and Harvey J. Ablah House	Wichita	37.6866813	-97.2756285	Kansas                                  
Frank J. and Harvey J. Ablah House	Wichita	37.6866813	-97.2756285	Kansas                                  
Frank J. and Harvey J. Ablah House	Wichita	37.6866813	-97.2756285	Kansas                                  
Frank J. and Harvey J. Ablah House	Wichita	37.6866813	-97.2756285	Kansas                                  
Franklin County Historical Society Archives & Research Center	Ottawa	38.6237124	-95.241468	Kansas                                  
Franklin County Historical Society Archives & Research Center	Ottawa	38.6237124	-95.241468	Kansas                                  
Franklin D. Roosevelt	Olathe	38.883852	-94.822232	Kansas                                  
Friar Juan Padilla Monument	Township 1	38.6421795	-96.5017437	Kansas                                  
Fromm Stone Arch Bridge	Cambridge	37.3772716	-96.6524222	Kansas                                  
Fromm Stone Arch Bridge	Cambridge	37.3772716	-96.6524222	Kansas                                  
Fromme-Birney Round Barn	Mullinville	37.5268447	-99.5088388	Kansas                                  
Fromme-Birney Round Barn	Mullinville	37.5268447	-99.5088388	Kansas                                  
Fromme-Birney Round Barn	Mullinville	37.5268447	-99.5088388	Kansas                                  
Fromme-Birney Round Barn	Mullinville	37.5268447	-99.5088388	Kansas                                  
Fromme-Birney Round Barn	Mullinville	37.5268447	-99.5088388	Kansas                                  
Frontier Historical Park	Hays	38.8637386	-99.3389522	Kansas                                  
Frontier Historical Park	Hays	38.8637386	-99.3389522	Kansas                                  
Frontier Historical Park	Hays	38.8637386	-99.3389522	Kansas                                  
Frontier Historical Park	Hays	38.8637386	-99.3389522	Kansas                                  
Frontier in Rawlins County	Atwood	39.813983	-101.0448115	Kansas                                  
Frontier in Rawlins County	Atwood	39.813983	-101.0448115	Kansas                                  
Fry'sRuts	Little River	38.3020727	-97.9555163	Kansas                                  
Fry'sRuts	Little River	38.3020727	-97.9555163	Kansas                                  
Fry'sRuts	Little River	38.3020727	-97.9555163	Kansas                                  
Fry'sRuts	Little River	38.3020727	-97.9555163	Kansas                                  
Ft. Blair Historic Site	Baxter Springs	37.0296163	-94.7338869	Kansas                                  
Ft. Blair Historic Site	Baxter Springs	37.0296163	-94.7338869	Kansas                                  
Funston Historical Home	Iola	37.9218055	-95.4058381	Kansas                                  
Funston Historical Home	Iola	37.9218055	-95.4058381	Kansas                                  
Funston Historical Home	Iola	37.9218055	-95.4058381	Kansas                                  
Funston Historical Home	Iola	37.9218055	-95.4058381	Kansas                                  
Galena Calaboose	Galena	37.0757895	-94.6393356	Kansas                                  
Galena Mining & Historical Museum	Galena	37.0751409	-94.642048	Kansas                                  
Galesburg Historical Society & Museum	Galesburg	37.4719153	-95.3554089	Kansas                                  
Galesburg Historical Society & Museum	Galesburg	37.4719153	-95.3554089	Kansas                                  
Garden City Monument Co	Garden City	37.9656704	-100.8750291	Kansas                                  
Garden City Water Tower	Garden City	37.9754223	-100.8722267	Kansas                                  
Garden City Water Tower	Garden City	37.9754223	-100.8722267	Kansas                                  
Garden City Water Tower	Garden City	37.9754223	-100.8722267	Kansas                                  
Garden City Water Tower	Garden City	37.9754223	-100.8722267	Kansas                                  
Garden City Water Tower	Garden City	37.9754223	-100.8722267	Kansas                                  
Gardner Historical Museum	Gardner	38.8112431	-94.9312699	Kansas                                  
Geary County Historical Society	Junction City	39.0278966	-96.8337989	Kansas                                  
Geary County Historical Society	Junction City	39.0278966	-96.8337989	Kansas                                  
Geary County Historical Society	Junction City	39.0278966	-96.8337989	Kansas                                  
Geary County Historical Society	Junction City	39.0278966	-96.8337989	Kansas                                  
Geary County Historical Society	Junction City	39.0278966	-96.8337989	Kansas                                  
Geary County Historical Society	Junction City	39.0278966	-96.8337989	Kansas                                  
Geodetic Center of North America	Tipton	39.224087	-98.542152	Kansas                                  
Geodetic Center of North America	Tipton	39.224087	-98.542152	Kansas                                  
Geodetic Center of North America	Tipton	39.224087	-98.542152	Kansas                                  
Geodetic Center of North America	Tipton	39.224087	-98.542152	Kansas                                  
Goodnow House State Historic Site	Manhattan	39.192832	-96.5955693	Kansas                                  
Goodnow House State Historic Site	Manhattan	39.192832	-96.5955693	Kansas                                  
Goodnow House State Historic Site	Manhattan	39.192832	-96.5955693	Kansas                                  
Goodnow House State Historic Site	Manhattan	39.192832	-96.5955693	Kansas                                  
Goodnow House State Historic Site	Manhattan	39.192832	-96.5955693	Kansas                                  
Goodnow House State Historic Site	Manhattan	39.192832	-96.5955693	Kansas                                  
Gove County Historical Museum	Gove City	38.9575696	-100.4833639	Kansas                                  
Gove County Historical Museum	Gove City	38.9575696	-100.4833639	Kansas                                  
Gove County Historical Museum	Gove City	38.9575696	-100.4833639	Kansas                                  
Graber Mercantile	Pretty Prairie	37.780598	-98.020161	Kansas                                  
Grace Bedell Billings Monument	Delphos	39.273705	-97.7664252	Kansas                                  
Grace Bedell Billings Monument	Delphos	39.273705	-97.7664252	Kansas                                  
Grace Bedell Billings Monument	Delphos	39.273705	-97.7664252	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant County Museum	Ulysses	37.5769426	-101.3552174	Kansas                                  
Grant Historic Residences	Goodland	39.3474731	-101.7182464	Kansas                                  
Grant Historic Residences	Goodland	39.3474731	-101.7182464	Kansas                                  
Greeley County Historical Soc	Tribune	38.4710747	-101.7508081	Kansas                                  
Greeley County Historical Soc	Tribune	38.4710747	-101.7508081	Kansas                                  
Greeley County Historical Soc	Tribune	38.4710747	-101.7508081	Kansas                                  
Greeley County Historical Society	Tribune	38.4703044	-101.7522588	Kansas                                  
Greeley County Historical Society	Tribune	38.4703044	-101.7522588	Kansas                                  
Greeley County Historical Society	Tribune	38.4703044	-101.7522588	Kansas                                  
Greenwood County Historical Society	Eureka	37.8223962	-96.2951936	Kansas                                  
Greenwood County Historical Society	Eureka	37.8223962	-96.2951936	Kansas                                  
Greenwood County Historical Society	Eureka	37.8223962	-96.2951936	Kansas                                  
Greenwood County Historical Society	Eureka	37.8223962	-96.2951936	Kansas                                  
Greenwood County Historical Society	Eureka	37.8223962	-96.2951936	Kansas                                  
Greenwood County Historical Society	Eureka	37.8223962	-96.2951936	Kansas                                  
Grinter Place State Historic Site	Kansas City	39.074941	-94.7601058	Kansas                                  
Grinter Place State Historic Site	Kansas City	39.074941	-94.7601058	Kansas                                  
Grinter Place State Historic Site	Kansas City	39.074941	-94.7601058	Kansas                                  
Grinter Place State Historic Site	Kansas City	39.074941	-94.7601058	Kansas                                  
Gypsum Hills Scenic Byway Info Kiosk	Medicine Lodge	37.2817423	-98.7489983	Kansas                                  
Gypsum Hills Scenic Byway Info Kiosk	Medicine Lodge	37.2817423	-98.7489983	Kansas                                  
Gypsum Hills Scenic Byway Info Kiosk	Medicine Lodge	37.2817423	-98.7489983	Kansas                                  
Hadley Island	Kansas City	39.0818068	-94.6532645	Kansas                                  
Hadley Island	Kansas City	39.0818068	-94.6532645	Kansas                                  
Hadley Island	Kansas City	39.0818068	-94.6532645	Kansas                                  
Hamilton County Historical	Syracuse	37.9804503	-101.7514317	Kansas                                  
Hamilton County Historical	Syracuse	37.9804503	-101.7514317	Kansas                                  
Hamilton County Historical	Syracuse	37.9804503	-101.7514317	Kansas                                  
Hamilton County Historical	Syracuse	37.9804503	-101.7514317	Kansas                                  
Hans Hanson House	Marquette	38.5567074	-97.8318844	Kansas                                  
Hans Hanson House	Marquette	38.5567074	-97.8318844	Kansas                                  
Hans Hanson House	Marquette	38.5567074	-97.8318844	Kansas                                  
Hans Hanson House	Marquette	38.5567074	-97.8318844	Kansas                                  
Hartford Calaboose	Hartford	38.308111	-95.9577755	Kansas                                  
Hartford Calaboose	Hartford	38.308111	-95.9577755	Kansas                                  
Hartford Calaboose	Hartford	38.308111	-95.9577755	Kansas                                  
Hartford Calaboose	Hartford	38.308111	-95.9577755	Kansas                                  
Harvey County Historical Society	Newton	38.0442092	-97.345556	Kansas                                  
Harvey County Historical Society	Newton	38.0442092	-97.345556	Kansas                                  
Harvey County Historical Society	Newton	38.0442092	-97.345556	Kansas                                  
Harvey County Historical Society	Newton	38.0442092	-97.345556	Kansas                                  
Harvey County Historical Society	Newton	38.0442092	-97.345556	Kansas                                  
Haskell County Historical	Sublette	37.478262	-100.8364858	Kansas                                  
Haskell County Historical	Sublette	37.478262	-100.8364858	Kansas                                  
Haskell County Historical	Sublette	37.478262	-100.8364858	Kansas                                  
Haskell County Historical	Sublette	37.478262	-100.8364858	Kansas                                  
Haskell County Historical	Sublette	37.478262	-100.8364858	Kansas                                  
Haskell County Historical	Sublette	37.478262	-100.8364858	Kansas                                  
Haun Museum	Jetmore	38.0849028	-99.893992	Kansas                                  
Haun Museum	Jetmore	38.0849028	-99.893992	Kansas                                  
Haystack Mound	Brookville	38.824631	-97.9308	Kansas                                  
Haystack Mound	Brookville	38.824631	-97.9308	Kansas                                  
Haystack Mound	Brookville	38.824631	-97.9308	Kansas                                  
Haystack Mound	Brookville	38.824631	-97.9308	Kansas                                  
Haystack Mound	Brookville	38.824631	-97.9308	Kansas                                  
Heaton Building	Norton	39.8289205	-99.8890492	Kansas                                  
Henry John Neuschwanger Homestead	Osborne	39.3982753	-98.8537151	Kansas                                  
Henry John Neuschwanger Homestead	Osborne	39.3982753	-98.8537151	Kansas                                  
Henry John Neuschwanger Homestead	Osborne	39.3982753	-98.8537151	Kansas                                  
Henry John Neuschwanger Homestead	Osborne	39.3982753	-98.8537151	Kansas                                  
Herington Historical Society	Herington	38.6635276	-96.9434822	Kansas                                  
Herington Historical Society	Herington	38.6635276	-96.9434822	Kansas                                  
Herington Historical Society	Herington	38.6635276	-96.9434822	Kansas                                  
Herington Historical Society	Herington	38.6635276	-96.9434822	Kansas                                  
Herington Historical Society	Herington	38.6635276	-96.9434822	Kansas                                  
Heritage Park Barn	Olathe	38.8127203	-94.7432311	Kansas                                  
Heritage Park Barn	Olathe	38.8127203	-94.7432311	Kansas                                  
Heritage Park Barn	Olathe	38.8127203	-94.7432311	Kansas                                  
Heritage Park Barn	Olathe	38.8127203	-94.7432311	Kansas                                  
Hermit's Cave	Council Grove	38.6624752	-96.4943197	Kansas                                  
Heym-Oliver House	Russell	38.8903454	-98.8584526	Kansas                                  
Heym-Oliver House	Russell	38.8903454	-98.8584526	Kansas                                  
Higgin?ÇÖs Ranch	Madison	38.1681548	-96.1582711	Kansas                                  
Higgin?ÇÖs Ranch	Madison	38.1681548	-96.1582711	Kansas                                  
Higgin?ÇÖs Ranch	Madison	38.1681548	-96.1582711	Kansas                                  
High Plains Heritage Foundation	Liberal	37.0511412	-100.9202246	Kansas                                  
High Plains Heritage Foundation	Liberal	37.0511412	-100.9202246	Kansas                                  
High Plains Heritage Foundation	Liberal	37.0511412	-100.9202246	Kansas                                  
High Plains Museum	Goodland	39.3408935	-101.7054026	Kansas                                  
High Plains Museum	Goodland	39.3408935	-101.7054026	Kansas                                  
High Plains Museum	Goodland	39.3408935	-101.7054026	Kansas                                  
High Plains Museum	Goodland	39.3408935	-101.7054026	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Adobe Museum	Ulysses	37.5770652	-101.3552232	Kansas                                  
Historic Anthony Theatre	Anthony	37.1520437	-98.0325182	Kansas                                  
Historic Anthony Theatre	Anthony	37.1520437	-98.0325182	Kansas                                  
Historic Chisholm Trail Mulberry Tree Marker	Wichita	37.6803338	-97.3556931	Kansas                                  
Historic Chisholm Trail Mulberry Tree Marker	Wichita	37.6803338	-97.3556931	Kansas                                  
Historic Chisholm Trail Mulberry Tree Marker	Wichita	37.6803338	-97.3556931	Kansas                                  
Historic Chisholm Trail Mulberry Tree Marker	Wichita	37.6803338	-97.3556931	Kansas                                  
Historic Chisholm Trail Mulberry Tree Marker	Wichita	37.6803338	-97.3556931	Kansas                                  
Historic Deep Creek Schoolhouse	Manhattan	39.1208508	-96.4825012	Kansas                                  
Historic Deep Creek Schoolhouse	Manhattan	39.1208508	-96.4825012	Kansas                                  
Historic Deep Creek Schoolhouse	Manhattan	39.1208508	-96.4825012	Kansas                                  
Historic Deep Creek Schoolhouse	Manhattan	39.1208508	-96.4825012	Kansas                                  
Historic Deep Creek Schoolhouse	Manhattan	39.1208508	-96.4825012	Kansas                                  
Historic Florence Spring House	Florence	38.2656635	-96.9370203	Kansas                                  
Historic Florence Spring House	Florence	38.2656635	-96.9370203	Kansas                                  
Historic Florence Spring House	Florence	38.2656635	-96.9370203	Kansas                                  
Historic Florence Spring House	Florence	38.2656635	-96.9370203	Kansas                                  
Historic Fort Leavenworth	Atchison	39.4322232	-95.086493	Kansas                                  
Historic Fort Leavenworth	Atchison	39.4322232	-95.086493	Kansas                                  
Historic Fort Leavenworth	Atchison	39.4322232	-95.086493	Kansas                                  
Historic Fort Leavenworth	Atchison	39.4322232	-95.086493	Kansas                                  
Historic Fort Leavenworth	Atchison	39.4322232	-95.086493	Kansas                                  
Historic Fort Leavenworth	Atchison	39.4322232	-95.086493	Kansas                                  
Historic Frisco Railroad Bridge	Keighley	37.6652129	-96.6073646	Kansas                                  
Historic Frisco Railroad Bridge	Keighley	37.6652129	-96.6073646	Kansas                                  
Historic Frisco Railroad Bridge	Keighley	37.6652129	-96.6073646	Kansas                                  
Historic Frisco Railroad Bridge	Keighley	37.6652129	-96.6073646	Kansas                                  
Historic Haggard General Store	Cimarron	37.6351909	-100.3155378	Kansas                                  
Historic Haggard General Store	Cimarron	37.6351909	-100.3155378	Kansas                                  
Historic Haggard General Store	Cimarron	37.6351909	-100.3155378	Kansas                                  
Historic Haggard General Store	Cimarron	37.6351909	-100.3155378	Kansas                                  
Historic Haggard General Store	Cimarron	37.6351909	-100.3155378	Kansas                                  
Historic Lake Scott State Park	Scott City	38.6853256	-100.9252166	Kansas                                  
Historic Lake Scott State Park	Scott City	38.6853256	-100.9252166	Kansas                                  
Historic Lake Scott State Park	Scott City	38.6853256	-100.9252166	Kansas                                  
Historic Lebanon City Jail	Lebanon	39.8087059	-98.5556005	Kansas                                  
Historic Lebanon City Jail	Lebanon	39.8087059	-98.5556005	Kansas                                  
Historic Lebanon City Jail	Lebanon	39.8087059	-98.5556005	Kansas                                  
Historic Lecompton	Lecompton	39.0445903	-95.3921085	Kansas                                  
Historic Lecompton	Lecompton	39.0445903	-95.3921085	Kansas                                  
Historic Lecompton	Lecompton	39.0445903	-95.3921085	Kansas                                  
Historic Lecompton	Lecompton	39.0445903	-95.3921085	Kansas                                  
Historic Lecompton	Lecompton	39.0445903	-95.3921085	Kansas                                  
Historic Lecompton	Lecompton	39.0445903	-95.3921085	Kansas                                  
Historic Lecompton	Lecompton	39.0445903	-95.3921085	Kansas                                  
Historic McPherson Sante Fe Depot	McPherson	38.3723454	-97.6711772	Kansas                                  
Historic McPherson Sante Fe Depot	McPherson	38.3723454	-97.6711772	Kansas                                  
Historic McPherson Sante Fe Depot	McPherson	38.3723454	-97.6711772	Kansas                                  
Historic McPherson Sante Fe Depot	McPherson	38.3723454	-97.6711772	Kansas                                  
Historic McPherson Sante Fe Depot	McPherson	38.3723454	-97.6711772	Kansas                                  
Historic McPherson Sante Fe Depot	McPherson	38.3723454	-97.6711772	Kansas                                  
Historic McPherson Sante Fe Depot	McPherson	38.3723454	-97.6711772	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Ottawa Trail Bridge (West)	Ottawa	38.6196954	-95.2922834	Kansas                                  
Historic Philip Houston House B&B	Rexford	39.4698981	-100.7427046	Kansas                                  
Historic Philip Houston House B&B	Rexford	39.4698981	-100.7427046	Kansas                                  
Historic Philip Houston House B&B	Rexford	39.4698981	-100.7427046	Kansas                                  
Historic Ritchie House	Topeka	39.0427408	-95.6719708	Kansas                                  
Historic Ritchie House	Topeka	39.0427408	-95.6719708	Kansas                                  
Historic Ritchie House	Topeka	39.0427408	-95.6719708	Kansas                                  
Historic Ritchie House	Topeka	39.0427408	-95.6719708	Kansas                                  
Historic Ritchie House	Topeka	39.0427408	-95.6719708	Kansas                                  
Historic Ritchie House	Topeka	39.0427408	-95.6719708	Kansas                                  
Historic Santa Fe Depot	Dodge City	37.7526408	-100.0160383	Kansas                                  
Historic Santa Fe Depot	Dodge City	37.7526408	-100.0160383	Kansas                                  
Historic Santa Fe Depot	Dodge City	37.7526408	-100.0160383	Kansas                                  
Historic Sundials	Dodge City	37.7523595	-100.0151388	Kansas                                  
Historic Sundials	Dodge City	37.7523595	-100.0151388	Kansas                                  
Historic Sundials	Dodge City	37.7523595	-100.0151388	Kansas                                  
Historic Trails Park & Rope Ferry Replica	Marysville	39.8432516	-96.6592611	Kansas                                  
Historic Trails Park & Rope Ferry Replica	Marysville	39.8432516	-96.6592611	Kansas                                  
Historic Wichita Cowtown Inc. Board of Trustees	Wichita	37.6942464	-97.3610666	Kansas                                  
Historic Windsor Hotel	Garden City	37.9685506	-100.8735898	Kansas                                  
Historic Windsor Hotel	Garden City	37.9685506	-100.8735898	Kansas                                  
Historic Windsor Hotel	Garden City	37.9685506	-100.8735898	Kansas                                  
Historic Windsor Hotel	Garden City	37.9685506	-100.8735898	Kansas                                  
Historical Hand-Dug Well	Westmoreland	39.3962435	-96.4080357	Kansas                                  
Historical Hand-Dug Well	Westmoreland	39.3962435	-96.4080357	Kansas                                  
Historical Hand-Dug Well	Westmoreland	39.3962435	-96.4080357	Kansas                                  
Historical Hand-Dug Well	Westmoreland	39.3962435	-96.4080357	Kansas                                  
Historical Hand-Dug Well	Westmoreland	39.3962435	-96.4080357	Kansas                                  
Historical Hand-Dug Well	Westmoreland	39.3962435	-96.4080357	Kansas                                  
Historical Iron Bridge	Garland	37.694469	-94.648896	Kansas                                  
Historical Iron Bridge	Garland	37.694469	-94.648896	Kansas                                  
Historical Marker	Cassoday	38.1193389	-96.5966225	Kansas                                  
Historical Marker	Cassoday	38.1193389	-96.5966225	Kansas                                  
Historical Marker	Cassoday	38.1193389	-96.5966225	Kansas                                  
Historical Marker	Wichita	37.6947307	-97.3546094	Kansas                                  
Historical Museum & Library	Newton	38.0441586	-97.3453629	Kansas                                  
Historical Museum Of Anthony	Anthony	37.1512763	-98.0365376	Kansas                                  
Historical Museum Of Anthony	Anthony	37.1512763	-98.0365376	Kansas                                  
Historical Museum Of Anthony	Anthony	37.1512763	-98.0365376	Kansas                                  
Historical Shrine Church	Valley Falls	39.3463335	-95.4567478	Kansas                                  
Hodgen House Museum Complex	Ellsworth	38.7282831	-98.2326711	Kansas                                  
Hodgen House Museum Complex	Ellsworth	38.7282831	-98.2326711	Kansas                                  
Hodgen House Museum Complex	Ellsworth	38.7282831	-98.2326711	Kansas                                  
Hodgen House Museum Complex	Ellsworth	38.7282831	-98.2326711	Kansas                                  
Hoglund Dugout	Lindsborg	38.5757608	-97.7025198	Kansas                                  
Hoglund Dugout	Lindsborg	38.5757608	-97.7025198	Kansas                                  
Hoglund Dugout	Lindsborg	38.5757608	-97.7025198	Kansas                                  
Hoglund Dugout	Lindsborg	38.5757608	-97.7025198	Kansas                                  
Hollenberg Pony Express Station State Historic Site	Hanover	39.901447	-96.846591	Kansas                                  
Hollenberg Pony Express Station State Historic Site	Hanover	39.901447	-96.846591	Kansas                                  
Home of Stone	Dodge City	37.7555479	-100.0155435	Kansas                                  
Home of Stone	Dodge City	37.7555479	-100.0155435	Kansas                                  
Home on the Range Cabin	Athol	39.8894087	-98.947194	Kansas                                  
Hometown Grounds	Phillipsburg	39.7565498	-99.3247766	Kansas                                  
Hometown Grounds	Phillipsburg	39.7565498	-99.3247766	Kansas                                  
Hot and Cold Water Towers	Pratt	37.6517217	-98.7391608	Kansas                                  
Hot and Cold Water Towers	Pratt	37.6517217	-98.7391608	Kansas                                  
Hot and Cold Water Towers	Pratt	37.6517217	-98.7391608	Kansas                                  
Howard T. Sawhill Park	St Francis	39.7746705	-101.7982221	Kansas                                  
Howard T. Sawhill Park	St Francis	39.7746705	-101.7982221	Kansas                                  
Hudgeon Bridge	Cherokee	37.3687167	-94.8992637	Kansas                                  
Hudgeon Bridge	Cherokee	37.3687167	-94.8992637	Kansas                                  
Hudgeon Bridge	Cherokee	37.3687167	-94.8992637	Kansas                                  
Hudgeon Bridge	Cherokee	37.3687167	-94.8992637	Kansas                                  
Humboldt Historical Society	Humboldt	37.8142285	-95.4453033	Kansas                                  
Humboldt Historical Society	Humboldt	37.8142285	-95.4453033	Kansas                                  
Humboldt Historical Society	Humboldt	37.8142285	-95.4453033	Kansas                                  
Humboldt Historical Society	Humboldt	37.8142285	-95.4453033	Kansas                                  
Humboldt Historical Society	Humboldt	37.8142285	-95.4453033	Kansas                                  
Humboldt Historical Society	Humboldt	37.8142285	-95.4453033	Kansas                                  
Immanuel Lutheran Church (historical location)	Hoxie	39.4367784	-100.4794553	Kansas                                  
Independence Bowstring Bridge	Independence	37.2248416	-95.6936763	Kansas                                  
Independence Bowstring Bridge	Independence	37.2248416	-95.6936763	Kansas                                  
Independence Bowstring Bridge	Independence	37.2248416	-95.6936763	Kansas                                  
Independence Bowstring Bridge	Independence	37.2248416	-95.6936763	Kansas                                  
Independence Bowstring Bridge	Independence	37.2248416	-95.6936763	Kansas                                  
Independence Creek: Lewis and Clark historical site	Atchison	39.6205428	-95.098544	Kansas                                  
Independence Creek: Lewis and Clark historical site	Atchison	39.6205428	-95.098544	Kansas                                  
Independence Creek: Lewis and Clark historical site	Atchison	39.6205428	-95.098544	Kansas                                  
Independence Creek: Lewis and Clark historical site	Atchison	39.6205428	-95.098544	Kansas                                  
Independence Creek: Lewis and Clark historical site	Atchison	39.6205428	-95.098544	Kansas                                  
Independence Historical Museum & Art Center	Independence	37.2240993	-95.7083253	Kansas                                  
Independence Historical Museum & Art Center	Independence	37.2240993	-95.7083253	Kansas                                  
Independence Historical Museum & Art Center	Independence	37.2240993	-95.7083253	Kansas                                  
Independence Historical Museum & Art Center	Independence	37.2240993	-95.7083253	Kansas                                  
Independence Historical Museum & Art Center	Independence	37.2240993	-95.7083253	Kansas                                  
Indian Mound	Hartland	37.8952384	-101.3393055	Kansas                                  
Indian Mound	Hartland	37.8952384	-101.3393055	Kansas                                  
Indian Mound	Hartland	37.8952384	-101.3393055	Kansas                                  
Indian Mound	Hartland	37.8952384	-101.3393055	Kansas                                  
Indian Mound	Hartland	37.8952384	-101.3393055	Kansas                                  
Iowa Tribe Powwow Grounds	White Cloud	39.9941887	-95.3942374	Kansas                                  
Ivanpah School	Eureka	37.8981077	-96.4978654	Kansas                                  
Iwo Jima Memorial	WaKeeney	39.0119027	-99.8710076	Kansas                                  
Iwo Jima Memorial	WaKeeney	39.0119027	-99.8710076	Kansas                                  
Iwo Jima Memorial	WaKeeney	39.0119027	-99.8710076	Kansas                                  
Iwo Jima Memorial	WaKeeney	39.0119027	-99.8710076	Kansas                                  
Iwo Jima Memorial	WaKeeney	39.0119027	-99.8710076	Kansas                                  
James Arness (as Matt Dillon) Statue	Dodge City	37.7529421	-100.0205813	Kansas                                  
James Arness (as Matt Dillon) Statue	Dodge City	37.7529421	-100.0205813	Kansas                                  
James Arness (as Matt Dillon) Statue	Dodge City	37.7529421	-100.0205813	Kansas                                  
Jefferson County Historical Society	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Jefferson County Historical Society	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Jefferson County Historical Society	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Jefferson County Historical Society	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Jewell County Historical Msm	Mankato	39.7864357	-98.2097698	Kansas                                  
Jewell County Historical Msm	Mankato	39.7864357	-98.2097698	Kansas                                  
Jewell County Historical Msm	Mankato	39.7864357	-98.2097698	Kansas                                  
Jewell County Historical Msm	Mankato	39.7864357	-98.2097698	Kansas                                  
Jewell County Historical Msm	Mankato	39.7864357	-98.2097698	Kansas                                  
John Brown Museum State Historic Site	Osawatomie	38.4988962	-94.959599	Kansas                                  
John Brown Museum State Historic Site	Osawatomie	38.4988962	-94.959599	Kansas                                  
John Storer Homestead	Alton	39.4668102	-98.8063551	Kansas                                  
John Storer Homestead	Alton	39.4668102	-98.8063551	Kansas                                  
John Storer Homestead	Alton	39.4668102	-98.8063551	Kansas                                  
John Storer Homestead	Alton	39.4668102	-98.8063551	Kansas                                  
John W. Guyer Homestead	Osborne	39.3872881	-98.8370732	Kansas                                  
John W. Guyer Homestead	Osborne	39.3872881	-98.8370732	Kansas                                  
John W. Guyer Homestead	Osborne	39.3872881	-98.8370732	Kansas                                  
John W. Guyer Homestead	Osborne	39.3872881	-98.8370732	Kansas                                  
Kalida Castle Cave	Yates Center	37.8595821	-95.7024621	Kansas                                  
Kalida Castle Cave	Yates Center	37.8595821	-95.7024621	Kansas                                  
Kalida Castle Cave	Yates Center	37.8595821	-95.7024621	Kansas                                  
Kalida Castle Cave	Yates Center	37.8595821	-95.7024621	Kansas                                  
Kalida Castle Cave	Yates Center	37.8595821	-95.7024621	Kansas                                  
Kalida Castle Cave	Yates Center	37.8595821	-95.7024621	Kansas                                  
Kalida Castle Cave	Yates Center	37.8595821	-95.7024621	Kansas                                  
Kansas Capital Dome	Topeka	39.0478713	-95.678091	Kansas                                  
Kansas Historical Marker	Beeler	38.4506213	-100.1996736	Kansas                                  
Kansas Historical Marker	Beeler	38.4506213	-100.1996736	Kansas                                  
Kansas Historical Marker	Beeler	38.4506213	-100.1996736	Kansas                                  
Kansas Historical Marker	Beeler	38.4506213	-100.1996736	Kansas                                  
Kansas Historical Marker Beersheba	Garfield Township	38.059365	-100.4617625	Kansas                                  
Kansas Historical Marker Beersheba	Garfield Township	38.059365	-100.4617625	Kansas                                  
Kansas Historical Marker Beersheba	Garfield Township	38.059365	-100.4617625	Kansas                                  
Kansas Historical Marker Beersheba	Garfield Township	38.059365	-100.4617625	Kansas                                  
Kansas Historical Marker Beersheba	Garfield Township	38.059365	-100.4617625	Kansas                                  
Kansas Historical Marker Beersheba	Garfield Township	38.059365	-100.4617625	Kansas                                  
Kansas Historical Marker and Scenic View of Kansas Bluestem Prairie	Strong City	38.4008116	-96.5030268	Kansas                                  
Kansas Historical Marker and Scenic View of Kansas Bluestem Prairie	Strong City	38.4008116	-96.5030268	Kansas                                  
Kansas Historical Marker and Scenic View of Kansas Bluestem Prairie	Strong City	38.4008116	-96.5030268	Kansas                                  
Kansas Welcome Sign	Ashland	37.0006018	-99.631077	Kansas                                  
Kansas Welcome Sign	Ashland	37.0006018	-99.631077	Kansas                                  
Kansas Welcome Sign	Liberal	36.9988246	-100.8916932	Kansas                                  
Kansas Welcome Sign	Liberal	36.9988246	-100.8916932	Kansas                                  
Kansas Welcome Sign	Liberal	36.9988246	-100.8916932	Kansas                                  
Kansas' Oldest Swinging Bridge	Moline	37.3660318	-96.304296	Kansas                                  
Kansas' Oldest Swinging Bridge	Moline	37.3660318	-96.304296	Kansas                                  
Kansas' Oldest Swinging Bridge	Moline	37.3660318	-96.304296	Kansas                                  
Kansas/ Colorado Border Parking Area	Walsh	37.4696118	-102.0415095	Kansas                                  
Kansas/ Colorado Border Parking Area	Walsh	37.4696118	-102.0415095	Kansas                                  
Kate Burnett Historical Marker	Humboldt	37.8105875	-95.4369844	Kansas                                  
Kate Burnett Historical Marker	Humboldt	37.8105875	-95.4369844	Kansas                                  
Kate Burnett Historical Marker	Humboldt	37.8105875	-95.4369844	Kansas                                  
Kate Burnett Historical Marker	Humboldt	37.8105875	-95.4369844	Kansas                                  
Kate Burnett Historical Marker	Humboldt	37.8105875	-95.4369844	Kansas                                  
Kate Burnett Historical Marker	Humboldt	37.8105875	-95.4369844	Kansas                                  
Kaw Mission State Historic Site	Council Grove	38.665916	-96.493941	Kansas                                  
Kaw Mission State Historic Site	Council Grove	38.665916	-96.493941	Kansas                                  
Kaw Mission State Historic Site	Council Grove	38.665916	-96.493941	Kansas                                  
Kaw Mission State Historic Site	Council Grove	38.665916	-96.493941	Kansas                                  
Kaw Mission State Historic Site	Council Grove	38.665916	-96.493941	Kansas                                  
Kearny County Museum	Lakin	37.9385003	-101.2566896	Kansas                                  
Kearny County Museum	Lakin	37.9385003	-101.2566896	Kansas                                  
Kearny County Museum	Lakin	37.9385003	-101.2566896	Kansas                                  
Kearny County Museum	Lakin	37.9385003	-101.2566896	Kansas                                  
Kearny County Museum	Lakin	37.9385003	-101.2566896	Kansas                                  
Kearny County Museum	Lakin	37.9385003	-101.2566896	Kansas                                  
Keystone Gallery	Scott City	38.7432586	-100.8689258	Kansas                                  
Keystone Gallery	Scott City	38.7432586	-100.8689258	Kansas                                  
Keystone Gallery	Scott City	38.7432586	-100.8689258	Kansas                                  
Keystone Gallery	Scott City	38.7432586	-100.8689258	Kansas                                  
Kimble Castle	Manhattan	39.1792267	-96.5887131	Kansas                                  
Kimble Castle	Manhattan	39.1792267	-96.5887131	Kansas                                  
Kimble Castle	Manhattan	39.1792267	-96.5887131	Kansas                                  
Kimble Castle	Manhattan	39.1792267	-96.5887131	Kansas                                  
Kimble Castle	Manhattan	39.1792267	-96.5887131	Kansas                                  
Kimble Castle	Manhattan	39.1792267	-96.5887131	Kansas                                  
Kingman County Historical Museum	Kingman	37.6453971	-98.1130595	Kansas                                  
Kingman County Historical Museum	Kingman	37.6453971	-98.1130595	Kansas                                  
Kingman Theatre	Kingman	37.643926	-98.1134396	Kansas                                  
Kinsley Halfway Sign	Kinsley	37.9173024	-99.423125	Kansas                                  
Kinsley Halfway Sign	Kinsley	37.9173024	-99.423125	Kansas                                  
Kinsley Halfway Sign	Kinsley	37.9173024	-99.423125	Kansas                                  
Kinsley Halfway Sign	Kinsley	37.9173024	-99.423125	Kansas                                  
Kinsley Halfway Sign	Kinsley	37.9173024	-99.423125	Kansas                                  
Kiowa County Historical Museum and Soda Fountain	Greensburg	37.603431	-99.2925058	Kansas                                  
Kiowa County Historical Museum and Soda Fountain	Greensburg	37.603431	-99.2925058	Kansas                                  
Kiowa County Historical Museum and Soda Fountain	Greensburg	37.603431	-99.2925058	Kansas                                  
Kiowa County Historical Museum and Soda Fountain	Greensburg	37.603431	-99.2925058	Kansas                                  
Kiowa County Historical Museum and Soda Fountain	Greensburg	37.603431	-99.2925058	Kansas                                  
Kiowa County Museum	Greensburg	37.6034632	-99.2926623	Kansas                                  
Kiowa County Museum	Greensburg	37.6034632	-99.2926623	Kansas                                  
Kiowa County Museum	Greensburg	37.6034632	-99.2926623	Kansas                                  
Kiowa County Museum	Greensburg	37.6034632	-99.2926623	Kansas                                  
Kiowa County Museum	Greensburg	37.6034632	-99.2926623	Kansas                                  
Kiowa Historical Society Museum, RSI building	Kiowa	37.0168484	-98.4868316	Kansas                                  
Kiowa Historical Society Museum, RSI building	Kiowa	37.0168484	-98.4868316	Kansas                                  
Kirch Haus	WaKeeney	39.0299254	-99.8837575	Kansas                                  
Kirch Haus	WaKeeney	39.0299254	-99.8837575	Kansas                                  
Knute Rockne Memorial	Matfield Green	38.23591	-96.586703	Kansas                                  
Knute Rockne Memorial	Matfield Green	38.23591	-96.586703	Kansas                                  
La Salsa Man	Dodge City	37.7552866	-100.0203815	Kansas                                  
La Salsa Man	Dodge City	37.7552866	-100.0203815	Kansas                                  
La Salsa Man	Dodge City	37.7552866	-100.0203815	Kansas                                  
Lamont School Historical Marker	Madison	38.113608	-96.026137	Kansas                                  
Lane County Historical Museum	Dighton	38.4849849	-100.4671222	Kansas                                  
Lane County Historical Museum	Dighton	38.4849849	-100.4671222	Kansas                                  
Lane County Historical Museum	Dighton	38.4849849	-100.4671222	Kansas                                  
Lane County Historical Museum	Dighton	38.4849849	-100.4671222	Kansas                                  
Lane County Historical Museum	Dighton	38.4849849	-100.4671222	Kansas                                  
Lane County Historical Museum	Dighton	38.4849849	-100.4671222	Kansas                                  
Lanesfield Historic Site	Edgerton	38.788536	-94.991698	Kansas                                  
Lansing Historical Society and Museum	Lansing	39.2497962	-94.8984463	Kansas                                  
Lansing Historical Society and Museum	Lansing	39.2497962	-94.8984463	Kansas                                  
Lansing Historical Society and Museum	Lansing	39.2497962	-94.8984463	Kansas                                  
Large Mountain Time Sundial	Dodge City	37.7523725	-100.0154429	Kansas                                  
Large Mountain Time Sundial	Dodge City	37.7523725	-100.0154429	Kansas                                  
Large Mountain Time Sundial	Dodge City	37.7523725	-100.0154429	Kansas                                  
Largest Flag in Kansas	Garden City	37.9644498	-100.8531528	Kansas                                  
Largest Flag in Kansas	Garden City	37.9644498	-100.8531528	Kansas                                  
Largest Flag in Kansas	Garden City	37.9644498	-100.8531528	Kansas                                  
Largest Flag in Kansas	Garden City	37.9644498	-100.8531528	Kansas                                  
Largest Flag in Kansas	Garden City	37.9644498	-100.8531528	Kansas                                  
Mary Seaman Ennis House	Goodland	39.3460972	-101.7134618	Kansas                                  
Largest Town Square in the United States	Iola	37.9222417	-95.4044406	Kansas                                  
Largest Town Square in the United States	Iola	37.9222417	-95.4044406	Kansas                                  
Leavenworth County Historical	Leavenworth	39.3066282	-94.9178134	Kansas                                  
Leavenworth County Historical	Leavenworth	39.3066282	-94.9178134	Kansas                                  
Leavenworth County Historical	Leavenworth	39.3066282	-94.9178134	Kansas                                  
Leavenworth County Historical	Leavenworth	39.3066282	-94.9178134	Kansas                                  
Leavenworth County Historical	Leavenworth	39.3066282	-94.9178134	Kansas                                  
Leavenworth County Historical	Leavenworth	39.3066282	-94.9178134	Kansas                                  
Lebo City Calaboose	Lebo	38.4150504	-95.8593932	Kansas                                  
Lebo City Calaboose	Lebo	38.4150504	-95.8593932	Kansas                                  
Lebold Mansion	Abilene	38.9156279	-97.2236642	Kansas                                  
Lebold Mansion	Abilene	38.9156279	-97.2236642	Kansas                                  
Lincoln County Kansas Historical Museum	Lincoln	39.0403999	-98.1502255	Kansas                                  
Lincoln County Kansas Historical Museum	Lincoln	39.0403999	-98.1502255	Kansas                                  
Lincoln County Kansas Historical Museum	Lincoln	39.0403999	-98.1502255	Kansas                                  
Lincoln County Kansas Historical Museum	Lincoln	39.0403999	-98.1502255	Kansas                                  
Lincoln County Kansas Historical Museum	Lincoln	39.0403999	-98.1502255	Kansas                                  
Lincoln County Kansas Historical Museum	Lincoln	39.0403999	-98.1502255	Kansas                                  
Little Arkansas Crossing, Santa Fe Trail	Windom	38.3048582	-97.9374601	Kansas                                  
Little Arkansas Crossing, Santa Fe Trail	Windom	38.3048582	-97.9374601	Kansas                                  
Little Arkansas Crossing, Santa Fe Trail	Windom	38.3048582	-97.9374601	Kansas                                  
Little House on the Prairie Museum	Independence	37.1248745	-95.8363966	Kansas                                  
Little House on the Prairie Museum	Independence	37.1248745	-95.8363966	Kansas                                  
Little House on the Prairie Museum	Independence	37.1248745	-95.8363966	Kansas                                  
Little House on the Prairie Museum	Independence	37.1248745	-95.8363966	Kansas                                  
Little House on the Prairie Museum	Independence	37.1248745	-95.8363966	Kansas                                  
Little Pyramids	Oakley	38.7566683	-100.9486703	Kansas                                  
Little Pyramids	Oakley	38.7566683	-100.9486703	Kansas                                  
Little Pyramids	Oakley	38.7566683	-100.9486703	Kansas                                  
Little Pyramids	Oakley	38.7566683	-100.9486703	Kansas                                  
Little Pyramids	Oakley	38.7566683	-100.9486703	Kansas                                  
Location of Aiken and Sons Mill	Guilford	37.592738	-95.728606	Kansas                                  
Logan Area Historical Museum	Logan	39.6616736	-99.5720139	Kansas                                  
Logan Area Historical Museum	Logan	39.6616736	-99.5720139	Kansas                                  
Logan Area Historical Museum	Logan	39.6616736	-99.5720139	Kansas                                  
Logan Area Historical Museum	Logan	39.6616736	-99.5720139	Kansas                                  
Logan Area Historical Society	Logan	39.6616734	-99.5720139	Kansas                                  
Logan Area Historical Society	Logan	39.6616734	-99.5720139	Kansas                                  
Logan Area Historical Society	Logan	39.6616734	-99.5720139	Kansas                                  
Logan Area Historical Society	Logan	39.6616734	-99.5720139	Kansas                                  
Long Shoals Bridge	Fulton	37.99474	-94.62169	Kansas                                  
Long Shoals Bridge	Fulton	37.99474	-94.62169	Kansas                                  
Longton Calaboose	Longton	37.3782205	-96.0797421	Kansas                                  
Longton Calaboose	Longton	37.3782205	-96.0797421	Kansas                                  
Longton Calaboose	Longton	37.3782205	-96.0797421	Kansas                                  
Longton Calaboose	Longton	37.3782205	-96.0797421	Kansas                                  
Lost Spring Station of the Santa Fe Trail	Ramona	38.5658595	-97.0121429	Kansas                                  
Lost Spring Station of the Santa Fe Trail	Ramona	38.5658595	-97.0121429	Kansas                                  
Lovers Leap Cave Dwelling	Independence	37.1764599	-95.6655243	Kansas                                  
Lovers Leap Cave Dwelling	Independence	37.1764599	-95.6655243	Kansas                                  
Lovers Leap Cave Dwelling	Independence	37.1764599	-95.6655243	Kansas                                  
Lovers Leap Cave Dwelling	Independence	37.1764599	-95.6655243	Kansas                                  
Lyon County History Center	Emporia	38.4066724	-96.1803561	Kansas                                  
Lyon County History Center	Emporia	38.4066724	-96.1803561	Kansas                                  
Lyon County History Center	Emporia	38.4066724	-96.1803561	Kansas                                  
Lyon County History Center	Emporia	38.4066724	-96.1803561	Kansas                                  
Lyon County History Center	Emporia	38.4066724	-96.1803561	Kansas                                  
MUSEUM OF CHEYENNE COUNTY	St Francis	39.7669131	-101.8029654	Kansas                                  
MUSEUM OF CHEYENNE COUNTY	St Francis	39.7669131	-101.8029654	Kansas                                  
Marais des Cygnes Massacre State Historic Site	Pleasanton	38.2817795	-94.6211477	Kansas                                  
Marais des Cygnes Massacre State Historic Site	Pleasanton	38.2817795	-94.6211477	Kansas                                  
Marshall County Historical Soc	Marysville	39.8415124	-96.6425873	Kansas                                  
Marshall County Historical Soc	Marysville	39.8415124	-96.6425873	Kansas                                  
Mary Seaman Ennis House	Goodland	39.3460972	-101.7134618	Kansas                                  
Mary Seaman Ennis House	Goodland	39.3460972	-101.7134618	Kansas                                  
Mary Seaman Ennis House	Goodland	39.3460972	-101.7134618	Kansas                                  
Marysville Union Pacific Depot	Marysville	39.8441718	-96.6489973	Kansas                                  
Marysville Union Pacific Depot	Marysville	39.8441718	-96.6489973	Kansas                                  
McCracken Historical Museum	McCracken	38.5839816	-99.5696358	Kansas                                  
McCracken Historical Museum	McCracken	38.5839816	-99.5696358	Kansas                                  
McCracken Historical Museum	McCracken	38.5839816	-99.5696358	Kansas                                  
McCracken Historical Museum	McCracken	38.5839816	-99.5696358	Kansas                                  
McCracken Historical Museum	McCracken	38.5839816	-99.5696358	Kansas                                  
McLouth Granite Boulder	McLouth	39.1961296	-95.2060378	Kansas                                  
McLouth Granite Boulder	McLouth	39.1961296	-95.2060378	Kansas                                  
McLouth Granite Boulder	McLouth	39.1961296	-95.2060378	Kansas                                  
McLouth Granite Boulder	McLouth	39.1961296	-95.2060378	Kansas                                  
McLouth Granite Boulder	McLouth	39.1961296	-95.2060378	Kansas                                  
McPherson Globe Refiners Statue	McPherson	38.3703285	-97.6656105	Kansas                                  
McPherson Globe Refiners Statue	McPherson	38.3703285	-97.6656105	Kansas                                  
McPherson Globe Refiners Statue	McPherson	38.3703285	-97.6656105	Kansas                                  
McPherson Globe Refiners Statue	McPherson	38.3703285	-97.6656105	Kansas                                  
Meade County Historical	Meade	37.2856544	-100.3384266	Kansas                                  
Meade County Historical	Meade	37.2856544	-100.3384266	Kansas                                  
Meade County Historical	Meade	37.2856544	-100.3384266	Kansas                                  
Meade County Historical	Meade	37.2856544	-100.3384266	Kansas                                  
Meade County Historical	Meade	37.2856544	-100.3384266	Kansas                                  
Meade State Park	Meade	37.1637455	-100.4357972	Kansas                                  
Meade State Park	Meade	37.1637455	-100.4357972	Kansas                                  
Meades Ranch Triangulation Station Historical Marker	Osborne	39.4524277	-98.6935513	Kansas                                  
Meades Ranch Triangulation Station Historical Marker	Osborne	39.4524277	-98.6935513	Kansas                                  
Meades Ranch Triangulation Station Historical Marker	Osborne	39.4524277	-98.6935513	Kansas                                  
Meades Ranch Triangulation Station Historical Marker	Osborne	39.4524277	-98.6935513	Kansas                                  
Meades Ranch Triangulation Station Historical Marker	Osborne	39.4524277	-98.6935513	Kansas                                  
Medicine Lodge Railroad Depot	Medicine Lodge	37.2812878	-98.5883089	Kansas                                  
Medicine Lodge Railroad Depot	Medicine Lodge	37.2812878	-98.5883089	Kansas                                  
Medicine Lodge Railroad Depot	Medicine Lodge	37.2812878	-98.5883089	Kansas                                  
Memorial Carillon and Campanile	Lawrence	38.9600418	-95.2469352	Kansas                                  
Memorial Carillon and Campanile	Lawrence	38.9600418	-95.2469352	Kansas                                  
Memorial Carillon and Campanile	Lawrence	38.9600418	-95.2469352	Kansas                                  
Memorial Carillon and Campanile	Lawrence	38.9600418	-95.2469352	Kansas                                  
Memorial Carillon and Campanile	Lawrence	38.9600418	-95.2469352	Kansas                                  
Mennonite Centennial Memorial	Peabody	38.16482	-97.106677	Kansas                                  
Miami County Kansas Historical Society & Museum	Paola	38.5727047	-94.8772177	Kansas                                  
Miami County Kansas Historical Society & Museum	Paola	38.5727047	-94.8772177	Kansas                                  
Miami County Kansas Historical Society & Museum	Paola	38.5727047	-94.8772177	Kansas                                  
Miami County Kansas Historical Society & Museum	Paola	38.5727047	-94.8772177	Kansas                                  
Miami County Kansas Historical Society & Museum	Paola	38.5727047	-94.8772177	Kansas                                  
Mid-America Air Museum	Liberal	37.0388389	-100.9512739	Kansas                                  
Mid-America Air Museum	Liberal	37.0388389	-100.9512739	Kansas                                  
Mill Race Dam	Kingman	37.6377901	-98.1087014	Kansas                                  
Mill Race Dam	Kingman	37.6377901	-98.1087014	Kansas                                  
Mill Race Dam	Kingman	37.6377901	-98.1087014	Kansas                                  
Mine Creek Civil War Battlefield State Historic Site	Pleasanton	38.1450211	-94.7234358	Kansas                                  
Mine Creek Civil War Battlefield State Historic Site	Pleasanton	38.1450211	-94.7234358	Kansas                                  
Mine Creek Civil War Battlefield State Historic Site	Pleasanton	38.1450211	-94.7234358	Kansas                                  
Mine Creek Civil War Battlefield State Historic Site	Pleasanton	38.1450211	-94.7234358	Kansas                                  
Mingo - Oldest Active Geocache in the World	Colby	39.277916	-100.9436992	Kansas                                  
Mingo - Oldest Active Geocache in the World	Colby	39.277916	-100.9436992	Kansas                                  
Mingo - Oldest Active Geocache in the World	Colby	39.277916	-100.9436992	Kansas                                  
Mingo - Oldest Active Geocache in the World	Colby	39.277916	-100.9436992	Kansas                                  
Minneola Reformed Presbyterian Church	Minneola	37.4391765	-100.0165723	Kansas                                  
Minneola Reformed Presbyterian Church	Minneola	37.4391765	-100.0165723	Kansas                                  
Missouri-Pacific Railroad Depot	Downs	39.5025959	-98.5434559	Kansas                                  
Missouri-Pacific Railroad Depot	Downs	39.5025959	-98.5434559	Kansas                                  
Missouri-Pacific Railroad Depot	Downs	39.5025959	-98.5434559	Kansas                                  
Mitchell County Historical Society Museum	Beloit	39.4783376	-98.1175449	Kansas                                  
Mitchell County Historical Society Museum	Beloit	39.4783376	-98.1175449	Kansas                                  
Mitchell County Historical Society Museum	Beloit	39.4783376	-98.1175449	Kansas                                  
Mitchell County Historical Society Museum	Beloit	39.4783376	-98.1175449	Kansas                                  
Mitchell County Historical Society Museum	Beloit	39.4783376	-98.1175449	Kansas                                  
Mitchell County Historical Society Museum	Beloit	39.4783376	-98.1175449	Kansas                                  
Monticello Community Historical Society	Shawnee	38.97801	-94.862608	Kansas                                  
Monticello Community Historical Society	Shawnee	38.97801	-94.862608	Kansas                                  
Monticello Community Historical Society	Shawnee	38.97801	-94.862608	Kansas                                  
Monticello Community Historical Society	Shawnee	38.97801	-94.862608	Kansas                                  
Monticello Community Historical Society	Shawnee	38.97801	-94.862608	Kansas                                  
Monticello Community Historical Society	Shawnee	38.97801	-94.862608	Kansas                                  
Monticello Community Historical Society	Shawnee	38.97801	-94.862608	Kansas                                  
Monument Rocks	Oakley	38.7954826	-100.7641158	Kansas                                  
Monument Rocks	Oakley	38.7954826	-100.7641158	Kansas                                  
Monument Rocks	Oakley	38.7954826	-100.7641158	Kansas                                  
Monument Rocks	Oakley	38.7954826	-100.7641158	Kansas                                  
Monument Rocks Natural Landmark	Scott City	38.794158	-100.7631291	Kansas                                  
Monument to the Ice Age	Blue Rapids	39.6816041	-96.6595109	Kansas                                  
Monument to the Ice Age	Blue Rapids	39.6816041	-96.6595109	Kansas                                  
Monument to the Ice Age	Blue Rapids	39.6816041	-96.6595109	Kansas                                  
Monument to the Ice Age	Blue Rapids	39.6816041	-96.6595109	Kansas                                  
Morton County Historical Society Museum	Elkhart	37.0036702	-101.8881084	Kansas                                  
Mulvane Historical Museum	Mulvane	37.4737894	-97.2462431	Kansas                                  
Mulvane Historical Museum	Mulvane	37.4737894	-97.2462431	Kansas                                  
Mulvane Historical Museum	Mulvane	37.4737894	-97.2462431	Kansas                                  
Mulvane Historical Museum	Mulvane	37.4737894	-97.2462431	Kansas                                  
Murphy Bromelsick House, homesite of John Speer at Hobbs Park Memorial	Lawrence	38.9654163	-95.2275862	Kansas                                  
Murphy Trailhead	Elkhart	37.082956	-101.992038	Kansas                                  
Museum of Ellinwood & Ellinwood Community Historical Society	Ellinwood	38.354891	-98.5814175	Kansas                                  
Museum of Ellinwood & Ellinwood Community Historical Society	Ellinwood	38.354891	-98.5814175	Kansas                                  
Museum of Ellinwood & Ellinwood Community Historical Society	Ellinwood	38.354891	-98.5814175	Kansas                                  
Museum of the Great Plains	Leoti	38.4827597	-101.3581745	Kansas                                  
Museum of the Great Plains	Leoti	38.4827597	-101.3581745	Kansas                                  
Museum of the Great Plains	Leoti	38.4827597	-101.3581745	Kansas                                  
Museum of the Great Plains	Leoti	38.4827597	-101.3581745	Kansas                                  
Museum of the Great Plains	Leoti	38.4827597	-101.3581745	Kansas                                  
National Fred Harvey Museum	Leavenworth	39.3118628	-94.9165622	Kansas                                  
Native Stone Scenic Byway Historical Marker	Alma	38.9073333	-96.2799133	Kansas                                  
Native Stone Scenic Byway Historical Marker	Alma	38.9073333	-96.2799133	Kansas                                  
Native Stone Scenic Byway Historical Marker	Alma	38.9073333	-96.2799133	Kansas                                  
Native Stone Scenic Byway Historical Marker	Alma	38.9073333	-96.2799133	Kansas                                  
Native Stone Scenic Byway Historical Marker	Alma	38.9073333	-96.2799133	Kansas                                  
Native Stone Scenic Byway Historical Marker	Alma	38.9073333	-96.2799133	Kansas                                  
Native Stone Scenic Byway Historical Marker	Alma	38.9073333	-96.2799133	Kansas                                  
Nekoma Bank Museum	La Crosse	38.5245774	-99.3120843	Kansas                                  
Nekoma Bank Museum	La Crosse	38.5245774	-99.3120843	Kansas                                  
Nemaha County Historical Museum	Seneca	39.8361201	-96.0638549	Kansas                                  
Nemaha County Historical Museum	Seneca	39.8361201	-96.0638549	Kansas                                  
Nemaha County Historical Museum	Seneca	39.8361201	-96.0638549	Kansas                                  
Nemaha County Historical Museum	Seneca	39.8361201	-96.0638549	Kansas                                  
Neodesha Historical Museum	Neodesha	37.4170922	-95.6747663	Kansas                                  
Neodesha Historical Museum	Neodesha	37.4170922	-95.6747663	Kansas                                  
Ness County Bank Building	Ness City	38.4540034	-99.9052691	Kansas                                  
Ness County Bank Building	Ness City	38.4540034	-99.9052691	Kansas                                  
New Scandinavia Memorial	Scandia	39.7983386	-97.7864413	Kansas                                  
New Scandinavia Memorial	Scandia	39.7983386	-97.7864413	Kansas                                  
Nicodemus Historic Baseball Diamond	Bogue	39.3932834	-99.6180579	Kansas                                  
Nicodemus Historic Baseball Diamond	Bogue	39.3932834	-99.6180579	Kansas                                  
Nicodemus Historic Baseball Diamond	Bogue	39.3932834	-99.6180579	Kansas                                  
Nicodemus Historic Baseball Diamond	Bogue	39.3932834	-99.6180579	Kansas                                  
Nicodemus Historical Society	Bogue	39.3882245	-99.6187108	Kansas                                  
Nicodemus Historical Society	Bogue	39.3882245	-99.6187108	Kansas                                  
Nicodemus Historical Society	Bogue	39.3882245	-99.6187108	Kansas                                  
Nicodemus Historical Society	Bogue	39.3882245	-99.6187108	Kansas                                  
Nicodemus National Historic Site	Bogue	39.3933595	-99.6146777	Kansas                                  
Nicodemus National Historic Site	Bogue	39.3933595	-99.6146777	Kansas                                  
Nicodemus National Historic Site	Bogue	39.3933595	-99.6146777	Kansas                                  
Nicodemus National Historic Site	Bogue	39.3933595	-99.6146777	Kansas                                  
North Branch Otter Creek Bridge 1908	Piedmont	37.690857	-96.38035	Kansas                                  
North Branch Otter Creek Bridge 1908	Piedmont	37.690857	-96.38035	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northrup House	Iola	37.9219756	-95.4000976	Kansas                                  
Northwest Kansas Heritage	Brewster	39.3621752	-101.3768303	Kansas                                  
Norton County Museum	Norton	39.8303379	-99.8886054	Kansas                                  
Norton County Museum	Norton	39.8303379	-99.8886054	Kansas                                  
Norton County Museum	Norton	39.8303379	-99.8886054	Kansas                                  
Ogden Monument	Fort Riley	39.0643223	-96.7928187	Kansas                                  
Ogden Monument	Fort Riley	39.0643223	-96.7928187	Kansas                                  
Ogden Monument	Fort Riley	39.0643223	-96.7928187	Kansas                                  
Ogden Monument	Fort Riley	39.0643223	-96.7928187	Kansas                                  
Ogden Monument	Fort Riley	39.0643223	-96.7928187	Kansas                                  
Ogden Monument	Fort Riley	39.0643223	-96.7928187	Kansas                                  
Old Bank Gallery	Dighton	38.4819244	-100.4657096	Kansas                                  
Old Bank Gallery	Dighton	38.4819244	-100.4657096	Kansas                                  
Old Depot Museum	Ottawa	38.620439	-95.269717	Kansas                                  
Old Depot Museum	Ottawa	38.620439	-95.269717	Kansas                                  
Old Depot Museum	Ottawa	38.620439	-95.269717	Kansas                                  
Old Jefferson Town	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Old Jefferson Town	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Old Jefferson Town	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Old Jefferson Town	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Old Jefferson Town	Oskaloosa	39.2136142	-95.3095744	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Dam	Fredonia	37.5146161	-95.8491375	Kansas                                  
Old Mill Plaza	Newton	38.0452683	-97.3452638	Kansas                                  
Old Mill Plaza	Newton	38.0452683	-97.3452638	Kansas                                  
Old Mill Plaza	Newton	38.0452683	-97.3452638	Kansas                                  
Old Mill Plaza	Newton	38.0452683	-97.3452638	Kansas                                  
Old Missouri Pacific/Union Pacific Depot	Tribune	38.47311	-101.7923244	Kansas                                  
Old Missouri Pacific/Union Pacific Depot	Tribune	38.47311	-101.7923244	Kansas                                  
Old Missouri Pacific/Union Pacific Depot	Tribune	38.47311	-101.7923244	Kansas                                  
Old Prairie Town at Ward-Meade Historic Site and Botanical Garden	Topeka	39.0634685	-95.6833076	Kansas                                  
Old Prairie Town at Ward-Meade Historic Site and Botanical Garden	Topeka	39.0634685	-95.6833076	Kansas                                  
Old Prairie Town at Ward-Meade Historic Site and Botanical Garden	Topeka	39.0634685	-95.6833076	Kansas                                  
Old Prairie Town at Ward-Meade Historic Site and Botanical Garden	Topeka	39.0634685	-95.6833076	Kansas                                  
Old Prairie Town at Ward-Meade Historic Site and Botanical Garden	Topeka	39.0634685	-95.6833076	Kansas                                  
Old Prairie Town at Ward-Meade Historic Site and Botanical Garden	Topeka	39.0634685	-95.6833076	Kansas                                  
Old Santa Fe Trail along the northside Cimmaron River	Elkhart	37.144442	-101.8558295	Kansas                                  
Old Santa Fe Trail along the northside Cimmaron River	Elkhart	37.144442	-101.8558295	Kansas                                  
Old Santa Fe Trail along the northside Cimmaron River	Elkhart	37.144442	-101.8558295	Kansas                                  
Old Santa Fe Trail along the northside Cimmaron River	Elkhart	37.144442	-101.8558295	Kansas                                  
Old School House	Harveyville	38.7448722	-95.9643915	Kansas                                  
Old School House	Harveyville	38.7448722	-95.9643915	Kansas                                  
Old School House	Harveyville	38.7448722	-95.9643915	Kansas                                  
Old School House	Harveyville	38.7448722	-95.9643915	Kansas                                  
Old Texaco Gas Station	Scott City	38.4822033	-100.9141752	Kansas                                  
Old Texaco Gas Station	Scott City	38.4822033	-100.9141752	Kansas                                  
Old Texaco Gas Station	Scott City	38.4822033	-100.9141752	Kansas                                  
Old Texaco Gas Station	Scott City	38.4822033	-100.9141752	Kansas                                  
Old Town Information	Wichita	37.6876891	-97.3284499	Kansas                                  
Old Town Information	Wichita	37.6876891	-97.3284499	Kansas                                  
Old Town Information	Wichita	37.6876891	-97.3284499	Kansas                                  
Old Town Information	Wichita	37.6876891	-97.3284499	Kansas                                  
Old Town Information	Wichita	37.6876891	-97.3284499	Kansas                                  
Old US 40 Service Station	Ellis	38.9371854	-99.5676589	Kansas                                  
Old US 40 Service Station	Ellis	38.9371854	-99.5676589	Kansas                                  
Old US 40 Service Station	Ellis	38.9371854	-99.5676589	Kansas                                  
Old US 40 Service Station	Ellis	38.9371854	-99.5676589	Kansas                                  
Old West Mural	Dodge City	37.7554013	-100.0206286	Kansas                                  
Old West Mural	Dodge City	37.7554013	-100.0206286	Kansas                                  
Old West Mural	Dodge City	37.7554013	-100.0206286	Kansas                                  
Old Whitewater Jail	Whitewater	37.9632003	-97.1502693	Kansas                                  
Old Whitewater Jail	Whitewater	37.9632003	-97.1502693	Kansas                                  
Old Whitewater Jail	Whitewater	37.9632003	-97.1502693	Kansas                                  
Old Whitewater Jail	Whitewater	37.9632003	-97.1502693	Kansas                                  
Onaga Historical Society	Onaga	39.4889827	-96.1659909	Kansas                                  
Onaga Historical Society	Onaga	39.4889827	-96.1659909	Kansas                                  
Onaga Historical Society	Onaga	39.4889827	-96.1659909	Kansas                                  
Onaga Historical Society	Onaga	39.4889827	-96.1659909	Kansas                                  
Onaga Historical Society	Onaga	39.4889827	-96.1659909	Kansas                                  
Onaga Historical Society	Onaga	39.4889827	-96.1659909	Kansas                                  
Oregon Trail Monument	St Marys	39.1910513	-96.0616984	Kansas                                  
Oregon Trail Monument	St Marys	39.1910513	-96.0616984	Kansas                                  
Oregon Trail gravesite	Westmoreland	39.3836633	-96.4069085	Kansas                                  
Oregon Trail gravesite	Westmoreland	39.3836633	-96.4069085	Kansas                                  
Oregon and Santa Fe Trailheads	Fort Leavenworth	39.3557721	-94.9138218	Kansas                                  
Oregon and Santa Fe Trailheads	Fort Leavenworth	39.3557721	-94.9138218	Kansas                                  
Oregon and Santa Fe Trailheads	Fort Leavenworth	39.3557721	-94.9138218	Kansas                                  
Osage County Historical Society	Lyndon	38.6096926	-95.6842973	Kansas                                  
Osage County Historical Society	Lyndon	38.6096926	-95.6842973	Kansas                                  
Osage County Historical Society	Lyndon	38.6096926	-95.6842973	Kansas                                  
Osage County Historical Society	Lyndon	38.6096926	-95.6842973	Kansas                                  
Ottawa County Museum	Minneapolis	39.1210963	-97.7084219	Kansas                                  
Ottawa County Museum	Minneapolis	39.1210963	-97.7084219	Kansas                                  
Overland Park Historical Society	Overland Park	38.9856332	-94.6705746	Kansas                                  
Overland Park Historical Society	Overland Park	38.9856332	-94.6705746	Kansas                                  
Overland Park Historical Society	Overland Park	38.9856332	-94.6705746	Kansas                                  
Pachta homestead	Cuba	39.8294677	-97.5382069	Kansas                                  
Pachta homestead	Cuba	39.8294677	-97.5382069	Kansas                                  
Pachta homestead	Cuba	39.8294677	-97.5382069	Kansas                                  
Paradise Water Tower	Paradise	39.1179884	-98.9158879	Kansas                                  
Paradise Water Tower	Paradise	39.1179884	-98.9158879	Kansas                                  
Paradise Water Tower	Paradise	39.1179884	-98.9158879	Kansas                                  
Paradise Water Tower	Paradise	39.1179884	-98.9158879	Kansas                                  
Parker Community Historical Society.	Parker	38.3282398	-94.9904877	Kansas                                  
Parsons Historical Museum	Parsons	37.3373895	-95.2626607	Kansas                                  
Parsons Historical Museum	Parsons	37.3373895	-95.2626607	Kansas                                  
Parsons Historical Museum	Parsons	37.3373895	-95.2626607	Kansas                                  
Parsons Historical Museum	Parsons	37.3373895	-95.2626607	Kansas                                  
Parsons Historical Museum	Parsons	37.3373895	-95.2626607	Kansas                                  
Pawnee Rock Historical Marker	Pawnee Rock	38.2614174	-98.9869407	Kansas                                  
Pawnee Rock Historical Marker	Pawnee Rock	38.2614174	-98.9869407	Kansas                                  
Pawnee Rock Historical Marker	Pawnee Rock	38.2614174	-98.9869407	Kansas                                  
Pawnee Rock State Historic Site	Pawnee Rock	38.2723361	-98.9821631	Kansas                                  
Pawnee Rock State Historic Site	Pawnee Rock	38.2723361	-98.9821631	Kansas                                  
Pawnee Rock State Historic Site	Pawnee Rock	38.2723361	-98.9821631	Kansas                                  
Pawnee Rock State Historic Site	Pawnee Rock	38.2723361	-98.9821631	Kansas                                  
Pawnee Rock State Historic Site	Pawnee Rock	38.2723361	-98.9821631	Kansas                                  
Pioneer Jail	Council Grove	38.6618794	-96.4807063	Kansas                                  
Pioneer Jail	Council Grove	38.6618794	-96.4807063	Kansas                                  
Pioneer Jail	Council Grove	38.6618794	-96.4807063	Kansas                                  
Pioneer Jail	Council Grove	38.6618794	-96.4807063	Kansas                                  
Pioneer Jail	Council Grove	38.6618794	-96.4807063	Kansas                                  
Pioneer Krier Museum	Ashland	37.1928563	-99.7706795	Kansas                                  
Pioneer Krier Museum	Ashland	37.1928563	-99.7706795	Kansas                                  
Pioneer Krier Museum	Ashland	37.1928563	-99.7706795	Kansas                                  
Pleasant Hill Cemetery	Enterprise	38.888515	-97.074956	Kansas                                  
Pleasant Hill Cemetery	Enterprise	38.888515	-97.074956	Kansas                                  
Point Of Rocks	Elkhart	37.1038513	-101.9386213	Kansas                                  
Post Rock Scout Museum	Lincoln	39.0400688	-98.1462656	Kansas                                  
Pottawatomie Massacre	Lane	38.4394078	-95.0840813	Kansas                                  
Pottawatomie Massacre	Lane	38.4394078	-95.0840813	Kansas                                  
Pottawatomie Massacre	Lane	38.4394078	-95.0840813	Kansas                                  
Powwow Grounds at Memorial Peace Park	Medicine Lodge	37.267918	-98.5505778	Kansas                                  
Powwow Grounds at Memorial Peace Park	Medicine Lodge	37.267918	-98.5505778	Kansas                                  
Prairie Dog State Park	Norton	39.8051101	-99.9440255	Kansas                                  
Prairie Museum-Art & History	Colby	39.3690406	-101.0449853	Kansas                                  
Prairie Museum-Art & History	Colby	39.3690406	-101.0449853	Kansas                                  
Prairie Museum-Art & History	Colby	39.3690406	-101.0449853	Kansas                                  
Prairie Museum-Art & History	Colby	39.3690406	-101.0449853	Kansas                                  
Pratt County Historical Museum	Pratt	37.6445462	-98.7380052	Kansas                                  
Pratt County Historical Museum	Pratt	37.6445462	-98.7380052	Kansas                                  
Pratt County Historical Museum	Pratt	37.6445462	-98.7380052	Kansas                                  
Pratt County Historical Museum	Pratt	37.6445462	-98.7380052	Kansas                                  
Rainbow Bridge(Finney Rd Bridge)	Valley Falls	39.3495624	-95.4795844	Kansas                                  
Randall Girl Scout Cabin	Liberal	37.0508833	-100.925308	Kansas                                  
Randall Girl Scout Cabin	Liberal	37.0508833	-100.925308	Kansas                                  
Randall Girl Scout Cabin	Liberal	37.0508833	-100.925308	Kansas                                  
RavenHearse Manor	Atchison	39.5665097	-95.1198777	Kansas                                  
RavenHearse Manor	Atchison	39.5665097	-95.1198777	Kansas                                  
Rawlins County Museum	Atwood	39.8064127	-101.0429984	Kansas                                  
Rawlins County Museum	Atwood	39.8064127	-101.0429984	Kansas                                  
Red Rocks State Historic Site	Emporia	38.4096136	-96.1753485	Kansas                                  
Red Rocks State Historic Site	Emporia	38.4096136	-96.1753485	Kansas                                  
Red Rocks State Historic Site	Emporia	38.4096136	-96.1753485	Kansas                                  
Red Rocks State Historic Site	Emporia	38.4096136	-96.1753485	Kansas                                  
Red Rocks State Historic Site	Emporia	38.4096136	-96.1753485	Kansas                                  
Reno County Museum	Hutchinson	38.050614	-97.929828	Kansas                                  
Reno County Museum	Hutchinson	38.050614	-97.929828	Kansas                                  
Reno County Museum	Hutchinson	38.050614	-97.929828	Kansas                                  
Replica Statue of Liberty	Russell	38.8889587	-98.8625372	Kansas                                  
Replica Statue of Liberty	Russell	38.8889587	-98.8625372	Kansas                                  
Replica Statue of Liberty	Russell	38.8889587	-98.8625372	Kansas                                  
Replica Statue of Liberty	Russell	38.8889587	-98.8625372	Kansas                                  
Republic County Historical Museum	Belleville	39.8130197	-97.6353737	Kansas                                  
Republic County Historical Museum	Belleville	39.8130197	-97.6353737	Kansas                                  
Republic County Historical Museum	Belleville	39.8130197	-97.6353737	Kansas                                  
Republic County Historical Museum	Belleville	39.8130197	-97.6353737	Kansas                                  
Republic County Historical Museum	Belleville	39.8130197	-97.6353737	Kansas                                  
Riley County Historical Museum	Manhattan	39.1923837	-96.5960979	Kansas                                  
Riley County Historical Museum	Manhattan	39.1923837	-96.5960979	Kansas                                  
Riley County Historical Museum	Manhattan	39.1923837	-96.5960979	Kansas                                  
Riley County Historical Museum	Manhattan	39.1923837	-96.5960979	Kansas                                  
Riley County Historical Museum	Manhattan	39.1923837	-96.5960979	Kansas                                  
Riley County Historical Museum	Manhattan	39.1923837	-96.5960979	Kansas                                  
Riverside Park Dinosaur Statue	Independence	37.2383927	-95.7009533	Kansas                                  
Riverside Park Dinosaur Statue	Independence	37.2383927	-95.7009533	Kansas                                  
Road Side Park	Medicine Lodge	37.2757337	-98.5960897	Kansas                                  
Road Side Park	Medicine Lodge	37.2757337	-98.5960897	Kansas                                  
Roadside Marker The Story of Agriculture	Goodland	39.5894673	-101.7135657	Kansas                                  
Roadside Marker The Story of Agriculture	Goodland	39.5894673	-101.7135657	Kansas                                  
Rock Creek Valley Historical Society	Westmoreland	39.3911853	-96.4106113	Kansas                                  
Rock Creek Valley Historical Society	Westmoreland	39.3911853	-96.4106113	Kansas                                  
Rodeo Arena at Memorial Peace Park	Medicine Lodge	37.267717	-98.5659148	Kansas                                  
Rodeo Arena at Memorial Peace Park	Medicine Lodge	37.267717	-98.5659148	Kansas                                  
Rodeo Arena at Memorial Peace Park	Medicine Lodge	37.267717	-98.5659148	Kansas                                  
Rodeo Arena at Memorial Peace Park	Medicine Lodge	37.267717	-98.5659148	Kansas                                  
Rolling Hills Missile Silo	Westfall	39.0678324	-98.0157051	Kansas                                  
Rolling Hills Missile Silo	Westfall	39.0678324	-98.0157051	Kansas                                  
Rolling Hills Missile Silo	Westfall	39.0678324	-98.0157051	Kansas                                  
Rooks County Historical Society & Museum	Stockton	39.4277441	-99.2756594	Kansas                                  
Rooks County Historical Society & Museum	Stockton	39.4277441	-99.2756594	Kansas                                  
Rooks County Historical Society & Museum	Stockton	39.4277441	-99.2756594	Kansas                                  
Rooks County Historical Society & Museum	Stockton	39.4277441	-99.2756594	Kansas                                  
Rose Hill Historical Society	Rose Hill	37.5589645	-97.1335978	Kansas                                  
Rose Hill Historical Society	Rose Hill	37.5589645	-97.1335978	Kansas                                  
Rose Hill Historical Society	Rose Hill	37.5589645	-97.1335978	Kansas                                  
Rose Hill Historical Society	Rose Hill	37.5589645	-97.1335978	Kansas                                  
Rush County Historical Museum	La Crosse	38.5245324	-99.3121834	Kansas                                  
Rush County Historical Museum	La Crosse	38.5245324	-99.3121834	Kansas                                  
Rush County Historical Museum	La Crosse	38.5245324	-99.3121834	Kansas                                  
Rush County Historical Museum	La Crosse	38.5245324	-99.3121834	Kansas                                  
Rush County Historical Museum	La Crosse	38.5245324	-99.3121834	Kansas                                  
Rush County Historical Museum	La Crosse	38.5245324	-99.3121834	Kansas                                  
Russell County Historical Society and Genealogy Society	Russell	38.888509	-98.8583798	Kansas                                  
Russell County Historical Society and Genealogy Society	Russell	38.888509	-98.8583798	Kansas                                  
Russell County Historical Society and Genealogy Society	Russell	38.888509	-98.8583798	Kansas                                  
Salt Discovery Well	South Hutchinson	38.0137317	-97.9458296	Kansas                                  
Salt Discovery Well	South Hutchinson	38.0137317	-97.9458296	Kansas                                  
Salt Discovery Well	South Hutchinson	38.0137317	-97.9458296	Kansas                                  
Salt Discovery Well	South Hutchinson	38.0137317	-97.9458296	Kansas                                  
Samson of the Cimarron bridge	Liberal	37.1497254	-100.7534909	Kansas                                  
Samson of the Cimarron bridge	Liberal	37.1497254	-100.7534909	Kansas                                  
Samson of the Cimarron bridge	Liberal	37.1497254	-100.7534909	Kansas                                  
Samson of the Cimarron bridge	Liberal	37.1497254	-100.7534909	Kansas                                  
Santa Fe Depot (Garnett)	Garnett	38.2765967	-95.2407843	Kansas                                  
Santa Fe Trail Center	Larned	38.1882046	-99.1417408	Kansas                                  
Santa Fe Trail Center	Larned	38.1882046	-99.1417408	Kansas                                  
Santa Fe Trail Center	Larned	38.1882046	-99.1417408	Kansas                                  
Santa Fe Trail Center	Larned	38.1882046	-99.1417408	Kansas                                  
Santa Fe Trail Center	Larned	38.1882046	-99.1417408	Kansas                                  
Santa Fe Trail Historical Marker	Richfield	37.2288084	-101.6464368	Kansas                                  
Santa Fe Trail Historical Marker	Richfield	37.2288084	-101.6464368	Kansas                                  
Santa Fe Trail Historical Marker	Richfield	37.2288084	-101.6464368	Kansas                                  
Santa Fe Trail Historical Marker	Richfield	37.2288084	-101.6464368	Kansas                                  
Santa Fe Trail Historical Marker	Ridgeway	38.773719	-95.6859096	Kansas                                  
Santa Fe Trail Marker	Galva	38.3497623	-97.5193763	Kansas                                  
Santa Fe Trail Marker	Galva	38.3497623	-97.5193763	Kansas                                  
Santa Fe Trail Marker	Galva	38.3497623	-97.5193763	Kansas                                  
Santa Fe Trail Marker	Galva	38.3497623	-97.5193763	Kansas                                  
Santa Fe Trail Park	Chase	38.3330244	-98.3405764	Kansas                                  
Santa Fe Trail Park	Chase	38.3330244	-98.3405764	Kansas                                  
Santa Fe Trail Tracks	Fort Dodge	37.7895652	-100.1977533	Kansas                                  
Santa Fe Trail Tracks	Fort Dodge	37.7895652	-100.1977533	Kansas                                  
Santa Fe Trail Tracks	Fort Dodge	37.7895652	-100.1977533	Kansas                                  
Santa Fe Trail Tracks	Fort Dodge	37.7895652	-100.1977533	Kansas                                  
Schweitzer Hotel	Hill City	39.3647154	-99.8444344	Kansas                                  
Scott County Veteran Memorial	Scott City	38.4821635	-100.9021606	Kansas                                  
Scott County Veteran Memorial	Scott City	38.4821635	-100.9021606	Kansas                                  
Scott County Veteran Memorial	Scott City	38.4821635	-100.9021606	Kansas                                  
Scott County Veteran Memorial	Scott City	38.4821635	-100.9021606	Kansas                                  
Scott County Veteran Memorial	Scott City	38.4821635	-100.9021606	Kansas                                  
Scott County Veteran Memorial	Scott City	38.4821635	-100.9021606	Kansas                                  
Scripture Hill	Arkansas City	37.0931897	-97.0306217	Kansas                                  
Scripture Hill	Arkansas City	37.0931897	-97.0306217	Kansas                                  
Seapo Mill	Concordia	39.6837119	-97.54611	Kansas                                  
Seapo Mill	Concordia	39.6837119	-97.54611	Kansas                                  
Seapo Mill	Concordia	39.6837119	-97.54611	Kansas                                  
Seelye Mansion	Abilene	38.9265553	-97.2134846	Kansas                                  
Seelye Mansion	Abilene	38.9265553	-97.2134846	Kansas                                  
Shawnee County Historical Society	Topeka	39.0426068	-95.6721691	Kansas                                  
Shawnee County Historical Society	Topeka	39.0426068	-95.6721691	Kansas                                  
Shawnee County Historical Society	Topeka	39.0426068	-95.6721691	Kansas                                  
Shawnee County Historical Society	Topeka	39.0426068	-95.6721691	Kansas                                  
Shawnee County Historical Society	Topeka	39.0426068	-95.6721691	Kansas                                  
Shawnee County Historical Society	Topeka	39.0426068	-95.6721691	Kansas                                  
Sheridan County Historical Society and Mickey's Museum	Hoxie	39.3574535	-100.4387367	Kansas                                  
Sheridan County Historical Society and Mickey's Museum	Hoxie	39.3574535	-100.4387367	Kansas                                  
Sheridan County Historical Society and Mickey's Museum	Hoxie	39.3574535	-100.4387367	Kansas                                  
Sheridan County Historical Society and Mickey's Museum	Hoxie	39.3574535	-100.4387367	Kansas                                  
Sheridan County Historical Society and Mickey's Museum	Hoxie	39.3574535	-100.4387367	Kansas                                  
Sheridan County Historical Society and Mickey's Museum	Hoxie	39.3574535	-100.4387367	Kansas                                  
Sherman County Historical Society	Goodland	39.3460972	-101.7134327	Kansas                                  
Sherman County Historical Society	Goodland	39.3460972	-101.7134327	Kansas                                  
Sherman County Historical Society	Goodland	39.3460972	-101.7134327	Kansas                                  
Sherman County Historical Society	Goodland	39.3460972	-101.7134327	Kansas                                  
Shiloh Vineyard & Winery	WaKeeney	38.9571307	-100.0415972	Kansas                                  
Shiloh Vineyard & Winery	WaKeeney	38.9571307	-100.0415972	Kansas                                  
Sibley's Camp	Larned	38.1757337	-99.1041752	Kansas                                  
Sibley's Camp	Larned	38.1757337	-99.1041752	Kansas                                  
Sibley's Camp	Larned	38.1757337	-99.1041752	Kansas                                  
Sibley's Camp	Larned	38.1757337	-99.1041752	Kansas                                  
Sibley's Camp	Larned	38.1757337	-99.1041752	Kansas                                  
Signal Oak	Baldwin City	38.804023	-95.1771833	Kansas                                  
Site of First Free Ferry on Smoky Hill River Marker	Salina	38.8404167	-97.6069887	Kansas                                  
Site of First Free Ferry on Smoky Hill River Marker	Salina	38.8404167	-97.6069887	Kansas                                  
Site of First Free Ferry on Smoky Hill River Marker	Salina	38.8404167	-97.6069887	Kansas                                  
Site of First Free Ferry on Smoky Hill River Marker	Salina	38.8404167	-97.6069887	Kansas                                  
Six Mile Creek Stage Station	Burdick	38.6050539	-96.8565196	Kansas                                  
Soldiers and Sailors Monument	Hutchinson	38.0532316	-97.929881	Kansas                                  
Soldiers and Sailors Monument	Hutchinson	38.0532316	-97.929881	Kansas                                  
Soldiers and Sailors Monument	Hutchinson	38.0532316	-97.929881	Kansas                                  
Soldiers and Sailors Monument	Hutchinson	38.0532316	-97.929881	Kansas                                  
Soldiers and Sailors Monument	Hutchinson	38.0532316	-97.929881	Kansas                                  
Solomon Valley/Highway Portis Historical Marker	Portis	39.5611794	-98.6917208	Kansas                                  
Solomon Valley/Highway Portis Historical Marker	Portis	39.5611794	-98.6917208	Kansas                                  
Solomon Valley/Highway Portis Historical Marker	Portis	39.5611794	-98.6917208	Kansas                                  
Solomon Valley/Highway Portis Historical Marker	Portis	39.5611794	-98.6917208	Kansas                                  
Souders Historical Farm Museum	Cheney	37.616844	-97.79978	Kansas                                  
Souders Historical Farm Museum	Cheney	37.616844	-97.79978	Kansas                                  
Souders Historical Farm Museum	Cheney	37.616844	-97.79978	Kansas                                  
Souders Historical Farm Museum	Cheney	37.616844	-97.79978	Kansas                                  
Souders Historical Farm Museum	Cheney	37.616844	-97.79978	Kansas                                  
Souders Historical Farm Museum	Cheney	37.616844	-97.79978	Kansas                                  
South Fork Spillman Creek Double Arch Bridge	Sylvan Grove	39.1406647	-98.3966433	Kansas                                  
South Fork Spillman Creek Double Arch Bridge	Sylvan Grove	39.1406647	-98.3966433	Kansas                                  
South Fork Spillman Creek Double Arch Bridge	Sylvan Grove	39.1406647	-98.3966433	Kansas                                  
South Fork Spillman Creek Double Arch Bridge	Sylvan Grove	39.1406647	-98.3966433	Kansas                                  
South Fork Spillman Creek Double Arch Bridge	Sylvan Grove	39.1406647	-98.3966433	Kansas                                  
Spanish-American Memorial	Wichita	37.6974268	-97.3494597	Kansas                                  
Spring Hill Ranch House	Strong City	38.4343005	-96.5577578	Kansas                                  
Spring Hill Ranch House	Strong City	38.4343005	-96.5577578	Kansas                                  
Spring Valley Historic Site	Junction City	39.0296294	-96.8721267	Kansas                                  
Spring Valley Historic Site	Junction City	39.0296294	-96.8721267	Kansas                                  
Spring Valley Historic Site	Junction City	39.0296294	-96.8721267	Kansas                                  
Spring Valley Historic Site	Junction City	39.0296294	-96.8721267	Kansas                                  
Spring Valley Historic Site	Junction City	39.0296294	-96.8721267	Kansas                                  
Spring Valley Historic Site	Junction City	39.0296294	-96.8721267	Kansas                                  
St Aloysius Church Historic Site	Girard	37.5140976	-94.9888801	Kansas                                  
St Aloysius Church Historic Site	Girard	37.5140976	-94.9888801	Kansas                                  
St Aloysius Church Historic Site	Girard	37.5140976	-94.9888801	Kansas                                  
St Aloysius Church Historic Site	Girard	37.5140976	-94.9888801	Kansas                                  
St Aloysius Church Historic Site	Girard	37.5140976	-94.9888801	Kansas                                  
St Aloysius Church Historic Site	Girard	37.5140976	-94.9888801	Kansas                                  
St Jacob's Well	Ashland	37.2403698	-99.9818331	Kansas                                  
St Jacob's Well	Ashland	37.2403698	-99.9818331	Kansas                                  
St. Francis Motorcycle Museum	St Francis	39.7744422	-101.8008969	Kansas                                  
St. Francis Motorcycle Museum	St Francis	39.7744422	-101.8008969	Kansas                                  
St. John Statue of Liberty	St John	38.0023756	-98.7604905	Kansas                                  
St. John Statue of Liberty	St John	38.0023756	-98.7604905	Kansas                                  
St. John Statue of Liberty	St John	38.0023756	-98.7604905	Kansas                                  
St. John Statue of Liberty	St John	38.0023756	-98.7604905	Kansas                                  
St. John's Military School Historical Museum	Salina	38.8621729	-97.6119724	Kansas                                  
St. Joseph's Historic Church and Cemetery	Manhattan	39.0519066	-96.6410475	Kansas                                  
St. Joseph's Historic Church and Cemetery	Manhattan	39.0519066	-96.6410475	Kansas                                  
St. Thomas Historic Residences	Colby	39.3930944	-101.0551821	Kansas                                  
Stafford County Museum	Stafford	37.9618726	-98.600179	Kansas                                  
Stafford County Museum	Stafford	37.9618726	-98.600179	Kansas                                  
Stafford County Museum	Stafford	37.9618726	-98.600179	Kansas                                  
Stafford County Museum	Stafford	37.9618726	-98.600179	Kansas                                  
Stanton County Museum	Johnson City	37.5633303	-101.7496836	Kansas                                  
Stanton County Museum	Johnson City	37.5633303	-101.7496836	Kansas                                  
Stanton County Museum	Johnson City	37.5633303	-101.7496836	Kansas                                  
Stanton County Museum	Johnson City	37.5633303	-101.7496836	Kansas                                  
Stanton County Museum	Johnson City	37.5633303	-101.7496836	Kansas                                  
Stanton County Museum	Johnson City	37.5633303	-101.7496836	Kansas                                  
Starlight Park	Greensburg	37.6042721	-99.2930673	Kansas                                  
Starlight Park	Greensburg	37.6042721	-99.2930673	Kansas                                  
Starlight Park	Greensburg	37.6042721	-99.2930673	Kansas                                  
Starlight Park	Greensburg	37.6042721	-99.2930673	Kansas                                  
Stauth Memorial Museum	Montezuma	37.596716	-100.442422	Kansas                                  
Stauth Memorial Museum	Montezuma	37.596716	-100.442422	Kansas                                  
Stauth Memorial Museum	Montezuma	37.596716	-100.442422	Kansas                                  
Stauth Memorial Museum	Montezuma	37.596716	-100.442422	Kansas                                  
Steele House Museum	Scott City	38.6733226	-100.9185889	Kansas                                  
Steele House Museum	Scott City	38.6733226	-100.9185889	Kansas                                  
Steele House Museum	Scott City	38.6733226	-100.9185889	Kansas                                  
Steele House Museum	Scott City	38.6733226	-100.9185889	Kansas                                  
Sternberg Museum of Natural History	Hays	38.8890706	-99.2997841	Kansas                                  
Sternberg Museum of Natural History	Hays	38.8890706	-99.2997841	Kansas                                  
Sternberg Museum of Natural History	Hays	38.8890706	-99.2997841	Kansas                                  
Stevens County Gas Museum	Hugoton	37.1726755	-101.341629	Kansas                                  
Stevens County Gas Museum	Hugoton	37.1726755	-101.341629	Kansas                                  
Stevens County Gas Museum	Hugoton	37.1726755	-101.341629	Kansas                                  
Stevens County Gas Museum	Hugoton	37.1726755	-101.341629	Kansas                                  
Stevens County Gas Museum	Hugoton	37.1726755	-101.341629	Kansas                                  
Stevens County Gas Museum	Hugoton	37.1726755	-101.341629	Kansas                                  
Stewart Creek Bridge - 1904	Udall	37.385101	-97.060623	Kansas                                  
Stewart Creek Bridge - 1904	Udall	37.385101	-97.060623	Kansas                                  
Stewart Creek Bridge - 1904	Udall	37.385101	-97.060623	Kansas                                  
Stewart Creek Bridge - 1904	Udall	37.385101	-97.060623	Kansas                                  
Stockade Museum	Medicine Lodge	37.2756653	-98.5819331	Kansas                                  
Stockade Museum	Medicine Lodge	37.2756653	-98.5819331	Kansas                                  
Stockade Museum	Medicine Lodge	37.2756653	-98.5819331	Kansas                                  
Stone Arch Bridge	Aurora	39.393819	-97.5069082	Kansas                                  
Stone Arch Bridge	Aurora	39.393819	-97.5069082	Kansas                                  
Stone Arch Bridge	Aurora	39.393819	-97.5069082	Kansas                                  
Strand Plaza	Salina	38.8396677	-97.6092805	Kansas                                  
Strand Plaza	Salina	38.8396677	-97.6092805	Kansas                                  
Strand Plaza	Salina	38.8396677	-97.6092805	Kansas                                  
Strang Carriage House	Overland Park	38.9827261	-94.6722822	Kansas                                  
Sunflower Coal	Wilson	38.8249243	-98.474255	Kansas                                  
Sunflower Coal	Wilson	38.8249243	-98.474255	Kansas                                  
Sunflower Coal	Wilson	38.8249243	-98.474255	Kansas                                  
Sunflower Coal	Wilson	38.8249243	-98.474255	Kansas                                  
Talmage Historical Society And Museum	Talmage	39.0268896	-97.2597982	Kansas                                  
Tammy Faye Messner Grave	Waldron	37.0063409	-98.1653313	Kansas                                  
Tammy Faye Messner Grave	Waldron	37.0063409	-98.1653313	Kansas                                  
Telephone Building	Goodland	39.3488923	-101.7115682	Kansas                                  
Telephone Building	Goodland	39.3488923	-101.7115682	Kansas                                  
Telephone Building	Goodland	39.3488923	-101.7115682	Kansas                                  
Teter Rock	Eureka	38.0295627	-96.4235637	Kansas                                  
Teter Rock	Eureka	38.0295627	-96.4235637	Kansas                                  
Teter Rock	Eureka	38.0295627	-96.4235637	Kansas                                  
The 1858 Garnett House Hotel	Garnett	38.2809026	-95.2441789	Kansas                                  
The Bonebrake House	Abilene	38.918138	-97.2185078	Kansas                                  
The Bunk House	Ashland	37.1862349	-99.7655301	Kansas                                  
The Caches - Fort Atkinson	Dodge City	37.7586572	-100.0878207	Kansas                                  
The Caches - Fort Atkinson	Dodge City	37.7586572	-100.0878207	Kansas                                  
The Caches - Fort Atkinson	Dodge City	37.7586572	-100.0878207	Kansas                                  
The California-Oregon Trail Historical Marker	Westmoreland	39.3812527	-96.4051985	Kansas                                  
The California-Oregon Trail Historical Marker	Westmoreland	39.3812527	-96.4051985	Kansas                                  
The California-Oregon Trail Historical Marker	Westmoreland	39.3812527	-96.4051985	Kansas                                  
The California-Oregon Trail Historical Marker	Westmoreland	39.3812527	-96.4051985	Kansas                                  
The Coca-Cola Silo	Emporia	38.4193267	-96.22678	Kansas                                  
The Cottonwood River Pratt Truss Bridge	Cedar Point	38.2600736	-96.8342558	Kansas                                  
The Cross-MacTaggart House	Emporia	38.4047111	-96.1761149	Kansas                                  
The Flag Our Fathers Saved	Salina	38.8341622	-97.6026792	Kansas                                  
The Flag Our Fathers Saved	Salina	38.8341622	-97.6026792	Kansas                                  
The Flag Our Fathers Saved	Salina	38.8341622	-97.6026792	Kansas                                  
The Flag Our Fathers Saved	Salina	38.8341622	-97.6026792	Kansas                                  
The Geographic Center -Kansas Historical Marker	Lebanon	39.7845563	-98.5676773	Kansas                                  
The Geographic Center -Kansas Historical Marker	Lebanon	39.7845563	-98.5676773	Kansas                                  
The Geographic Center -Kansas Historical Marker	Lebanon	39.7845563	-98.5676773	Kansas                                  
The Geographic Center -Kansas Historical Marker	Lebanon	39.7845563	-98.5676773	Kansas                                  
The Geographic Center of the United States	Lebanon	39.8283459	-98.5794797	Kansas                                  
The Geographic Center of the United States	Lebanon	39.8283459	-98.5794797	Kansas                                  
The Geographic Center of the United States	Lebanon	39.8283459	-98.5794797	Kansas                                  
The Humboldt Thunderbolt	Humboldt	37.753943	-95.415226	Kansas                                  
The Humboldt Thunderbolt	Humboldt	37.753943	-95.415226	Kansas                                  
The Humboldt Thunderbolt	Humboldt	37.753943	-95.415226	Kansas                                  
The Humboldt Thunderbolt	Humboldt	37.753943	-95.415226	Kansas                                  
The Humboldt Thunderbolt	Humboldt	37.753943	-95.415226	Kansas                                  
The Humboldt Thunderbolt	Humboldt	37.753943	-95.415226	Kansas                                  
The Landmark Inn	Oberlin	39.8191337	-100.5292684	Kansas                                  
The Lane Trail	Sabetha	39.9234714	-95.7888112	Kansas                                  
The Lawrence sign, Lawrence, KS	Lawrence	38.9872185	-95.2333727	Kansas                                  
The Lawrence sign, Lawrence, KS	Lawrence	38.9872185	-95.2333727	Kansas                                  
The Lawrence sign, Lawrence, KS	Lawrence	38.9872185	-95.2333727	Kansas                                  
The Logan House	Russell Springs	38.9129294	-101.1724848	Kansas                                  
The Lucky Tree	Colwich	37.8182452	-97.5093695	Kansas                                  
The Memory Bank and Wallace Trading Company	Wallace	38.9133139	-101.5916122	Kansas                                  
The Memory Bank and Wallace Trading Company	Wallace	38.9133139	-101.5916122	Kansas                                  
The Memory Bank and Wallace Trading Company	Wallace	38.9133139	-101.5916122	Kansas                                  
The Mormon Trail South Fork Historical Marker	Junction City	39.0379154	-96.7655388	Kansas                                  
The Mormon Trail South Fork Historical Marker	Junction City	39.0379154	-96.7655388	Kansas                                  
The Mormon Trail South Fork Historical Marker	Junction City	39.0379154	-96.7655388	Kansas                                  
The Mormon Trail South Fork Historical Marker	Junction City	39.0379154	-96.7655388	Kansas                                  
The Mormon Trail South Fork Historical Marker	Junction City	39.0379154	-96.7655388	Kansas                                  
The Mormon Trail South Fork Historical Marker	Junction City	39.0379154	-96.7655388	Kansas                                  
The Mormon Trail South Fork Historical Marker	Junction City	39.0379154	-96.7655388	Kansas                                  
The Old Baptist Mission or Wea Mission Site	Paola	38.5665705	-94.8483638	Kansas                                  
The Old Jefferson Mercantile	Independence	37.1094176	-95.7624071	Kansas                                  
The Old Jefferson Mercantile	Independence	37.1094176	-95.7624071	Kansas                                  
The Old Jefferson Mercantile	Independence	37.1094176	-95.7624071	Kansas                                  
The Pioneer Family	Victoria	38.8571332	-99.1514786	Kansas                                  
The Pioneer Family	Victoria	38.8571332	-99.1514786	Kansas                                  
The Pioneer Family	Victoria	38.8571332	-99.1514786	Kansas                                  
The Pioneer Family	Victoria	38.8571332	-99.1514786	Kansas                                  
The Post Rock Museum	La Crosse	38.5245774	-99.3120843	Kansas                                  
The Post Rock Museum	La Crosse	38.5245774	-99.3120843	Kansas                                  
The Spencer House Bed and Breakfast	St Francis	39.7722882	-101.8008812	Kansas                                  
The vieux Crossing and the Miltary road	Wamego	39.2564926	-96.2507483	Kansas                                  
The vieux Crossing and the Miltary road	Wamego	39.2564926	-96.2507483	Kansas                                  
The vieux Crossing and the Miltary road	Wamego	39.2564926	-96.2507483	Kansas                                  
The vieux Crossing and the Miltary road	Wamego	39.2564926	-96.2507483	Kansas                                  
The vieux Crossing and the Miltary road	Wamego	39.2564926	-96.2507483	Kansas                                  
The vieux Crossing and the Miltary road	Wamego	39.2564926	-96.2507483	Kansas                                  
They Also Ran Gallery	Norton	39.8292591	-99.889272	Kansas                                  
They Also Ran Gallery	Norton	39.8292591	-99.889272	Kansas                                  
They Also Ran Gallery	Norton	39.8292591	-99.889272	Kansas                                  
Thompson-Wohlschlegel Round Barn	Harper	37.2758347	-97.9677736	Kansas                                  
Thompson-Wohlschlegel Round Barn	Harper	37.2758347	-97.9677736	Kansas                                  
Tommy Young Ranch	Syracuse	38.019803	-101.753951	Kansas                                  
Tommy Young Ranch	Syracuse	38.019803	-101.753951	Kansas                                  
Tonganoxie Historical Society and Museum	Tonganoxie	39.1054415	-95.0965412	Kansas                                  
Tonganoxie Historical Society and Museum	Tonganoxie	39.1054415	-95.0965412	Kansas                                  
Tonganoxie Historical Society and Museum	Tonganoxie	39.1054415	-95.0965412	Kansas                                  
Tonganoxie Historical Society and Museum	Tonganoxie	39.1054415	-95.0965412	Kansas                                  
Tonganoxie Historical Society and Museum	Tonganoxie	39.1054415	-95.0965412	Kansas                                  
Tonganoxie Historical Society and Museum	Tonganoxie	39.1054415	-95.0965412	Kansas                                  
Topeka Pioneer Memorial Plaque	Topeka	39.0548485	-95.7324902	Kansas                                  
Towanda Area Historical Museum	Towanda	37.7955768	-97.0029001	Kansas                                  
Towanda Kansas Historical Marker	Towanda	37.765154	-96.9837078	Kansas                                  
Towanda Kansas Historical Marker	Towanda	37.765154	-96.9837078	Kansas                                  
Towanda Kansas Historical Marker	Towanda	37.765154	-96.9837078	Kansas                                  
Trail City Bed & Breakfast	Coolidge	38.0417595	-102.0114047	Kansas                                  
Trego County Historical Society Museum	WaKeeney	39.024872	-99.8712702	Kansas                                  
Trego County Historical Society Museum	WaKeeney	39.024872	-99.8712702	Kansas                                  
Trego County Historical Society Museum	WaKeeney	39.024872	-99.8712702	Kansas                                  
Trego County Historical Society Museum	WaKeeney	39.024872	-99.8712702	Kansas                                  
Trego County Historical Society Museum	WaKeeney	39.024872	-99.8712702	Kansas                                  
Triple+ R.R. bridges	Scandia	39.787118	-97.790845	Kansas                                  
Triple+ R.R. bridges	Scandia	39.787118	-97.790845	Kansas                                  
Twin Mounds	Brookville	38.8098712	-97.8519902	Kansas                                  
Twin Mounds	Brookville	38.8098712	-97.8519902	Kansas                                  
Twin Mounds	Brookville	38.8098712	-97.8519902	Kansas                                  
Twin Mounds	Brookville	38.8098712	-97.8519902	Kansas                                  
Twin Mounds	Brookville	38.8098712	-97.8519902	Kansas                                  
Twin Mounds	Waldo	39.2804701	-98.7948155	Kansas                                  
Twin Mounds	Waldo	39.2804701	-98.7948155	Kansas                                  
Twin Mounds	Waldo	39.2804701	-98.7948155	Kansas                                  
Twin Mounds	Waldo	39.2804701	-98.7948155	Kansas                                  
Twin Mounds	Westfall	38.8784851	-98.0928972	Kansas                                  
Twin Mounds	Westfall	38.8784851	-98.0928972	Kansas                                  
Twin Mounds	Westfall	38.8784851	-98.0928972	Kansas                                  
Twin Mounds	Westfall	38.8784851	-98.0928972	Kansas                                  
Valley Center Historical Museum	Valley Center	37.8328509	-97.3718137	Kansas                                  
Valley Center Historical Museum	Valley Center	37.8328509	-97.3718137	Kansas                                  
Valley Falls Historical Society	Valley Falls	39.3462669	-95.4565807	Kansas                                  
Vernon Filley Art Museum	Pratt	37.642186	-98.7412234	Kansas                                  
Vernon Filley Art Museum	Pratt	37.642186	-98.7412234	Kansas                                  
Vernon Filley Art Museum	Pratt	37.642186	-98.7412234	Kansas                                  
Vernon Filley Art Museum	Pratt	37.642186	-98.7412234	Kansas                                  
Vernon Filley Art Museum	Pratt	37.642186	-98.7412234	Kansas                                  
Vieux Crossing Cemetery and Historical Marker	Louisville	39.255884	-96.246578	Kansas                                  
Vieux Crossing Cemetery and Historical Marker	Louisville	39.255884	-96.246578	Kansas                                  
Vieux Crossing Cemetery and Historical Marker	Louisville	39.255884	-96.246578	Kansas                                  
Votaw Colony Memorial	Coffeyville	37.065164	-95.605607	Kansas                                  
Votaw Colony Memorial	Coffeyville	37.065164	-95.605607	Kansas                                  
WELLSVILLE HISTORICAL SOCIETY	Wellsville	38.7197679	-95.0821299	Kansas                                  
Wabaunsee County Historical Society & Museum	Alma	39.0126409	-96.2896837	Kansas                                  
Wabaunsee County Historical Society & Museum	Alma	39.0126409	-96.2896837	Kansas                                  
Wabaunsee County Historical Society & Museum	Alma	39.0126409	-96.2896837	Kansas                                  
Wabaunsee County Historical Society & Museum	Alma	39.0126409	-96.2896837	Kansas                                  
Wabaunsee County Historical Society & Museum	Alma	39.0126409	-96.2896837	Kansas                                  
Wabaunsee County Historical Society & Museum	Alma	39.0126409	-96.2896837	Kansas                                  
Waconda Springs Historical Marker	Cawker City	39.5212041	-98.3845938	Kansas                                  
Waconda Springs Historical Marker	Cawker City	39.5212041	-98.3845938	Kansas                                  
Waconda Springs Historical Marker	Cawker City	39.5212041	-98.3845938	Kansas                                  
Waconda Springs Historical Marker	Cawker City	39.5212041	-98.3845938	Kansas                                  
Wagon Bed Spring	Sullivan	37.3983562	-101.3707193	Kansas                                  
Wagon Bed Spring	Sullivan	37.3983562	-101.3707193	Kansas                                  
Wagon Bed Spring	Sullivan	37.3983562	-101.3707193	Kansas                                  
Wagon Bed Spring	Sullivan	37.3983562	-101.3707193	Kansas                                  
Wakarusa River Valley Heritage Museum	Lawrence	38.9095241	-95.3699687	Kansas                                  
Wakarusa River Valley Heritage Museum	Lawrence	38.9095241	-95.3699687	Kansas                                  
Wakarusa River Valley Heritage Museum	Lawrence	38.9095241	-95.3699687	Kansas                                  
Wakarusa River Valley Heritage Museum	Lawrence	38.9095241	-95.3699687	Kansas                                  
Waldron Kansas Cemetery	Waldron	37.0054981	-98.1649867	Kansas                                  
Waldron Kansas Cemetery	Waldron	37.0054981	-98.1649867	Kansas                                  
Walnut Creek Bridge	Valley Falls	39.355183	-95.4585377	Kansas                                  
Walnut Creek Bridge	Valley Falls	39.355183	-95.4585377	Kansas                                  
Walronds Stockade	Bethany	39.546953	-98.6923997	Kansas                                  
Walronds Stockade	Bethany	39.546953	-98.6923997	Kansas                                  
Walronds Stockade	Bethany	39.546953	-98.6923997	Kansas                                  
Walronds Stockade	Bethany	39.546953	-98.6923997	Kansas                                  
Walter Johnson Birthplace Memorial	Humboldt	37.8492399	-95.4551614	Kansas                                  
Wamego Historical Museum	Wamego	39.2021295	-96.3004304	Kansas                                  
Wamego Historical Museum	Wamego	39.2021295	-96.3004304	Kansas                                  
Wamego Historical Museum	Wamego	39.2021295	-96.3004304	Kansas                                  
Wamego Historical Museum	Wamego	39.2021295	-96.3004304	Kansas                                  
Wamego Historical Museum	Wamego	39.2021295	-96.3004304	Kansas                                  
Wamego Historical Museum	Wamego	39.2021295	-96.3004304	Kansas                                  
Ward-Meade House	Topeka	39.0634196	-95.6826666	Kansas                                  
Ward-Meade House	Topeka	39.0634196	-95.6826666	Kansas                                  
Ward-Meade House	Topeka	39.0634196	-95.6826666	Kansas                                  
Ward-Meade House	Topeka	39.0634196	-95.6826666	Kansas                                  
Washington County Historical	Washington	39.8177782	-97.0496887	Kansas                                  
Washington County Historical	Washington	39.8177782	-97.0496887	Kansas                                  
Waterville Opera House	Waterville	39.6916565	-96.7474501	Kansas                                  
Waterville Opera House	Waterville	39.6916565	-96.7474501	Kansas                                  
Watkins Community Museum-History	Lawrence	38.96397	-95.2361108	Kansas                                  
Watkins Community Museum-History	Lawrence	38.96397	-95.2361108	Kansas                                  
Webster State Park	Stockton	39.421989	-99.4342088	Kansas                                  
Webster State Park	Stockton	39.421989	-99.4342088	Kansas                                  
Webster State Park	Stockton	39.421989	-99.4342088	Kansas                                  
Welcome to The Flint Hills Sign	Junction City	39.0616799	-96.7204732	Kansas                                  
Welcome to The Flint Hills Sign	Junction City	39.0616799	-96.7204732	Kansas                                  
Welcome to The Flint Hills Sign	Junction City	39.0616799	-96.7204732	Kansas                                  
Welcome to The Flint Hills Sign	Junction City	39.0616799	-96.7204732	Kansas                                  
Welcome to The Flint Hills Sign	Junction City	39.0616799	-96.7204732	Kansas                                  
Welcome to The Flint Hills Sign	Junction City	39.0616799	-96.7204732	Kansas                                  
Welcome to The Flint Hills Sign	Junction City	39.0616799	-96.7204732	Kansas                                  
West Bound Rest Area	Grainfield	39.0999676	-100.4260929	Kansas                                  
West Bound Rest Area	Grainfield	39.0999676	-100.4260929	Kansas                                  
Western Vista Historic Byway	Elkader	38.735658	-100.8688504	Kansas                                  
Western Vista Historic Byway	Elkader	38.735658	-100.8688504	Kansas                                  
Western Vista Historic Byway	Elkader	38.735658	-100.8688504	Kansas                                  
Western Vista Historic Byway	Elkader	38.735658	-100.8688504	Kansas                                  
Western Vista Historic Byway	Elkader	38.735658	-100.8688504	Kansas                                  
Western Vistas Historic Byway, Kansas	Wallace	38.9103372	-101.5829642	Kansas                                  
Western Vistas Historic Byway, Kansas	Wallace	38.9103372	-101.5829642	Kansas                                  
Western Vistas Historic Byway, Kansas	Wallace	38.9103372	-101.5829642	Kansas                                  
Western Vistas Historic Byway, Kansas	Wallace	38.9103372	-101.5829642	Kansas                                  
Western Vistas Historic Byway, Kansas	Wallace	38.9103372	-101.5829642	Kansas                                  
Western Vistas Historic Byway, Kansas	Wallace	38.9103372	-101.5829642	Kansas                                  
Wetmore Calaboose	Wetmore	39.6326248	-95.8131997	Kansas                                  
Wetmore Calaboose	Wetmore	39.6326248	-95.8131997	Kansas                                  
White Cross Hill	Smolan	38.6669565	-97.691632	Kansas                                  
White Cross Hill	Smolan	38.6669565	-97.691632	Kansas                                  
White Cross Hill	Smolan	38.6669565	-97.691632	Kansas                                  
Wichita County Historical Society	Leoti	38.4827253	-101.3577372	Kansas                                  
Wichita County Historical Society	Leoti	38.4827253	-101.3577372	Kansas                                  
Wichita-Sedgwick County Historical Museum	Wichita	37.6847302	-97.3378698	Kansas                                  
Wichita-Sedgwick County Historical Museum	Wichita	37.6847302	-97.3378698	Kansas                                  
Wichita-Sedgwick County Historical Museum	Wichita	37.6847302	-97.3378698	Kansas                                  
Wichita-Sedgwick County Historical Museum	Wichita	37.6847302	-97.3378698	Kansas                                  
Wichita-Sedgwick County Historical Museum	Wichita	37.6847302	-97.3378698	Kansas                                  
Wilbur Chapman Monument	White Cloud	39.9776581	-95.2960603	Kansas                                  
Wilbur Chapman Monument	White Cloud	39.9776581	-95.2960603	Kansas                                  
William Allen White Historic	Emporia	38.4096192	-96.1753485	Kansas                                  
William Allen White Historic	Emporia	38.4096192	-96.1753485	Kansas                                  
William Allen White Historic	Emporia	38.4096192	-96.1753485	Kansas                                  
William Allen White Historic	Emporia	38.4096192	-96.1753485	Kansas                                  
William Allen White Historic	Emporia	38.4096192	-96.1753485	Kansas                                  
William J Harkleroad Memorial Point	Ellis	38.9449203	-99.5652009	Kansas                                  
William J Harkleroad Memorial Point	Ellis	38.9449203	-99.5652009	Kansas                                  
William J Harkleroad Memorial Point	Ellis	38.9449203	-99.5652009	Kansas                                  
William J Harkleroad Memorial Point	Ellis	38.9449203	-99.5652009	Kansas                                  
William J Harkleroad Memorial Point	Ellis	38.9449203	-99.5652009	Kansas                                  
William Mills House	Osawatomie	38.503283	-94.942056	Kansas                                  
William Mills House	Osawatomie	38.503283	-94.942056	Kansas                                  
William Mills House	Osawatomie	38.503283	-94.942056	Kansas                                  
William Mills House	Osawatomie	38.503283	-94.942056	Kansas                                  
William Mills House	Osawatomie	38.503283	-94.942056	Kansas                                  
Wilson County Historic Clock Tower	Fredonia	37.5348168	-95.8272437	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wilson County Historical Society	Fredonia	37.5343815	-95.8262966	Kansas                                  
Wineglass Ramps	New Albany	37.5691289	-95.9381855	Kansas                                  
World War I Memorial Arch	St Marys	39.1912011	-96.0613208	Kansas                                  
World War I Memorial Arch	St Marys	39.1912011	-96.0613208	Kansas                                  
World's Largest Ball of Twine	Cawker City	39.5092526	-98.4336916	Kansas                                  
World's Largest Easel	Goodland	39.3379373	-101.7048227	Kansas                                  
World's Largest Easel	Goodland	39.3379373	-101.7048227	Kansas                                  
World's Largest Easel	Goodland	39.3379373	-101.7048227	Kansas                                  
Wright Round Barn	Marysville	39.7845102	-96.7066267	Kansas                                  
Wright Round Barn	Marysville	39.7845102	-96.7066267	Kansas                                  
Wright Round Barn	Marysville	39.7845102	-96.7066267	Kansas                                  
Ye Old Mill	Hutchinson	38.0765718	-97.9271651	Kansas                                  
Ye Old Mill	Hutchinson	38.0765718	-97.9271651	Kansas                                  
Ye Old Mill	Hutchinson	38.0765718	-97.9271651	Kansas                                  
Zebulon Pike Monument	Delphos	39.2667587	-97.851222	Kansas                                  
Zebulon Pike Monument	Delphos	39.2667587	-97.851222	Kansas                                  
Zebulon Pike Monument	Delphos	39.2667587	-97.851222	Kansas                                  
Zebulon Pike Monument	Delphos	39.2667587	-97.851222	Kansas                                  
former AT&SF Train Depot	Alden	38.2424523	-98.311047	Kansas                                  
former AT&SF Train Depot	Hugoton	37.1720366	-101.3420197	Kansas                                  
former AT&SF Train Depot	Hugoton	37.1720366	-101.3420197	Kansas                                  
former AT&SF Train Depot	Hugoton	37.1720366	-101.3420197	Kansas                                  
former AT&SF Train Depot	Hugoton	37.1720366	-101.3420197	Kansas                                  
former AT&SF Train Depot	Hugoton	37.1720366	-101.3420197	Kansas                                  
former AT&SF Train Depot	Hugoton	37.1720366	-101.3420197	Kansas                                  
former AT&SF Train Depot	Kingman	37.6416537	-98.1117771	Kansas                                  
former AT&SF Train Depot	Kingman	37.6416537	-98.1117771	Kansas                                  
former AT&SF Train Depot	Pawnee Rock	38.2650666	-98.9814583	Kansas                                  
former AT&SF Train Depot	Pawnee Rock	38.2650666	-98.9814583	Kansas                                  
former AT&SF Train Depot	Pawnee Rock	38.2650666	-98.9814583	Kansas                                  
former AT&SF Train Depot	Pawnee Rock	38.2650666	-98.9814583	Kansas                                  
former AT&SF Train Depot	Pawnee Rock	38.2650666	-98.9814583	Kansas                                  
former AT&SF Train Depot	Sterling	38.2074474	-98.2075165	Kansas                                  
\.


--
-- TOC entry 4795 (class 0 OID 25428)
-- Dependencies: 218
-- Data for Name: medical; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medical (name, address, city, state, long, lat) FROM stdin;
Kiowa District Hospital	1002 South 4th Street	Kiowa	KS	-98.48359899980	37.01514200010
Kansas Medical Center	1124 West 21st Street	Andover	KS	-97.14735412630	37.72436141950
Wamego Health Center	711 Genn Drive	Wamego	KS	-96.31908602680	39.20491895860
South Central Kansas Medical Center	6401 Patterson Parkway	Arkansas City	KS	-97.03864244860	37.13304462830
Dwight D Eisenhower Veterans Affairs Medical Center	4101 South 4th Street Trafficway	Leavenworth	KS	-94.89659296690	39.28241300130
Russell Regional Hospital	200 South Main Street	Russell	KS	-98.85957509290	38.88266075930
Saint Catherine Hospital	401 East Spruce Street	Garden City	KS	-100.86856842100	37.96977233870
Menorah Medical Center	5721 West 119th Street	Overland Park	KS	-94.65204999960	38.91054000030
Kansas City Orthopaedic Institute	3651 College Boulevard	Leawood	KS	-94.62825775110	38.92668151890
Pratt Regional Medical Center	200 Commodore Street	Pratt	KS	-98.72920399970	37.64458900010
Grisell Memorial Hospital	210 South Vermont Avenue	Ransom	KS	-99.93112900020	38.63598999950
Coffey County Hospital	801 North 4th Street	Burlington	KS	-95.73767399960	38.20229600040
Jewell County Hospital	100 Crestvue Avenue	Mankato	KS	-98.19989013670	39.78635025000
F W Huston Medical Center	408 Delaware Street	Winchester	KS	-95.27013300040	39.32595700010
Olathe Medical Center	20333 West 151st Street	Olathe	KS	-94.82288360620	38.85241317760
Kingman Healthcare Center	750 West D Avenue	Kingman	KS	-98.12331399980	37.64762500010
Mercy Hospital - Columbus	220 North Pennsylvania Street	Columbus	KS	-94.84325400050	37.17261199980
Hodgeman County Health Center	809 West Bramley Street	Jetmore	KS	-99.90331381610	38.08330815430
Mercy Hospital	218 East Pack Street	Moundridge	KS	-97.51695244090	38.20531408090
Ellinwood District Hospital	605 North Main Street	Ellinwood	KS	-98.58059100050	38.36035100050
Osborne County Memorial Hospital	237 West Harrison Street	Osborne	KS	-98.69866100010	39.45049399970
Herington Hospital	100 East Helen Street	Herington	KS	-96.94220099990	38.68008999950
Providence Medical Center	8929 Parallel Parkway	Kansas City	KS	-94.78674499970	39.12674399960
Rawlins County Health Center	707 Grant Street	Atwood	KS	-101.03843587000	39.81393864160
Clara Barton Hospital	250 West 9th Street	Hoisington	KS	-98.77858734100	38.52246475200
Clay County Medical Center	617 Liberty Street	Clay Center	KS	-97.12366287750	39.39219582040
Kansas Rehabilitation Hospital	1504 Southwest 8th Avenue	Topeka	KS	-95.69476318400	39.05499267630
Anthony Medical Center	1101 East Spring Street	Anthony	KS	-98.01734500000	37.15493999950
Memorial Health System	511 Northeast 10th Street	Abilene	KS	-97.20564191870	38.92535842270
Goodland Regional Medical Center	220 West 2nd Street	Goodland	KS	-101.71461900000	39.35888499990
McPherson Hospital	1000 Hospital Drive	McPherson	KS	-97.67061889140	38.37892460850
Graham County Hospital	304 West Prout Street	Hill City	KS	-99.84493500040	39.37215099960
Satanta District Hospital	401 Cheyenne Avenue	Satanta	KS	-100.98659500000	37.43708400040
Coffeyville Regional Medical Center	1400 West 4th Street	Coffeyville	KS	-95.63934326120	37.04102706870
Republic County Hospital	2420 G Street	Belleville	KS	-97.63734399990	39.81730699960
Ransom Memorial Hospital	1301 South Main Street	Ottawa	KS	-95.26760101350	38.59632492050
The University of Kansas Health System Saint Francis Campus	1700 Southwest 7th Street	Topeka	KS	-95.69601400010	39.05640900040
Overland Park Regional Medical Center	10500 Quivira Road	Overland Park	KS	-94.72628800000	38.93744499950
Kansas Heart Hospital	3601 North Webb Road	Wichita	KS	-97.22751261160	37.75006109950
Morris County Hospital	600 North Washington Street	Council Grove	KS	-96.49941499960	38.66582500030
Girard Medical Center	302 North Hospital Drive	Girard	KS	-94.85790599980	37.51464600030
Ascension Via Christi Rehabilitation Hospital	1151 North Rock Road	Wichita	KS	-97.24606399970	37.70385800010
Ascension Via Christi Saint Francis Hospital	929 North Saint Francis Street	Wichita	KS	-97.33232400050	37.69995799970
Rice County District Hospital	619 South Clark Avenue	Lyons	KS	-98.21663349840	38.34142264930
Comanche County Hospital	202 South Frisco Street	Coldwater	KS	-99.33271100030	37.26807299990
Saint John Hospital	3500 South 4th Street	Leavenworth	KS	-94.90590385370	39.28200916220
Ness County Hospital	312 Custer Street	Ness City	KS	-99.90162720120	38.45828731010
Heartland Surgical Specialty Hospital	10720 Nall Avenue	Overland Park	KS	-94.65197843820	38.93297495090
Centura - Bob Wilson Memorial Hospital	415 North Main Street	Ulysses	KS	-101.35870456700	37.58462444920
Salina Surgical Hospital	401 South Sante Fe Avenue	Salina	KS	-97.60846135280	38.83372812120
Rush County Memorial Hospital	801 Locust Street	La Crosse	KS	-99.31702099960	38.53058399980
Salina Regional Health Center	400 South Santa Fe Avenue	Salina	KS	-97.61028289800	38.83350372320
Southwest Medical Center	315 West 15th Street	Liberal	KS	-100.92678300100	37.05618199990
Children's Mercy Hospital Kansas	5808 West 110th Street	Overland Park	KS	-94.65293258400	38.92974028160
Morton County Hospital	445 Hilltop Street	Elkhart	KS	-101.90536600000	37.00197000000
Neosho Memorial Regional Medical Center	629 South Plummer Avenue	Chanute	KS	-95.47209167480	37.67523574860
Robert J Dole Veterans Affairs Medical Center	5500 East Kellogg Avenue	Wichita	KS	-97.27477097480	37.68131365720
Mitchell County Hospital Health Systems	400 West 8th Street	Beloit	KS	-98.11438500020	39.46728000030
Via Christie Hospital	1823 College Avenue	Manhattan	KS	-96.59915161090	39.20131683390
Ottawa County Health Center	215 East 8th Street	Minneapolis	KS	-97.70364228780	39.12959001600
The Institute for Advanced Bariatric Surgery	11217 Lakeview Avenue	Lenexa	KS	-94.76900946850	38.92442394280
Wilson Medical Center	2600 Ottawa Road	Neodesha	KS	-95.70838400000	37.40962200050
Kansas Surgery and Recovery Center	2770 North Webb Road	Wichita	KS	-97.22508754170	37.73310130410
Atchison Hospital	800 Raven Hill Drive	Atchison	KS	-95.12854766800	39.53617095980
Rooks County Health Center	1210 North Washington Street	Plainville	KS	-99.29650959100	39.24757178390
Geary Community Hospital	1102 Saint Marys Road	Junction City	KS	-96.85095214830	39.01398468010
Fredonia Regional Hospital	1527 Madison Street	Fredonia	KS	-95.81408500700	37.53423353690
Community Healthcare System - Onaga	120 West 8th Street	Onaga	KS	-96.17160797140	39.49594497720
Logan County Hospital	211 Cherry Avenue	Oakley	KS	-100.86289288800	39.12714735690
Scott County Hospital	201 Albert Avenue	Scott City	KS	-100.90371704100	38.46699523930
Hamilton County Hospital	700 North Huser Street	Syracuse	KS	-101.74240800000	37.98474300020
Via Christi Hospital Saint Joseph	3600 East Harry Street	Wichita	KS	-97.29310607910	37.66614150990
MidAmerica Rehabilitation Hospital	5701 West 110th Street	Overland Park	KS	-94.65135700010	38.92892400030
Kearny County Hospital	500 East Thorpe Street	Lakin	KS	-101.25167100000	37.94670600040
Saint Luke's South Hospital	12300 Metcalf Avenue	Overland Park	KS	-94.66896414730	38.90397522430
Shawnee Mission Medical Center	9100 West 74th Street	Merriam	KS	-94.69126600040	38.99566199980
Decatur Health Systems Hospital	810 West Columbia Street	Oberlin	KS	-100.53839892900	39.81580031960
Miami County Medical Center	2100 Baptiste Drive	Paola	KS	-94.84909820560	38.56927490230
Hillsboro Community Hospital	101 Industrial Road	Hillsboro	KS	-97.18872781220	38.36187020170
Wesley Medical Center	550 North Hillside Street	Wichita	KS	-97.29818611950	37.69524376340
Washington County Hospital	304 East 3rd Street	Washington	KS	-97.04586600020	39.81812700020
Norton County Hospital	102 East Holme Street	Norton	KS	-99.88810837270	39.83796108410
Saint Luke Hospital	535 South Freeborn Street	Marion	KS	-97.01036084170	38.34284689130
Greeley County Hospital	506 3rd Street	Tribune	KS	-101.74940600000	38.47038799960
Susan B Allen Memorial Hospital	720 West Central Avenue	El Dorado	KS	-96.85852813770	37.81842422450
Cheyenne County Hospital	210 West 1st Street	Saint Francis	KS	-101.80335200000	39.77133600030
Phillips County Hospital	1150 State Street	Phillipsburg	KS	-99.31366943550	39.75527980030
Community Memorial Healthcare Hospital	708 North 18th Street	Marysville	KS	-96.63542899960	39.84857900020
Meadowbrook Rehabilitation Hospital	427 West Main Street	Gardner	KS	-94.93775939940	38.81003952010
Trego County - Lemke Memorial Hospital	320 North 13th Street	WaKeeney	KS	-99.87104800010	39.02780400040
Colmery - O'Neil Veterans Affairs Medical Center	2200 Southwest Gage Boulevard	Topeka	KS	-95.72280000010	39.02617000010
Wesley Woodlawn Hospital	2610 North Woodlawn Street	Wichita	KS	-97.26066899960	37.73124599960
Newman Regional Health	1201 West 12th Avenue	Emporia	KS	-96.19552191120	38.41156707070
Lane County Hospital	235 West Vine Street	Dighton	KS	-100.46917000000	38.48016699950
Ellsworth County Medical Center	1604 Aylward Avenue	Ellsworth	KS	-98.21972999960	38.74270500000
Ashland Health Center	625 Kentucky Street	Ashland	KS	-99.77994573500	37.19018568870
Smith County Memorial Hospital	921 East US Highway 36	Smith Center	KS	-98.77191783820	39.78341879550
Citizens Medical Center	100 East College Drive	Colby	KS	-101.04439544700	39.37868881210
Minneola District Hospital	212 South Main Street	Minneola	KS	-100.01304600100	37.44153200000
Lindsborg Community Hospital	605 West Lincoln Street	Lindsborg	KS	-97.68344099970	38.57288399970
Sheridan County Health Complex	826 18th Street	Hoxie	KS	-100.43173900000	39.35439500000
Hiawatha Community Hospital	300 Utah Street	Hiawatha	KS	-95.53078600020	39.85245199970
Allen County Regional Hospital	3066 North Kentucky Street	Iola	KS	-95.39214299990	37.94878799980
Edwards County Medical Center	620 West 8th Street	Kinsley	KS	-99.42011399980	37.92122700010
Greenwood County Hospital	100 West 16th Street	Eureka	KS	-96.29361799970	37.83565900000
Kansas Spine and Specialty Hospital	3333 North Webb Road	Wichita	KS	-97.22732899950	37.74354500050
Stevens County Hospital	1006 South Jackson Street	Hugoton	KS	-101.34927500000	37.17124699970
Hays Medical Center	2220 Canterbury Drive	Hays	KS	-99.29624938980	38.88058471640
Gove County Medical Center	520 West 5th Street	Quinter	KS	-100.24064183200	39.06756364460
Sumner County Hospital	601 South Osage Street	Caldwell	KS	-97.61022949210	37.02618026720
Meade District Hospital	510 East Carthage Street	Meade	KS	-100.33403000000	37.28661000020
Doctors Hospital	4901 College Boulevard	Leawood	KS	-94.64372253440	38.92705917330
Stormont Vail Hospital	1500 Southwest 10th Avenue	Topeka	KS	-95.69641876230	39.05205535900
Western Plains Medical Complex	3001 Avenue A	Dodge City	KS	-100.01736500000	37.78627800050
Anderson County Hospital	421 South Maple Street	Garnett	KS	-95.25163075420	38.27968419720
Lincoln County Hospital	624 North 2nd Street	Lincoln	KS	-98.14401805430	39.04541515900
University of Kansas Medical Center	3901 Rainbow Boulevard	Kansas City	KS	-94.60922601970	39.05586336050
Via Christi Hospital	1 Mount Carmel Way	Pittsburg	KS	-94.68405425510	37.38032865300
Lawrence Memorial Hospital	325 Maine Street	Lawrence	KS	-95.24851226840	38.97890090950
William Newton Hospital	1300 East 5th Avenue	Winfield	KS	-96.98200225830	37.24521636910
Holton Community Hospital	1110 Columbine Drive	Holton	KS	-95.75168000010	39.48007999990
Cloud County Health Center	1100 Highland Drive	Concordia	KS	-97.67359924330	39.56542205780
Mercy Hospital - Fort Scott	401 Woodland Hills Boulevard	Fort Scott	KS	-94.71134185820	37.80610656710
Harper Hospital District Five	700 West 13th Street	Harper	KS	-98.03343200710	37.28437805140
Stafford County Hospital	502 South Buckeye Street	Stafford	KS	-98.59547400030	37.95665900020
Newton Medical Center	600 Medical Center Drive	Newton	KS	-97.33319600010	38.02418000030
Sedan City Hospital	300 North Street	Sedan	KS	-96.18894700010	37.13392099990
Wesley Rehabilitation Hospital	8338 West 13th Street North	Wichita	KS	-97.43890380880	37.70962142970
Nemaha Valley Community Hospital	1600 Community Drive	Seneca	KS	-96.07811800030	39.83708500030
Sabetha Community Hospital	603 North 14th Street	Sabetha	KS	-95.80810368970	39.89891754030
Stanton County Hospital	404 North Chestnut Street	Johnson	KS	-101.75009156900	37.57408846680
Hanover Hospital	205 South Hanover Street	Hanover	KS	-96.87521516340	39.89108125980
Via Christi Clinic	1105 Sunset Avenue	Manhattan	KS	-96.59021758990	39.19181060790
Ascension Via Christi Behavioral Health Center	3600 East Harry Street	Wichita	KS	-97.29261489560	37.66583047130
Great Bend Regional Hospital	514 Cleveland Street	Great Bend	KS	-98.79046630810	38.35638046230
Hutchinson Regional Medical Center	1701 East 23rd Avenue	Hutchinson	KS	-97.89203899950	38.07745699950
Shawnee Mission Health - Prairie Star	23401 Prairie Star Pkwy	Lenexa	KS	-94.85685579470	38.95481744280
Labette Health Hospital	1902 South US Highway 59	Parsons	KS	-95.26454311200	37.32110504580
Medicine Lodge Memorial Hospital	710 North Walnut Street	Medicine Lodge	KS	-98.57734260780	37.28941875060
Irwin Army Community Hospital	650 Huebner Road	Fort Riley	KS	-96.76831900040	39.08329100050
Prairie View Inpatient Psychiatric Hospital	1901 East 1st Street	Newton	KS	-97.31370927270	38.04142884910
Kiowa County Memorial Hospital	721 West Kansas Avenue	Greensburg	KS	-99.30150900030	37.60557100010
Larned State Hospital	1301 State Highway 264	Larned	KS	-99.15093038470	38.17150012580
\.


--
-- TOC entry 4796 (class 0 OID 25433)
-- Dependencies: 219
-- Data for Name: us_census; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.us_census (state, county, population) FROM stdin;
 Alabama	Autauga County	58805
 Alabama	Baldwin County	231767
 Alabama	Barbour County	25223
 Alabama	Bibb County	22293
 Alabama	Blount County	59134
 Alabama	Bullock County	10357
 Alabama	Butler County	19051
 Alabama	Calhoun County	116441
 Alabama	Chambers County	34772
 Alabama	Cherokee County	24971
 Alabama	Chilton County	45014
 Alabama	Choctaw County	12665
 Alabama	Clarke County	23087
 Alabama	Clay County	14236
 Alabama	Cleburne County	15056
 Alabama	Coffee County	53465
 Alabama	Colbert County	57227
 Alabama	Conecuh County	11597
 Alabama	Coosa County	10387
 Alabama	Covington County	37570
 Alabama	Crenshaw County	13194
 Alabama	Cullman County	87866
 Alabama	Dale County	49326
 Alabama	Dallas County	38462
 Alabama	DeKalb County	71608
 Alabama	Elmore County	87977
 Alabama	Escambia County	36757
 Alabama	Etowah County	103436
 Alabama	Fayette County	16321
 Alabama	Franklin County	32113
 Alabama	Geneva County	26659
 Alabama	Greene County	7730
 Alabama	Hale County	14785
 Alabama	Henry County	17146
 Alabama	Houston County	107202
 Alabama	Jackson County	52579
 Alabama	Jefferson County	674721
 Alabama	Lamar County	13972
 Alabama	Lauderdale County	93564
 Alabama	Lawrence County	33073
 Alabama	Lee County	174241
 Alabama	Limestone County	103570
 Alabama	Lowndes County	10311
 Alabama	Macon County	19532
 Alabama	Madison County	388153
 Alabama	Marengo County	19323
 Alabama	Marion County	29341
 Alabama	Marshall County	97612
 Alabama	Mobile County	414809
 Alabama	Monroe County	19772
 Alabama	Montgomery County	228954
 Alabama	Morgan County	123421
 Alabama	Perry County	8511
 Alabama	Pickens County	19123
 Alabama	Pike County	33009
 Alabama	Randolph County	21967
 Alabama	Russell County	59183
 Alabama	St. Clair County	91103
 Alabama	Shelby County	223024
 Alabama	Sumter County	12345
 Alabama	Talladega County	82149
 Alabama	Tallapoosa County	41311
 Alabama	Tuscaloosa County	227036
 Alabama	Walker County	65342
 Alabama	Washington County	15388
 Alabama	Wilcox County	10600
 Alabama	Winston County	23540
 Alaska	Aleutians East Borough	3420
 Alaska	Aleutians West Census Area	5232
 Alaska	Anchorage Municipality	291247
 Alaska	Bethel Census Area	18666
 Alaska	Bristol Bay Borough	844
 Alaska	Chugach Census Area	7102
 Alaska	Copper River Census Area	2617
 Alaska	Denali Borough	1619
 Alaska	Dillingham Census Area	4857
 Alaska	Fairbanks North Star Borough	95655
 Alaska	Haines Borough	2080
 Alaska	Hoonah-Angoon Census Area	2365
 Alaska	Juneau City and Borough	32255
 Alaska	Kenai Peninsula Borough	58799
 Alaska	Ketchikan Gateway Borough	13948
 Alaska	Kodiak Island Borough	13101
 Alaska	Kusilvak Census Area	8368
 Alaska	Lake and Peninsula Borough	1476
 Alaska	Matanuska-Susitna Borough	107081
 Alaska	Nome Census Area	10046
 Alaska	North Slope Borough	11031
 Alaska	Northwest Arctic Borough	7793
 Alaska	Petersburg Borough	3398
 Alaska	Prince of Wales-Hyder Census Area	5753
 Alaska	Sitka City and Borough	8458
 Alaska	Skagway Municipality	1240
 Alaska	Southeast Fairbanks Census Area	6808
 Alaska	Wrangell City and Borough	2127
 Alaska	Yakutat City and Borough	662
 Alaska	Yukon-Koyukuk Census Area	5343
 Arizona	Apache County	66021
 Arizona	Cochise County	125447
 Arizona	Coconino County	145101
 Arizona	Gila County	53272
 Arizona	Graham County	38533
 Arizona	Greenlee County	9563
 Arizona	La Paz County	16557
 Arizona	Maricopa County	4420568
 Arizona	Mohave County	213267
 Arizona	Navajo County	106717
 Arizona	Pima County	1043433
 Arizona	Pinal County	425264
 Arizona	Santa Cruz County	47669
 Arizona	Yavapai County	236209
 Arizona	Yuma County	203881
 Arkansas	Arkansas County	17149
 Arkansas	Ashley County	19062
 Arkansas	Baxter County	41627
 Arkansas	Benton County	284333
 Arkansas	Boone County	37373
 Arkansas	Bradley County	10545
 Arkansas	Calhoun County	4739
 Arkansas	Carroll County	28260
 Arkansas	Chicot County	10208
 Arkansas	Clark County	21446
 Arkansas	Clay County	14552
 Arkansas	Cleburne County	24711
 Arkansas	Cleveland County	7550
 Arkansas	Columbia County	22801
 Arkansas	Conway County	20715
 Arkansas	Craighead County	111231
 Arkansas	Crawford County	60133
 Arkansas	Crittenden County	48163
 Arkansas	Cross County	16833
 Arkansas	Dallas County	6482
 Arkansas	Desha County	11395
 Arkansas	Drew County	17350
 Arkansas	Faulkner County	123498
 Arkansas	Franklin County	17097
 Arkansas	Fulton County	12075
 Arkansas	Garland County	100180
 Arkansas	Grant County	17958
 Arkansas	Greene County	45736
 Arkansas	Hempstead County	20065
 Arkansas	Hot Spring County	33040
 Arkansas	Howard County	12785
 Arkansas	Independence County	37938
 Arkansas	Izard County	13577
 Arkansas	Jackson County	16755
 Arkansas	Jefferson County	67260
 Arkansas	Johnson County	25749
 Arkansas	Lafayette County	6308
 Arkansas	Lawrence County	16216
 Arkansas	Lee County	8600
 Arkansas	Lincoln County	12941
 Arkansas	Little River County	12026
 Arkansas	Logan County	21131
 Arkansas	Lonoke County	74015
 Arkansas	Madison County	16521
 Arkansas	Marion County	16826
 Arkansas	Miller County	42600
 Arkansas	Mississippi County	40685
 Arkansas	Monroe County	6799
 Arkansas	Montgomery County	8484
 Arkansas	Nevada County	8310
 Arkansas	Newton County	7225
 Arkansas	Ouachita County	22650
 Arkansas	Perry County	10019
 Arkansas	Phillips County	16568
 Arkansas	Pike County	10171
 Arkansas	Poinsett County	22965
 Arkansas	Polk County	19221
 Arkansas	Pope County	63381
 Arkansas	Prairie County	8282
 Arkansas	Pulaski County	399125
 Arkansas	Randolph County	18571
 Arkansas	St. Francis County	23090
 Arkansas	Saline County	123416
 Arkansas	Scott County	9836
 Arkansas	Searcy County	7828
 Arkansas	Sebastian County	127799
 Arkansas	Sevier County	15839
 Arkansas	Sharp County	17271
 Arkansas	Stone County	12359
 Arkansas	Union County	39054
 Arkansas	Van Buren County	15796
 Arkansas	Washington County	245871
 Arkansas	White County	76822
 Arkansas	Woodruff County	6269
 Arkansas	Yell County	20263
 California	Alameda County	1682353
 California	Alpine County	1204
 California	Amador County	40474
 California	Butte County	211632
 California	Calaveras County	45292
 California	Colusa County	21839
 California	Contra Costa County	1165927
 California	Del Norte County	27743
 California	El Dorado County	191185
 California	Fresno County	1008654
 California	Glenn County	28917
 California	Humboldt County	136463
 California	Imperial County	179702
 California	Inyo County	19016
 California	Kern County	909235
 California	Kings County	152486
 California	Lake County	68163
 California	Lassen County	32730
 California	Los Angeles County	10014009
 California	Madera County	156255
 California	Marin County	262321
 California	Mariposa County	17131
 California	Mendocino County	91601
 California	Merced County	281202
 California	Modoc County	8700
 California	Mono County	13195
 California	Monterey County	439035
 California	Napa County	138019
 California	Nevada County	102241
 California	Orange County	3186989
 California	Placer County	404739
 California	Plumas County	19790
 California	Riverside County	2418185
 California	Sacramento County	1585055
 California	San Benito County	64209
 California	San Bernardino County	2181654
 California	San Diego County	3298634
 California	San Francisco County	873965
 California	San Joaquin County	779233
 California	San Luis Obispo County	282424
 California	San Mateo County	764442
 California	Santa Barbara County	448229
 California	Santa Clara County	1936259
 California	Santa Cruz County	270861
 California	Shasta County	182155
 California	Sierra County	3236
 California	Siskiyou County	44076
 California	Solano County	453491
 California	Sonoma County	488863
 California	Stanislaus County	552878
 California	Sutter County	99633
 California	Tehama County	65829
 California	Trinity County	16112
 California	Tulare County	473117
 California	Tuolumne County	55620
 California	Ventura County	843843
 California	Yolo County	216403
 California	Yuba County	81575
 Colorado	Adams County	519572
 Colorado	Alamosa County	16376
 Colorado	Arapahoe County	655070
 Colorado	Archuleta County	13359
 Colorado	Baca County	3506
 Colorado	Bent County	5650
 Colorado	Boulder County	330758
 Colorado	Broomfield County	74112
 Colorado	Chaffee County	19476
 Colorado	Cheyenne County	1748
 Colorado	Clear Creek County	9397
 Colorado	Conejos County	7461
 Colorado	Costilla County	3499
 Colorado	Crowley County	5922
 Colorado	Custer County	4704
 Colorado	Delta County	31196
 Colorado	Denver County	715522
 Colorado	Dolores County	2326
 Colorado	Douglas County	357978
 Colorado	Eagle County	55731
 Colorado	Elbert County	26062
 Colorado	El Paso County	730395
 Colorado	Fremont County	48939
 Colorado	Garfield County	61685
 Colorado	Gilpin County	5808
 Colorado	Grand County	15717
 Colorado	Gunnison County	16918
 Colorado	Hinsdale County	788
 Colorado	Huerfano County	6820
 Colorado	Jackson County	1379
 Colorado	Jefferson County	582910
 Colorado	Kiowa County	1446
 Colorado	Kit Carson County	7087
 Colorado	Lake County	7436
 Colorado	La Plata County	55638
 Colorado	Larimer County	359066
 Colorado	Las Animas County	14555
 Colorado	Lincoln County	5675
 Colorado	Logan County	21528
 Colorado	Mesa County	155703
 Colorado	Mineral County	865
 Colorado	Moffat County	13292
 Colorado	Montezuma County	25849
 Colorado	Montrose County	42679
 Colorado	Morgan County	29111
 Colorado	Otero County	18690
 Colorado	Ouray County	4874
 Colorado	Park County	17390
 Colorado	Phillips County	4530
 Colorado	Pitkin County	17358
 Colorado	Prowers County	11999
 Colorado	Pueblo County	168162
 Colorado	Rio Blanco County	6529
 Colorado	Rio Grande County	11539
 Colorado	Routt County	24829
 Colorado	Saguache County	6368
 Colorado	San Juan County	705
 Colorado	San Miguel County	8072
 Colorado	Sedgwick County	2404
 Colorado	Summit County	31055
 Colorado	Teller County	24710
 Colorado	Washington County	4817
 Colorado	Weld County	328981
 Colorado	Yuma County	9988
 Connecticut	Fairfield County	957419
 Connecticut	Hartford County	899498
 Connecticut	Litchfield County	185186
 Connecticut	Middlesex County	164245
 Connecticut	New Haven County	864835
 Connecticut	New London County	268555
 Connecticut	Tolland County	149788
 Connecticut	Windham County	116418
 Delaware	Kent County	181851
 Delaware	New Castle County	570719
 Delaware	Sussex County	237378
 District of Columbia	District of Columbia	689545
 Florida	Alachua County	278468
 Florida	Baker County	28259
 Florida	Bay County	175216
 Florida	Bradford County	28303
 Florida	Brevard County	606612
 Florida	Broward County	1944375
 Florida	Calhoun County	13648
 Florida	Charlotte County	186847
 Florida	Citrus County	153843
 Florida	Clay County	218245
 Florida	Collier County	375752
 Florida	Columbia County	69698
 Florida	DeSoto County	33976
 Florida	Dixie County	16759
 Florida	Duval County	995567
 Florida	Escambia County	321905
 Florida	Flagler County	115378
 Florida	Franklin County	12451
 Florida	Gadsden County	43826
 Florida	Gilchrist County	17864
 Florida	Glades County	12126
 Florida	Gulf County	14192
 Florida	Hamilton County	14004
 Florida	Hardee County	25327
 Florida	Hendry County	39619
 Florida	Hernando County	194515
 Florida	Highlands County	101235
 Florida	Hillsborough County	1459762
 Florida	Holmes County	19653
 Florida	Indian River County	159788
 Florida	Jackson County	47319
 Florida	Jefferson County	14510
 Florida	Lafayette County	8226
 Florida	Lake County	383956
 Florida	Lee County	760822
 Florida	Leon County	292198
 Florida	Levy County	42915
 Florida	Liberty County	7974
 Florida	Madison County	17968
 Florida	Manatee County	399710
 Florida	Marion County	375908
 Florida	Martin County	158431
 Florida	Miami-Dade County	2701767
 Florida	Monroe County	82874
 Florida	Nassau County	90352
 Florida	Okaloosa County	211668
 Florida	Okeechobee County	39644
 Florida	Orange County	1429908
 Florida	Osceola County	388656
 Florida	Palm Beach County	1492191
 Florida	Pasco County	561891
 Florida	Pinellas County	959107
 Florida	Polk County	725046
 Florida	Putnam County	73321
 Florida	St. Johns County	273425
 Florida	St. Lucie County	329226
 Florida	Santa Rosa County	188000
 Florida	Sarasota County	434006
 Florida	Seminole County	470856
 Florida	Sumter County	129752
 Florida	Suwannee County	43474
 Florida	Taylor County	21796
 Florida	Union County	16147
 Florida	Volusia County	553543
 Florida	Wakulla County	33764
 Florida	Walton County	75305
 Florida	Washington County	25318
 Georgia	Appling County	18444
 Georgia	Atkinson County	8286
 Georgia	Bacon County	11140
 Georgia	Baker County	2876
 Georgia	Baldwin County	43799
 Georgia	Banks County	18035
 Georgia	Barrow County	83505
 Georgia	Bartow County	108901
 Georgia	Ben Hill County	17194
 Georgia	Berrien County	18160
 Georgia	Bibb County	157346
 Georgia	Bleckley County	12583
 Georgia	Brantley County	18021
 Georgia	Brooks County	16301
 Georgia	Bryan County	44738
 Georgia	Bulloch County	81099
 Georgia	Burke County	24596
 Georgia	Butts County	25434
 Georgia	Calhoun County	5573
 Georgia	Camden County	54768
 Georgia	Candler County	10981
 Georgia	Carroll County	119148
 Georgia	Catoosa County	67872
 Georgia	Charlton County	12518
 Georgia	Chatham County	295291
 Georgia	Chattahoochee County	9565
 Georgia	Chattooga County	24965
 Georgia	Cherokee County	266620
 Georgia	Clarke County	128671
 Georgia	Clay County	2848
 Georgia	Clayton County	297595
 Georgia	Clinch County	6749
 Georgia	Cobb County	766149
 Georgia	Coffee County	43092
 Georgia	Colquitt County	45898
 Georgia	Columbia County	156010
 Georgia	Cook County	17229
 Georgia	Coweta County	146158
 Georgia	Crawford County	12130
 Georgia	Crisp County	20128
 Georgia	Dade County	16251
 Georgia	Dawson County	26798
 Georgia	Decatur County	29367
 Georgia	DeKalb County	764382
 Georgia	Dodge County	19925
 Georgia	Dooly County	11208
 Georgia	Dougherty County	85790
 Georgia	Douglas County	144237
 Georgia	Early County	10854
 Georgia	Echols County	3697
 Georgia	Effingham County	64769
 Georgia	Elbert County	19637
 Georgia	Emanuel County	22768
 Georgia	Evans County	10774
 Georgia	Fannin County	25319
 Georgia	Fayette County	119194
 Georgia	Floyd County	98584
 Georgia	Forsyth County	251283
 Georgia	Franklin County	23424
 Georgia	Fulton County	1066710
 Georgia	Gilmer County	31353
 Georgia	Glascock County	2884
 Georgia	Glynn County	84499
 Georgia	Gordon County	57544
 Georgia	Grady County	26236
 Georgia	Greene County	18915
 Georgia	Gwinnett County	957062
 Georgia	Habersham County	46031
 Georgia	Hall County	203136
 Georgia	Hancock County	8735
 Georgia	Haralson County	29919
 Georgia	Harris County	34668
 Georgia	Hart County	25828
 Georgia	Heard County	11412
 Georgia	Henry County	240712
 Georgia	Houston County	163633
 Georgia	Irwin County	9666
 Georgia	Jackson County	75907
 Georgia	Jasper County	14588
 Georgia	Jeff Davis County	14779
 Georgia	Jefferson County	15709
 Georgia	Jenkins County	8674
 Georgia	Johnson County	9189
 Georgia	Jones County	28347
 Georgia	Lamar County	18500
 Georgia	Lanier County	9877
 Georgia	Laurens County	49570
 Georgia	Lee County	33163
 Georgia	Liberty County	65256
 Georgia	Lincoln County	7690
 Georgia	Long County	16168
 Georgia	Lowndes County	118251
 Georgia	Lumpkin County	33488
 Georgia	McDuffie County	21632
 Georgia	McIntosh County	10975
 Georgia	Macon County	12082
 Georgia	Madison County	30120
 Georgia	Marion County	7498
 Georgia	Meriwether County	20613
 Georgia	Miller County	6000
 Georgia	Mitchell County	21755
 Georgia	Monroe County	27957
 Georgia	Montgomery County	8610
 Georgia	Morgan County	20097
 Georgia	Murray County	39973
 Georgia	Muscogee County	206922
 Georgia	Newton County	112483
 Georgia	Oconee County	41799
 Georgia	Oglethorpe County	14825
 Georgia	Paulding County	168661
 Georgia	Peach County	27981
 Georgia	Pickens County	33216
 Georgia	Pierce County	19716
 Georgia	Pike County	18889
 Georgia	Polk County	42853
 Georgia	Pulaski County	9855
 Georgia	Putnam County	22047
 Georgia	Quitman County	2235
 Georgia	Rabun County	16883
 Georgia	Randolph County	6425
 Georgia	Richmond County	206607
 Georgia	Rockdale County	93570
 Georgia	Schley County	4547
 Georgia	Screven County	14067
 Georgia	Seminole County	9147
 Georgia	Spalding County	67306
 Georgia	Stephens County	26784
 Georgia	Stewart County	5314
 Georgia	Sumter County	29616
 Georgia	Talbot County	5733
 Georgia	Taliaferro County	1559
 Georgia	Tattnall County	22842
 Georgia	Taylor County	7816
 Georgia	Telfair County	12477
 Georgia	Terrell County	9185
 Georgia	Thomas County	45798
 Georgia	Tift County	41344
 Georgia	Toombs County	27030
 Georgia	Towns County	12493
 Georgia	Treutlen County	6406
 Georgia	Troup County	69426
 Georgia	Turner County	9006
 Georgia	Twiggs County	8022
 Georgia	Union County	24632
 Georgia	Upson County	27700
 Georgia	Walker County	67654
 Georgia	Walton County	96673
 Georgia	Ware County	36251
 Georgia	Warren County	5215
 Georgia	Washington County	19988
 Georgia	Wayne County	30144
 Georgia	Webster County	2348
 Georgia	Wheeler County	7471
 Georgia	White County	28003
 Georgia	Whitfield County	102864
 Georgia	Wilcox County	8766
 Georgia	Wilkes County	9565
 Georgia	Wilkinson County	8877
 Georgia	Worth County	20784
 Hawaii	Hawaii County	200629
 Hawaii	Honolulu County	1016508
 Hawaii	Kalawao County	82
 Hawaii	Kauai County	73298
 Hawaii	Maui County	164754
 Idaho	Ada County	494967
 Idaho	Adams County	4379
 Idaho	Bannock County	87018
 Idaho	Bear Lake County	6372
 Idaho	Benewah County	9530
 Idaho	Bingham County	47992
 Idaho	Blaine County	24272
 Idaho	Boise County	7610
 Idaho	Bonner County	47110
 Idaho	Bonneville County	123964
 Idaho	Boundary County	12056
 Idaho	Butte County	2574
 Idaho	Camas County	1077
 Idaho	Canyon County	231105
 Idaho	Caribou County	7027
 Idaho	Cassia County	24655
 Idaho	Clark County	790
 Idaho	Clearwater County	8734
 Idaho	Custer County	4275
 Idaho	Elmore County	28666
 Idaho	Franklin County	14194
 Idaho	Fremont County	13388
 Idaho	Gem County	19123
 Idaho	Gooding County	15598
 Idaho	Idaho County	16541
 Idaho	Jefferson County	30891
 Idaho	Jerome County	24237
 Idaho	Kootenai County	171362
 Idaho	Latah County	39517
 Idaho	Lemhi County	7974
 Idaho	Lewis County	3533
 Idaho	Lincoln County	5127
 Idaho	Madison County	52913
 Idaho	Minidoka County	21613
 Idaho	Nez Perce County	42090
 Idaho	Oneida County	4564
 Idaho	Owyhee County	11913
 Idaho	Payette County	25386
 Idaho	Power County	7878
 Idaho	Shoshone County	13169
 Idaho	Teton County	11630
 Idaho	Twin Falls County	90046
 Idaho	Valley County	11746
 Idaho	Washington County	10500
 Illinois	Adams County	65737
 Illinois	Alexander County	5240
 Illinois	Bond County	16725
 Illinois	Boone County	53448
 Illinois	Brown County	6244
 Illinois	Bureau County	33244
 Illinois	Calhoun County	4437
 Illinois	Carroll County	15702
 Illinois	Cass County	13042
 Illinois	Champaign County	205865
 Illinois	Christian County	34032
 Illinois	Clark County	15455
 Illinois	Clay County	13288
 Illinois	Clinton County	36899
 Illinois	Coles County	46863
 Illinois	Cook County	5275541
 Illinois	Crawford County	18679
 Illinois	Cumberland County	10450
 Illinois	DeKalb County	100420
 Illinois	De Witt County	15516
 Illinois	Douglas County	19740
 Illinois	DuPage County	932877
 Illinois	Edgar County	16866
 Illinois	Edwards County	6245
 Illinois	Effingham County	34668
 Illinois	Fayette County	21488
 Illinois	Ford County	13534
 Illinois	Franklin County	37804
 Illinois	Fulton County	33609
 Illinois	Gallatin County	4946
 Illinois	Greene County	11985
 Illinois	Grundy County	52533
 Illinois	Hamilton County	7993
 Illinois	Hancock County	17620
 Illinois	Hardin County	3649
 Illinois	Henderson County	6387
 Illinois	Henry County	49284
 Illinois	Iroquois County	27077
 Illinois	Jackson County	52974
 Illinois	Jasper County	9287
 Illinois	Jefferson County	37113
 Illinois	Jersey County	21512
 Illinois	Jo Daviess County	22035
 Illinois	Johnson County	13308
 Illinois	Kane County	516522
 Illinois	Kankakee County	107502
 Illinois	Kendall County	131869
 Illinois	Knox County	49967
 Illinois	Lake County	714342
 Illinois	LaSalle County	109658
 Illinois	Lawrence County	15280
 Illinois	Lee County	34145
 Illinois	Livingston County	35815
 Illinois	Logan County	27987
 Illinois	McDonough County	27238
 Illinois	McHenry County	310229
 Illinois	McLean County	170954
 Illinois	Macon County	103998
 Illinois	Macoupin County	44967
 Illinois	Madison County	265859
 Illinois	Marion County	37729
 Illinois	Marshall County	11742
 Illinois	Mason County	13086
 Illinois	Massac County	14169
 Illinois	Menard County	12297
 Illinois	Mercer County	15699
 Illinois	Monroe County	34962
 Illinois	Montgomery County	28288
 Illinois	Morgan County	32915
 Illinois	Moultrie County	14526
 Illinois	Ogle County	51788
 Illinois	Peoria County	181830
 Illinois	Perry County	20945
 Illinois	Piatt County	16673
 Illinois	Pike County	14739
 Illinois	Pope County	3763
 Illinois	Pulaski County	5193
 Illinois	Putnam County	5637
 Illinois	Randolph County	30163
 Illinois	Richland County	15813
 Illinois	Rock Island County	144672
 Illinois	St. Clair County	257400
 Illinois	Saline County	23768
 Illinois	Sangamon County	196343
 Illinois	Schuyler County	6902
 Illinois	Scott County	4949
 Illinois	Shelby County	20990
 Illinois	Stark County	5400
 Illinois	Stephenson County	44630
 Illinois	Tazewell County	131343
 Illinois	Union County	17244
 Illinois	Vermilion County	74188
 Illinois	Wabash County	11361
 Illinois	Warren County	16835
 Illinois	Washington County	13761
 Illinois	Wayne County	16179
 Illinois	White County	13877
 Illinois	Whiteside County	55691
 Illinois	Will County	696355
 Illinois	Williamson County	67153
 Illinois	Winnebago County	285350
 Illinois	Woodford County	38467
 Indiana	Adams County	35809
 Indiana	Allen County	385410
 Indiana	Bartholomew County	82208
 Indiana	Benton County	8719
 Indiana	Blackford County	12112
 Indiana	Boone County	70812
 Indiana	Brown County	15475
 Indiana	Carroll County	20306
 Indiana	Cass County	37870
 Indiana	Clark County	121093
 Indiana	Clay County	26466
 Indiana	Clinton County	33190
 Indiana	Crawford County	10526
 Indiana	Daviess County	33381
 Indiana	Dearborn County	50679
 Indiana	Decatur County	26472
 Indiana	DeKalb County	43265
 Indiana	Delaware County	111903
 Indiana	Dubois County	43637
 Indiana	Elkhart County	207047
 Indiana	Fayette County	23398
 Indiana	Floyd County	80484
 Indiana	Fountain County	16479
 Indiana	Franklin County	22785
 Indiana	Fulton County	20480
 Indiana	Gibson County	33011
 Indiana	Grant County	66674
 Indiana	Greene County	30803
 Indiana	Hamilton County	347467
 Indiana	Hancock County	79840
 Indiana	Harrison County	39654
 Indiana	Hendricks County	174788
 Indiana	Henry County	48914
 Indiana	Howard County	83658
 Indiana	Huntington County	36662
 Indiana	Jackson County	46428
 Indiana	Jasper County	32918
 Indiana	Jay County	20478
 Indiana	Jefferson County	33147
 Indiana	Jennings County	27613
 Indiana	Johnson County	161765
 Indiana	Knox County	36282
 Indiana	Kosciusko County	80240
 Indiana	LaGrange County	40446
 Indiana	Lake County	498700
 Indiana	LaPorte County	112417
 Indiana	Lawrence County	45011
 Indiana	Madison County	130129
 Indiana	Marion County	977203
 Indiana	Marshall County	46095
 Indiana	Martin County	9812
 Indiana	Miami County	35962
 Indiana	Monroe County	139718
 Indiana	Montgomery County	37936
 Indiana	Morgan County	71780
 Indiana	Newton County	13830
 Indiana	Noble County	47457
 Indiana	Ohio County	5940
 Indiana	Orange County	19867
 Indiana	Owen County	21321
 Indiana	Parke County	16156
 Indiana	Perry County	19170
 Indiana	Pike County	12250
 Indiana	Porter County	173215
 Indiana	Posey County	25222
 Indiana	Pulaski County	12514
 Indiana	Putnam County	36726
 Indiana	Randolph County	24502
 Indiana	Ripley County	28995
 Indiana	Rush County	16752
 Indiana	St. Joseph County	272912
 Indiana	Scott County	24384
 Indiana	Shelby County	45055
 Indiana	Spencer County	19810
 Indiana	Starke County	23371
 Indiana	Steuben County	34435
 Indiana	Sullivan County	20817
 Indiana	Switzerland County	9737
 Indiana	Tippecanoe County	186251
 Indiana	Tipton County	15359
 Indiana	Union County	7087
 Indiana	Vanderburgh County	180136
 Indiana	Vermillion County	15439
 Indiana	Vigo County	106153
 Indiana	Wabash County	30976
 Indiana	Warren County	8440
 Indiana	Warrick County	63898
 Indiana	Washington County	28182
 Indiana	Wayne County	66553
 Indiana	Wells County	28180
 Indiana	White County	24688
 Indiana	Whitley County	34191
 Iowa	Adair County	7496
 Iowa	Adams County	3704
 Iowa	Allamakee County	14061
 Iowa	Appanoose County	12317
 Iowa	Audubon County	5674
 Iowa	Benton County	25575
 Iowa	Black Hawk County	131144
 Iowa	Boone County	26715
 Iowa	Bremer County	24988
 Iowa	Buchanan County	20565
 Iowa	Buena Vista County	20823
 Iowa	Butler County	14334
 Iowa	Calhoun County	9927
 Iowa	Carroll County	20760
 Iowa	Cass County	13127
 Iowa	Cedar County	18505
 Iowa	Cerro Gordo County	43127
 Iowa	Cherokee County	11658
 Iowa	Chickasaw County	12012
 Iowa	Clarke County	9748
 Iowa	Clay County	16384
 Iowa	Clayton County	17043
 Iowa	Clinton County	46460
 Iowa	Crawford County	16525
 Iowa	Dallas County	99678
 Iowa	Davis County	9110
 Iowa	Decatur County	7645
 Iowa	Delaware County	17488
 Iowa	Des Moines County	38910
 Iowa	Dickinson County	17703
 Iowa	Dubuque County	99266
 Iowa	Emmet County	9388
 Iowa	Fayette County	19509
 Iowa	Floyd County	15627
 Iowa	Franklin County	10019
 Iowa	Fremont County	6605
 Iowa	Greene County	8771
 Iowa	Grundy County	12329
 Iowa	Guthrie County	10623
 Iowa	Hamilton County	15039
 Iowa	Hancock County	10795
 Iowa	Hardin County	16878
 Iowa	Harrison County	14582
 Iowa	Henry County	20482
 Iowa	Howard County	9469
 Iowa	Humboldt County	9597
 Iowa	Ida County	7005
 Iowa	Iowa County	16662
 Iowa	Jackson County	19485
 Iowa	Jasper County	37813
 Iowa	Jefferson County	15663
 Iowa	Johnson County	152854
 Iowa	Jones County	20646
 Iowa	Keokuk County	10033
 Iowa	Kossuth County	14828
 Iowa	Lee County	33555
 Iowa	Linn County	230299
 Iowa	Louisa County	10837
 Iowa	Lucas County	8634
 Iowa	Lyon County	11934
 Iowa	Madison County	16548
 Iowa	Mahaska County	22190
 Iowa	Marion County	33414
 Iowa	Marshall County	40105
 Iowa	Mills County	14484
 Iowa	Mitchell County	10565
 Iowa	Monona County	8751
 Iowa	Monroe County	7577
 Iowa	Montgomery County	10330
 Iowa	Muscatine County	43235
 Iowa	O'Brien County	14182
 Iowa	Osceola County	6192
 Iowa	Page County	15211
 Iowa	Palo Alto County	8996
 Iowa	Plymouth County	25698
 Iowa	Pocahontas County	7078
 Iowa	Polk County	492401
 Iowa	Pottawattamie County	93667
 Iowa	Poweshiek County	18662
 Iowa	Ringgold County	4663
 Iowa	Sac County	9814
 Iowa	Scott County	174669
 Iowa	Shelby County	11746
 Iowa	Sioux County	35872
 Iowa	Story County	98537
 Iowa	Tama County	17135
 Iowa	Taylor County	5896
 Iowa	Union County	12138
 Iowa	Van Buren County	7203
 Iowa	Wapello County	35437
 Iowa	Warren County	52403
 Iowa	Washington County	22565
 Iowa	Wayne County	6497
 Iowa	Webster County	36999
 Iowa	Winnebago County	10679
 Iowa	Winneshiek County	20070
 Iowa	Woodbury County	105941
 Iowa	Worth County	7443
 Iowa	Wright County	12943
 Kansas	Allen County	12526
 Kansas	Anderson County	7836
 Kansas	Atchison County	16348
 Kansas	Barber County	4228
 Kansas	Barton County	25493
 Kansas	Bourbon County	14360
 Kansas	Brown County	9508
 Kansas	Butler County	67380
 Kansas	Chase County	2572
 Kansas	Chautauqua County	3379
 Kansas	Cherokee County	19362
 Kansas	Cheyenne County	2616
 Kansas	Clark County	1991
 Kansas	Clay County	8117
 Kansas	Cloud County	9032
 Kansas	Coffey County	8360
 Kansas	Comanche County	1689
 Kansas	Cowley County	34549
 Kansas	Crawford County	38972
 Kansas	Decatur County	2764
 Kansas	Dickinson County	18402
 Kansas	Doniphan County	7510
 Kansas	Douglas County	118785
 Kansas	Edwards County	2907
 Kansas	Elk County	2483
 Kansas	Ellis County	28934
 Kansas	Ellsworth County	6376
 Kansas	Finney County	38470
 Kansas	Ford County	34287
 Kansas	Franklin County	25996
 Kansas	Geary County	36739
 Kansas	Gove County	2718
 Kansas	Graham County	2415
 Kansas	Grant County	7352
 Kansas	Gray County	5653
 Kansas	Greeley County	1284
 Kansas	Greenwood County	6016
 Kansas	Hamilton County	2518
 Kansas	Harper County	5485
 Kansas	Harvey County	34024
 Kansas	Haskell County	3780
 Kansas	Hodgeman County	1723
 Kansas	Jackson County	13232
 Kansas	Jefferson County	18368
 Kansas	Jewell County	2932
 Kansas	Johnson County	609863
 Kansas	Kearny County	3983
 Kansas	Kingman County	7470
 Kansas	Kiowa County	2460
 Kansas	Labette County	20184
 Kansas	Lane County	1574
 Kansas	Leavenworth County	81881
 Kansas	Lincoln County	2939
 Kansas	Linn County	9591
 Kansas	Logan County	2762
 Kansas	Lyon County	32179
 Kansas	McPherson County	30223
 Kansas	Marion County	11823
 Kansas	Marshall County	10038
 Kansas	Meade County	4055
 Kansas	Miami County	34191
 Kansas	Mitchell County	5796
 Kansas	Montgomery County	31486
 Kansas	Morris County	5386
 Kansas	Morton County	2701
 Kansas	Nemaha County	10273
 Kansas	Neosho County	15904
 Kansas	Ness County	2687
 Kansas	Norton County	5459
 Kansas	Osage County	15766
 Kansas	Osborne County	3500
 Kansas	Ottawa County	5735
 Kansas	Pawnee County	6253
 Kansas	Phillips County	4981
 Kansas	Pottawatomie County	25348
 Kansas	Pratt County	9157
 Kansas	Rawlins County	2561
 Kansas	Reno County	61898
 Kansas	Republic County	4674
 Kansas	Rice County	9427
 Kansas	Riley County	71959
 Kansas	Rooks County	4919
 Kansas	Rush County	2956
 Kansas	Russell County	6691
 Kansas	Saline County	54303
 Kansas	Scott County	5151
 Kansas	Sedgwick County	523824
 Kansas	Seward County	21964
 Kansas	Shawnee County	178909
 Kansas	Sheridan County	2447
 Kansas	Sherman County	5927
 Kansas	Smith County	3570
 Kansas	Stafford County	4072
 Kansas	Stanton County	2084
 Kansas	Stevens County	5250
 Kansas	Sumner County	22382
 Kansas	Thomas County	7930
 Kansas	Trego County	2808
 Kansas	Wabaunsee County	6877
 Kansas	Wallace County	1512
 Kansas	Washington County	5530
 Kansas	Wichita County	2152
 Kansas	Wilson County	8624
 Kansas	Woodson County	3115
 Kansas	Wyandotte County	169245
 Kentucky	Adair County	18903
 Kentucky	Allen County	20588
 Kentucky	Anderson County	23852
 Kentucky	Ballard County	7728
 Kentucky	Barren County	44485
 Kentucky	Bath County	12750
 Kentucky	Bell County	24097
 Kentucky	Boone County	135968
 Kentucky	Bourbon County	20252
 Kentucky	Boyd County	48261
 Kentucky	Boyle County	30614
 Kentucky	Bracken County	8400
 Kentucky	Breathitt County	13718
 Kentucky	Breckinridge County	20432
 Kentucky	Bullitt County	82217
 Kentucky	Butler County	12371
 Kentucky	Caldwell County	12649
 Kentucky	Calloway County	37103
 Kentucky	Campbell County	93076
 Kentucky	Carlisle County	4826
 Kentucky	Carroll County	10810
 Kentucky	Carter County	26627
 Kentucky	Casey County	15941
 Kentucky	Christian County	72748
 Kentucky	Clark County	36972
 Kentucky	Clay County	20345
 Kentucky	Clinton County	9253
 Kentucky	Crittenden County	8990
 Kentucky	Cumberland County	5888
 Kentucky	Daviess County	103312
 Kentucky	Edmonson County	12126
 Kentucky	Elliott County	7354
 Kentucky	Estill County	14163
 Kentucky	Fayette County	322570
 Kentucky	Fleming County	15082
 Kentucky	Floyd County	35942
 Kentucky	Franklin County	51541
 Kentucky	Fulton County	6515
 Kentucky	Gallatin County	8690
 Kentucky	Garrard County	16953
 Kentucky	Grant County	24941
 Kentucky	Graves County	36649
 Kentucky	Grayson County	26420
 Kentucky	Green County	11107
 Kentucky	Greenup County	35962
 Kentucky	Hancock County	9095
 Kentucky	Hardin County	110702
 Kentucky	Harlan County	26831
 Kentucky	Harrison County	18692
 Kentucky	Hart County	19288
 Kentucky	Henderson County	44793
 Kentucky	Henry County	15678
 Kentucky	Hickman County	4521
 Kentucky	Hopkins County	45423
 Kentucky	Jackson County	12955
 Kentucky	Jefferson County	782969
 Kentucky	Jessamine County	52991
 Kentucky	Johnson County	22680
 Kentucky	Kenton County	169064
 Kentucky	Knott County	14251
 Kentucky	Knox County	30193
 Kentucky	Larue County	14867
 Kentucky	Laurel County	62613
 Kentucky	Lawrence County	16293
 Kentucky	Lee County	7395
 Kentucky	Leslie County	10513
 Kentucky	Letcher County	21548
 Kentucky	Lewis County	13080
 Kentucky	Lincoln County	24275
 Kentucky	Livingston County	8888
 Kentucky	Logan County	27432
 Kentucky	Lyon County	8680
 Kentucky	McCracken County	67875
 Kentucky	McCreary County	16888
 Kentucky	McLean County	9152
 Kentucky	Madison County	92701
 Kentucky	Magoffin County	11637
 Kentucky	Marion County	19581
 Kentucky	Marshall County	31659
 Kentucky	Martin County	11287
 Kentucky	Mason County	17120
 Kentucky	Meade County	30003
 Kentucky	Menifee County	6113
 Kentucky	Mercer County	22641
 Kentucky	Metcalfe County	10286
 Kentucky	Monroe County	11338
 Kentucky	Montgomery County	28114
 Kentucky	Morgan County	13726
 Kentucky	Muhlenberg County	30928
 Kentucky	Nelson County	46738
 Kentucky	Nicholas County	7537
 Kentucky	Ohio County	23772
 Kentucky	Oldham County	67607
 Kentucky	Owen County	11278
 Kentucky	Owsley County	4051
 Kentucky	Pendleton County	14644
 Kentucky	Perry County	28473
 Kentucky	Pike County	58669
 Kentucky	Powell County	13129
 Kentucky	Pulaski County	65034
 Kentucky	Robertson County	2193
 Kentucky	Rockcastle County	16037
 Kentucky	Rowan County	24662
 Kentucky	Russell County	17991
 Kentucky	Scott County	57155
 Kentucky	Shelby County	48065
 Kentucky	Simpson County	19594
 Kentucky	Spencer County	19490
 Kentucky	Taylor County	26023
 Kentucky	Todd County	12243
 Kentucky	Trigg County	14061
 Kentucky	Trimble County	8474
 Kentucky	Union County	13668
 Kentucky	Warren County	134554
 Kentucky	Washington County	12027
 Kentucky	Wayne County	19555
 Kentucky	Webster County	13017
 Kentucky	Whitley County	36712
 Kentucky	Wolfe County	6562
 Kentucky	Woodford County	26871
 Louisiana	Acadia Parish	57576
 Louisiana	Allen Parish	22750
 Louisiana	Ascension Parish	126500
 Louisiana	Assumption Parish	21039
 Louisiana	Avoyelles Parish	39693
 Louisiana	Beauregard Parish	36549
 Louisiana	Bienville Parish	12981
 Louisiana	Bossier Parish	128746
 Louisiana	Caddo Parish	237848
 Louisiana	Calcasieu Parish	216785
 Louisiana	Caldwell Parish	9645
 Louisiana	Cameron Parish	5617
 Louisiana	Catahoula Parish	8906
 Louisiana	Claiborne Parish	14170
 Louisiana	Concordia Parish	18687
 Louisiana	De Soto Parish	26812
 Louisiana	East Baton Rouge Parish	456781
 Louisiana	East Carroll Parish	7459
 Louisiana	East Feliciana Parish	19539
 Louisiana	Evangeline Parish	32350
 Louisiana	Franklin Parish	19774
 Louisiana	Grant Parish	22169
 Louisiana	Iberia Parish	69929
 Louisiana	Iberville Parish	30241
 Louisiana	Jackson Parish	15031
 Louisiana	Jefferson Parish	440781
 Louisiana	Jefferson Davis Parish	32250
 Louisiana	Lafayette Parish	241753
 Louisiana	Lafourche Parish	97557
 Louisiana	LaSalle Parish	14791
 Louisiana	Lincoln Parish	48396
 Louisiana	Livingston Parish	142282
 Louisiana	Madison Parish	10017
 Louisiana	Morehouse Parish	25629
 Louisiana	Natchitoches Parish	37515
 Louisiana	Orleans Parish	383997
 Louisiana	Ouachita Parish	160368
 Louisiana	Plaquemines Parish	23515
 Louisiana	Pointe Coupee Parish	20758
 Louisiana	Rapides Parish	130023
 Louisiana	Red River Parish	7620
 Louisiana	Richland Parish	20043
 Louisiana	Sabine Parish	22155
 Louisiana	St. Bernard Parish	43764
 Louisiana	St. Charles Parish	52549
 Louisiana	St. Helena Parish	10920
 Louisiana	St. James Parish	20192
 Louisiana	St. John the Baptist Parish	42477
 Louisiana	St. Landry Parish	82540
 Louisiana	St. Martin Parish	51767
 Louisiana	St. Mary Parish	49406
 Louisiana	St. Tammany Parish	264570
 Louisiana	Tangipahoa Parish	133157
 Louisiana	Tensas Parish	4147
 Louisiana	Terrebonne Parish	109580
 Louisiana	Union Parish	21107
 Louisiana	Vermilion Parish	57359
 Louisiana	Vernon Parish	48750
 Louisiana	Washington Parish	45463
 Louisiana	Webster Parish	36967
 Louisiana	West Baton Rouge Parish	27199
 Louisiana	West Carroll Parish	9751
 Louisiana	West Feliciana Parish	15310
 Louisiana	Winn Parish	13755
 Maine	Androscoggin County	111139
 Maine	Aroostook County	67105
 Maine	Cumberland County	303069
 Maine	Franklin County	29456
 Maine	Hancock County	55478
 Maine	Kennebec County	123642
 Maine	Knox County	40607
 Maine	Lincoln County	35237
 Maine	Oxford County	57777
 Maine	Penobscot County	152199
 Maine	Piscataquis County	16800
 Maine	Sagadahoc County	36699
 Maine	Somerset County	50477
 Maine	Waldo County	39607
 Maine	Washington County	31095
 Maine	York County	211972
 Maryland	Allegany County	68106
 Maryland	Anne Arundel County	588261
 Maryland	Baltimore County	854535
 Maryland	Calvert County	92783
 Maryland	Caroline County	33293
 Maryland	Carroll County	172891
 Maryland	Cecil County	103725
 Maryland	Charles County	166617
 Maryland	Dorchester County	32531
 Maryland	Frederick County	271717
 Maryland	Garrett County	28806
 Maryland	Harford County	260924
 Maryland	Howard County	332317
 Maryland	Kent County	19198
 Maryland	Montgomery County	1062061
 Maryland	Prince George's County	967201
 Maryland	Queen Anne's County	49874
 Maryland	St. Mary's County	113777
 Maryland	Somerset County	24620
 Maryland	Talbot County	37526
 Maryland	Washington County	154705
 Maryland	Wicomico County	103588
 Maryland	Worcester County	52460
 Maryland	Baltimore city	585708
 Massachusetts	Barnstable County	228996
 Massachusetts	Berkshire County	129026
 Massachusetts	Bristol County	579200
 Massachusetts	Dukes County	20600
 Massachusetts	Essex County	809829
 Massachusetts	Franklin County	71029
 Massachusetts	Hampden County	465825
 Massachusetts	Hampshire County	162308
 Massachusetts	Middlesex County	1632002
 Massachusetts	Nantucket County	14255
 Massachusetts	Norfolk County	725981
 Massachusetts	Plymouth County	530819
 Massachusetts	Suffolk County	797936
 Massachusetts	Worcester County	862111
 Michigan	Alcona County	10167
 Michigan	Alger County	8842
 Michigan	Allegan County	120502
 Michigan	Alpena County	28907
 Michigan	Antrim County	23431
 Michigan	Arenac County	15002
 Michigan	Baraga County	8158
 Michigan	Barry County	62423
 Michigan	Bay County	103856
 Michigan	Benzie County	17970
 Michigan	Berrien County	154316
 Michigan	Branch County	44862
 Michigan	Calhoun County	134310
 Michigan	Cass County	51589
 Michigan	Charlevoix County	26054
 Michigan	Cheboygan County	25579
 Michigan	Chippewa County	36785
 Michigan	Clare County	30856
 Michigan	Clinton County	79128
 Michigan	Crawford County	12988
 Michigan	Delta County	36903
 Michigan	Dickinson County	25947
 Michigan	Eaton County	109175
 Michigan	Emmet County	34112
 Michigan	Genesee County	406211
 Michigan	Gladwin County	25386
 Michigan	Gogebic County	14380
 Michigan	Grand Traverse County	95238
 Michigan	Gratiot County	41761
 Michigan	Hillsdale County	45746
 Michigan	Houghton County	37361
 Michigan	Huron County	31407
 Michigan	Ingham County	284900
 Michigan	Ionia County	66804
 Michigan	Iosco County	25237
 Michigan	Iron County	11631
 Michigan	Isabella County	64394
 Michigan	Jackson County	160366
 Michigan	Kalamazoo County	261670
 Michigan	Kalkaska County	17939
 Michigan	Kent County	657974
 Michigan	Keweenaw County	2046
 Michigan	Lake County	12096
 Michigan	Lapeer County	88619
 Michigan	Leelanau County	22301
 Michigan	Lenawee County	99423
 Michigan	Livingston County	193866
 Michigan	Luce County	5339
 Michigan	Mackinac County	10834
 Michigan	Macomb County	881217
 Michigan	Manistee County	25032
 Michigan	Marquette County	66017
 Michigan	Mason County	29052
 Michigan	Mecosta County	39714
 Michigan	Menominee County	23502
 Michigan	Midland County	83494
 Michigan	Missaukee County	15052
 Michigan	Monroe County	154809
 Michigan	Montcalm County	66614
 Michigan	Montmorency County	9153
 Michigan	Muskegon County	175824
 Michigan	Newaygo County	49978
 Michigan	Oakland County	1274395
 Michigan	Oceana County	26659
 Michigan	Ogemaw County	20770
 Michigan	Ontonagon County	5816
 Michigan	Osceola County	22891
 Michigan	Oscoda County	8219
 Michigan	Otsego County	25091
 Michigan	Ottawa County	296200
 Michigan	Presque Isle County	12982
 Michigan	Roscommon County	23459
 Michigan	Saginaw County	190124
 Michigan	St. Clair County	160383
 Michigan	St. Joseph County	60939
 Michigan	Sanilac County	40611
 Michigan	Schoolcraft County	8047
 Michigan	Shiawassee County	68094
 Michigan	Tuscola County	53323
 Michigan	Van Buren County	75587
 Michigan	Washtenaw County	372258
 Michigan	Wayne County	1793561
 Michigan	Wexford County	33673
 Minnesota	Aitkin County	15697
 Minnesota	Anoka County	363887
 Minnesota	Becker County	35183
 Minnesota	Beltrami County	46228
 Minnesota	Benton County	41379
 Minnesota	Big Stone County	5166
 Minnesota	Blue Earth County	69112
 Minnesota	Brown County	25912
 Minnesota	Carlton County	36207
 Minnesota	Carver County	106922
 Minnesota	Cass County	30066
 Minnesota	Chippewa County	12598
 Minnesota	Chisago County	56621
 Minnesota	Clay County	65318
 Minnesota	Clearwater County	8524
 Minnesota	Cook County	5600
 Minnesota	Cottonwood County	11517
 Minnesota	Crow Wing County	66123
 Minnesota	Dakota County	439882
 Minnesota	Dodge County	20867
 Minnesota	Douglas County	39006
 Minnesota	Faribault County	13921
 Minnesota	Fillmore County	21228
 Minnesota	Freeborn County	30895
 Minnesota	Goodhue County	47582
 Minnesota	Grant County	6074
 Minnesota	Hennepin County	1281565
 Minnesota	Houston County	18843
 Minnesota	Hubbard County	21344
 Minnesota	Isanti County	41135
 Minnesota	Itasca County	45014
 Minnesota	Jackson County	9989
 Minnesota	Kanabec County	16032
 Minnesota	Kandiyohi County	43732
 Minnesota	Kittson County	4207
 Minnesota	Koochiching County	12062
 Minnesota	Lac qui Parle County	6719
 Minnesota	Lake County	10905
 Minnesota	Lake of the Woods County	3763
 Minnesota	Le Sueur County	28674
 Minnesota	Lincoln County	5640
 Minnesota	Lyon County	25269
 Minnesota	McLeod County	36771
 Minnesota	Mahnomen County	5411
 Minnesota	Marshall County	9040
 Minnesota	Martin County	20025
 Minnesota	Meeker County	23400
 Minnesota	Mille Lacs County	26459
 Minnesota	Morrison County	34010
 Minnesota	Mower County	40029
 Minnesota	Murray County	8179
 Minnesota	Nicollet County	34454
 Minnesota	Nobles County	22290
 Minnesota	Norman County	6441
 Minnesota	Olmsted County	162847
 Minnesota	Otter Tail County	60081
 Minnesota	Pennington County	13992
 Minnesota	Pine County	28876
 Minnesota	Pipestone County	9424
 Minnesota	Polk County	31192
 Minnesota	Pope County	11308
 Minnesota	Ramsey County	552352
 Minnesota	Red Lake County	3935
 Minnesota	Redwood County	15425
 Minnesota	Renville County	14723
 Minnesota	Rice County	67097
 Minnesota	Rock County	9704
 Minnesota	Roseau County	15331
 Minnesota	St. Louis County	200231
 Minnesota	Scott County	150928
 Minnesota	Sherburne County	97183
 Minnesota	Sibley County	14836
 Minnesota	Stearns County	158292
 Minnesota	Steele County	37406
 Minnesota	Stevens County	9671
 Minnesota	Swift County	9838
 Minnesota	Todd County	25262
 Minnesota	Traverse County	3360
 Minnesota	Wabasha County	21387
 Minnesota	Wadena County	14065
 Minnesota	Waseca County	18968
 Minnesota	Washington County	267568
 Minnesota	Watonwan County	11253
 Minnesota	Wilkin County	6506
 Minnesota	Winona County	49671
 Minnesota	Wright County	141337
 Minnesota	Yellow Medicine County	9528
 Mississippi	Adams County	29538
 Mississippi	Alcorn County	34740
 Mississippi	Amite County	12720
 Mississippi	Attala County	17889
 Mississippi	Benton County	7646
 Mississippi	Bolivar County	30985
 Mississippi	Calhoun County	13266
 Mississippi	Carroll County	9998
 Mississippi	Chickasaw County	17106
 Mississippi	Choctaw County	8246
 Mississippi	Claiborne County	9135
 Mississippi	Clarke County	15615
 Mississippi	Clay County	18636
 Mississippi	Coahoma County	21390
 Mississippi	Copiah County	28368
 Mississippi	Covington County	18340
 Mississippi	DeSoto County	185314
 Mississippi	Forrest County	78158
 Mississippi	Franklin County	7675
 Mississippi	George County	24350
 Mississippi	Greene County	13530
 Mississippi	Grenada County	21629
 Mississippi	Hancock County	46053
 Mississippi	Harrison County	208621
 Mississippi	Hinds County	227742
 Mississippi	Holmes County	17000
 Mississippi	Humphreys County	7785
 Mississippi	Issaquena County	1338
 Mississippi	Itawamba County	23863
 Mississippi	Jackson County	143252
 Mississippi	Jasper County	16367
 Mississippi	Jefferson County	7260
 Mississippi	Jefferson Davis County	11321
 Mississippi	Jones County	67246
 Mississippi	Kemper County	8988
 Mississippi	Lafayette County	55813
 Mississippi	Lamar County	64222
 Mississippi	Lauderdale County	72984
 Mississippi	Lawrence County	12016
 Mississippi	Leake County	21275
 Mississippi	Lee County	83343
 Mississippi	Leflore County	28339
 Mississippi	Lincoln County	34907
 Mississippi	Lowndes County	58879
 Mississippi	Madison County	109145
 Mississippi	Marion County	24441
 Mississippi	Marshall County	33752
 Mississippi	Monroe County	34180
 Mississippi	Montgomery County	9822
 Mississippi	Neshoba County	29087
 Mississippi	Newton County	21291
 Mississippi	Noxubee County	10285
 Mississippi	Oktibbeha County	51788
 Mississippi	Panola County	33208
 Mississippi	Pearl River County	56145
 Mississippi	Perry County	11511
 Mississippi	Pike County	40324
 Mississippi	Pontotoc County	31184
 Mississippi	Prentiss County	25008
 Mississippi	Quitman County	6176
 Mississippi	Rankin County	157031
 Mississippi	Scott County	27990
 Mississippi	Sharkey County	3800
 Mississippi	Simpson County	25949
 Mississippi	Smith County	14209
 Mississippi	Stone County	18333
 Mississippi	Sunflower County	25971
 Mississippi	Tallahatchie County	12715
 Mississippi	Tate County	28064
 Mississippi	Tippah County	21815
 Mississippi	Tishomingo County	18850
 Mississippi	Tunica County	9782
 Mississippi	Union County	27777
 Mississippi	Walthall County	13884
 Mississippi	Warren County	44722
 Mississippi	Washington County	44922
 Mississippi	Wayne County	19779
 Mississippi	Webster County	9926
 Mississippi	Wilkinson County	8587
 Mississippi	Winston County	17714
 Mississippi	Yalobusha County	12481
 Mississippi	Yazoo County	26743
 Missouri	Adair County	25314
 Missouri	Andrew County	18135
 Missouri	Atchison County	5305
 Missouri	Audrain County	24962
 Missouri	Barry County	34534
 Missouri	Barton County	11637
 Missouri	Bates County	16042
 Missouri	Benton County	19394
 Missouri	Bollinger County	10567
 Missouri	Boone County	183610
 Missouri	Buchanan County	84793
 Missouri	Butler County	42130
 Missouri	Caldwell County	8815
 Missouri	Callaway County	44283
 Missouri	Camden County	42745
 Missouri	Cape Girardeau County	81710
 Missouri	Carroll County	8495
 Missouri	Carter County	5202
 Missouri	Cass County	107824
 Missouri	Cedar County	14188
 Missouri	Chariton County	7408
 Missouri	Christian County	88842
 Missouri	Clark County	6634
 Missouri	Clay County	253335
 Missouri	Clinton County	21184
 Missouri	Cole County	77279
 Missouri	Cooper County	17103
 Missouri	Crawford County	23056
 Missouri	Dade County	7569
 Missouri	Dallas County	17071
 Missouri	Daviess County	8430
 Missouri	DeKalb County	11029
 Missouri	Dent County	14421
 Missouri	Douglas County	11578
 Missouri	Dunklin County	28283
 Missouri	Franklin County	104682
 Missouri	Gasconade County	14794
 Missouri	Gentry County	6162
 Missouri	Greene County	298915
 Missouri	Grundy County	9808
 Missouri	Harrison County	8157
 Missouri	Henry County	21946
 Missouri	Hickory County	8279
 Missouri	Holt County	4223
 Missouri	Howard County	10151
 Missouri	Howell County	39750
 Missouri	Iron County	9537
 Missouri	Jackson County	717204
 Missouri	Jasper County	122761
 Missouri	Jefferson County	226739
 Missouri	Johnson County	54013
 Missouri	Knox County	3744
 Missouri	Laclede County	36039
 Missouri	Lafayette County	32984
 Missouri	Lawrence County	38001
 Missouri	Lewis County	10032
 Missouri	Lincoln County	59574
 Missouri	Linn County	11874
 Missouri	Livingston County	14557
 Missouri	McDonald County	23303
 Missouri	Macon County	15209
 Missouri	Madison County	12626
 Missouri	Maries County	8432
 Missouri	Marion County	28525
 Missouri	Mercer County	3538
 Missouri	Miller County	24722
 Missouri	Mississippi County	12577
 Missouri	Moniteau County	15473
 Missouri	Monroe County	8666
 Missouri	Montgomery County	11322
 Missouri	Morgan County	21006
 Missouri	New Madrid County	16434
 Missouri	Newton County	58648
 Missouri	Nodaway County	21241
 Missouri	Oregon County	8635
 Missouri	Osage County	13274
 Missouri	Ozark County	8553
 Missouri	Pemiscot County	15661
 Missouri	Perry County	18956
 Missouri	Pettis County	42980
 Missouri	Phelps County	44638
 Missouri	Pike County	17587
 Missouri	Platte County	106718
 Missouri	Polk County	31519
 Missouri	Pulaski County	53955
 Missouri	Putnam County	4681
 Missouri	Ralls County	10355
 Missouri	Randolph County	24716
 Missouri	Ray County	23158
 Missouri	Reynolds County	6096
 Missouri	Ripley County	10679
 Missouri	St. Charles County	405262
 Missouri	St. Clair County	9284
 Missouri	Ste. Genevieve County	18479
 Missouri	St. Francois County	66922
 Missouri	St. Louis County	1004125
 Missouri	Saline County	23333
 Missouri	Schuyler County	4032
 Missouri	Scotland County	4716
 Missouri	Scott County	38059
 Missouri	Shannon County	7031
 Missouri	Shelby County	6103
 Missouri	Stoddard County	28672
 Missouri	Stone County	31076
 Missouri	Sullivan County	5999
 Missouri	Taney County	56066
 Missouri	Texas County	24487
 Missouri	Vernon County	19707
 Missouri	Warren County	35532
 Missouri	Washington County	23514
 Missouri	Wayne County	10974
 Missouri	Webster County	39085
 Missouri	Worth County	1973
 Missouri	Wright County	18188
 Missouri	St. Louis city	301578
 Montana	Beaverhead County	9371
 Montana	Big Horn County	13124
 Montana	Blaine County	7044
 Montana	Broadwater County	6774
 Montana	Carbon County	10473
 Montana	Carter County	1415
 Montana	Cascade County	84414
 Montana	Chouteau County	5895
 Montana	Custer County	11867
 Montana	Daniels County	1661
 Montana	Dawson County	8940
 Montana	Deer Lodge County	9421
 Montana	Fallon County	3049
 Montana	Fergus County	11446
 Montana	Flathead County	104357
 Montana	Gallatin County	118960
 Montana	Garfield County	1173
 Montana	Glacier County	13778
 Montana	Golden Valley County	823
 Montana	Granite County	3309
 Montana	Hill County	16309
 Montana	Jefferson County	12085
 Montana	Judith Basin County	2023
 Montana	Lake County	31134
 Montana	Lewis and Clark County	70973
 Montana	Liberty County	1959
 Montana	Lincoln County	19677
 Montana	McCone County	1729
 Montana	Madison County	8623
 Montana	Meagher County	1927
 Montana	Mineral County	4535
 Montana	Missoula County	117922
 Montana	Musselshell County	4730
 Montana	Park County	17191
 Montana	Petroleum County	496
 Montana	Phillips County	4217
 Montana	Pondera County	5898
 Montana	Powder River County	1694
 Montana	Powell County	6946
 Montana	Prairie County	1088
 Montana	Ravalli County	44174
 Montana	Richland County	11491
 Montana	Roosevelt County	10794
 Montana	Rosebud County	8329
 Montana	Sanders County	12400
 Montana	Sheridan County	3539
 Montana	Silver Bow County	35133
 Montana	Stillwater County	8963
 Montana	Sweet Grass County	3678
 Montana	Teton County	6226
 Montana	Toole County	4971
 Montana	Treasure County	762
 Montana	Valley County	7578
 Montana	Wheatland County	2069
 Montana	Wibaux County	937
 Montana	Yellowstone County	164731
 Nebraska	Adams County	31205
 Nebraska	Antelope County	6295
 Nebraska	Arthur County	434
 Nebraska	Banner County	674
 Nebraska	Blaine County	431
 Nebraska	Boone County	5379
 Nebraska	Box Butte County	10842
 Nebraska	Boyd County	1810
 Nebraska	Brown County	2903
 Nebraska	Buffalo County	50084
 Nebraska	Burt County	6722
 Nebraska	Butler County	8369
 Nebraska	Cass County	26598
 Nebraska	Cedar County	8380
 Nebraska	Chase County	3893
 Nebraska	Cherry County	5455
 Nebraska	Cheyenne County	9468
 Nebraska	Clay County	6104
 Nebraska	Colfax County	10582
 Nebraska	Cuming County	9013
 Nebraska	Custer County	10545
 Nebraska	Dakota County	21582
 Nebraska	Dawes County	8199
 Nebraska	Dawson County	24111
 Nebraska	Deuel County	1838
 Nebraska	Dixon County	5606
 Nebraska	Dodge County	37167
 Nebraska	Douglas County	584526
 Nebraska	Dundy County	1654
 Nebraska	Fillmore County	5551
 Nebraska	Franklin County	2889
 Nebraska	Frontier County	2519
 Nebraska	Furnas County	4636
 Nebraska	Gage County	21704
 Nebraska	Garden County	1874
 Nebraska	Garfield County	1813
 Nebraska	Gosper County	1893
 Nebraska	Grant County	611
 Nebraska	Greeley County	2188
 Nebraska	Hall County	62895
 Nebraska	Hamilton County	9429
 Nebraska	Harlan County	3073
 Nebraska	Hayes County	856
 Nebraska	Hitchcock County	2616
 Nebraska	Holt County	10127
 Nebraska	Hooker County	711
 Nebraska	Howard County	6475
 Nebraska	Jefferson County	7240
 Nebraska	Johnson County	5290
 Nebraska	Kearney County	6688
 Nebraska	Keith County	8335
 Nebraska	Keya Paha County	769
 Nebraska	Kimball County	3434
 Nebraska	Knox County	8391
 Nebraska	Lancaster County	322608
 Nebraska	Lincoln County	34676
 Nebraska	Logan County	716
 Nebraska	Loup County	607
 Nebraska	McPherson County	399
 Nebraska	Madison County	35585
 Nebraska	Merrick County	7668
 Nebraska	Morrill County	4555
 Nebraska	Nance County	3380
 Nebraska	Nemaha County	7074
 Nebraska	Nuckolls County	4095
 Nebraska	Otoe County	15912
 Nebraska	Pawnee County	2544
 Nebraska	Perkins County	2858
 Nebraska	Phelps County	8968
 Nebraska	Pierce County	7317
 Nebraska	Platte County	34296
 Nebraska	Polk County	5214
 Nebraska	Red Willow County	10702
 Nebraska	Richardson County	7871
 Nebraska	Rock County	1262
 Nebraska	Saline County	14292
 Nebraska	Sarpy County	190604
 Nebraska	Saunders County	22278
 Nebraska	Scotts Bluff County	36084
 Nebraska	Seward County	17609
 Nebraska	Sheridan County	5127
 Nebraska	Sherman County	2959
 Nebraska	Sioux County	1135
 Nebraska	Stanton County	5842
 Nebraska	Thayer County	5034
 Nebraska	Thomas County	669
 Nebraska	Thurston County	6773
 Nebraska	Valley County	4059
 Nebraska	Washington County	20865
 Nebraska	Wayne County	9697
 Nebraska	Webster County	3395
 Nebraska	Wheeler County	774
 Nebraska	York County	14125
 Nevada	Churchill County	25516
 Nevada	Clark County	2265461
 Nevada	Douglas County	49488
 Nevada	Elko County	53702
 Nevada	Esmeralda County	729
 Nevada	Eureka County	1855
 Nevada	Humboldt County	17285
 Nevada	Lander County	5734
 Nevada	Lincoln County	4499
 Nevada	Lyon County	59235
 Nevada	Mineral County	4554
 Nevada	Nye County	51591
 Nevada	Pershing County	6650
 Nevada	Storey County	4104
 Nevada	Washoe County	486492
 Nevada	White Pine County	9080
 Nevada	Carson City	58639
 New Hampshire	Belknap County	63705
 New Hampshire	Carroll County	50107
 New Hampshire	Cheshire County	76458
 New Hampshire	Coos County	31268
 New Hampshire	Grafton County	91118
 New Hampshire	Hillsborough County	422937
 New Hampshire	Merrimack County	153808
 New Hampshire	Rockingham County	314176
 New Hampshire	Strafford County	130889
 New Hampshire	Sullivan County	43063
 New Jersey	Atlantic County	274534
 New Jersey	Bergen County	955732
 New Jersey	Burlington County	461860
 New Jersey	Camden County	523485
 New Jersey	Cape May County	95263
 New Jersey	Cumberland County	154152
 New Jersey	Essex County	863728
 New Jersey	Gloucester County	302294
 New Jersey	Hudson County	724854
 New Jersey	Hunterdon County	128947
 New Jersey	Mercer County	387340
 New Jersey	Middlesex County	863162
 New Jersey	Monmouth County	643615
 New Jersey	Morris County	509285
 New Jersey	Ocean County	637229
 New Jersey	Passaic County	524118
 New Jersey	Salem County	64837
 New Jersey	Somerset County	345361
 New Jersey	Sussex County	144221
 New Jersey	Union County	575345
 New Jersey	Warren County	109632
 New Mexico	Bernalillo County	676444
 New Mexico	Catron County	3579
 New Mexico	Chaves County	65157
 New Mexico	Cibola County	27172
 New Mexico	Colfax County	12387
 New Mexico	Curry County	48430
 New Mexico	De Baca County	1698
 New Mexico	Doña Ana County	219561
 New Mexico	Eddy County	62314
 New Mexico	Grant County	28185
 New Mexico	Guadalupe County	4452
 New Mexico	Harding County	657
 New Mexico	Hidalgo County	4178
 New Mexico	Lea County	74455
 New Mexico	Lincoln County	20269
 New Mexico	Los Alamos County	19419
 New Mexico	Luna County	25427
 New Mexico	McKinley County	72902
 New Mexico	Mora County	4189
 New Mexico	Otero County	67839
 New Mexico	Quay County	8746
 New Mexico	Rio Arriba County	40363
 New Mexico	Roosevelt County	19191
 New Mexico	Sandoval County	148834
 New Mexico	San Juan County	121661
 New Mexico	San Miguel County	27201
 New Mexico	Santa Fe County	154823
 New Mexico	Sierra County	11576
 New Mexico	Socorro County	16595
 New Mexico	Taos County	34489
 New Mexico	Torrance County	15045
 New Mexico	Union County	4079
 New Mexico	Valencia County	76205
 New York	Albany County	314848
 New York	Allegany County	46456
 New York	Bronx County	1472654
 New York	Broome County	198683
 New York	Cattaraugus County	77042
 New York	Cayuga County	76248
 New York	Chautauqua County	127657
 New York	Chemung County	84148
 New York	Chenango County	47220
 New York	Clinton County	79843
 New York	Columbia County	61570
 New York	Cortland County	46809
 New York	Delaware County	44308
 New York	Dutchess County	295911
 New York	Erie County	954236
 New York	Essex County	37381
 New York	Franklin County	47555
 New York	Fulton County	53324
 New York	Genesee County	58388
 New York	Greene County	47931
 New York	Hamilton County	5107
 New York	Herkimer County	60139
 New York	Jefferson County	116721
 New York	Kings County	2736074
 New York	Lewis County	26582
 New York	Livingston County	61834
 New York	Madison County	68016
 New York	Monroe County	759443
 New York	Montgomery County	49532
 New York	Nassau County	1395774
 New York	New York County	1694251
 New York	Niagara County	212666
 New York	Oneida County	232125
 New York	Onondaga County	476516
 New York	Ontario County	112458
 New York	Orange County	401310
 New York	Orleans County	40343
 New York	Oswego County	117525
 New York	Otsego County	58524
 New York	Putnam County	97668
 New York	Queens County	2405464
 New York	Rensselaer County	161130
 New York	Richmond County	495747
 New York	Rockland County	338329
 New York	St. Lawrence County	108505
 New York	Saratoga County	235509
 New York	Schenectady County	158061
 New York	Schoharie County	29714
 New York	Schuyler County	17898
 New York	Seneca County	33814
 New York	Steuben County	93584
 New York	Suffolk County	1525920
 New York	Sullivan County	78624
 New York	Tioga County	48455
 New York	Tompkins County	105740
 New York	Ulster County	181851
 New York	Warren County	65737
 New York	Washington County	61302
 New York	Wayne County	91283
 New York	Westchester County	1004457
 New York	Wyoming County	40531
 New York	Yates County	24774
 North Carolina	Alamance County	171415
 North Carolina	Alexander County	36444
 North Carolina	Alleghany County	10888
 North Carolina	Anson County	22055
 North Carolina	Ashe County	26577
 North Carolina	Avery County	17806
 North Carolina	Beaufort County	44652
 North Carolina	Bertie County	17934
 North Carolina	Bladen County	29606
 North Carolina	Brunswick County	136693
 North Carolina	Buncombe County	269452
 North Carolina	Burke County	87570
 North Carolina	Cabarrus County	225804
 North Carolina	Caldwell County	80652
 North Carolina	Camden County	10355
 North Carolina	Carteret County	67686
 North Carolina	Caswell County	22736
 North Carolina	Catawba County	160610
 North Carolina	Chatham County	76285
 North Carolina	Cherokee County	28774
 North Carolina	Chowan County	13708
 North Carolina	Clay County	11089
 North Carolina	Cleveland County	99519
 North Carolina	Columbus County	50623
 North Carolina	Craven County	100720
 North Carolina	Cumberland County	334728
 North Carolina	Currituck County	28100
 North Carolina	Dare County	36915
 North Carolina	Davidson County	168930
 North Carolina	Davie County	42712
 North Carolina	Duplin County	48715
 North Carolina	Durham County	324833
 North Carolina	Edgecombe County	48900
 North Carolina	Forsyth County	382590
 North Carolina	Franklin County	68573
 North Carolina	Gaston County	227943
 North Carolina	Gates County	10478
 North Carolina	Graham County	8030
 North Carolina	Granville County	60992
 North Carolina	Greene County	20451
 North Carolina	Guilford County	541299
 North Carolina	Halifax County	48622
 North Carolina	Harnett County	133568
 North Carolina	Haywood County	62089
 North Carolina	Henderson County	116281
 North Carolina	Hertford County	21552
 North Carolina	Hoke County	52082
 North Carolina	Hyde County	4589
 North Carolina	Iredell County	186693
 North Carolina	Jackson County	43109
 North Carolina	Johnston County	215999
 North Carolina	Jones County	9172
 North Carolina	Lee County	63285
 North Carolina	Lenoir County	55122
 North Carolina	Lincoln County	86810
 North Carolina	McDowell County	44578
 North Carolina	Macon County	37014
 North Carolina	Madison County	21193
 North Carolina	Martin County	22031
 North Carolina	Mecklenburg County	1115482
 North Carolina	Mitchell County	14903
 North Carolina	Montgomery County	25751
 North Carolina	Moore County	99727
 North Carolina	Nash County	94970
 North Carolina	New Hanover County	225702
 North Carolina	Northampton County	17471
 North Carolina	Onslow County	204576
 North Carolina	Orange County	148696
 North Carolina	Pamlico County	12276
 North Carolina	Pasquotank County	40568
 North Carolina	Pender County	60203
 North Carolina	Perquimans County	13005
 North Carolina	Person County	39097
 North Carolina	Pitt County	170243
 North Carolina	Polk County	19328
 North Carolina	Randolph County	144171
 North Carolina	Richmond County	42946
 North Carolina	Robeson County	116530
 North Carolina	Rockingham County	91096
 North Carolina	Rowan County	146875
 North Carolina	Rutherford County	64444
 North Carolina	Sampson County	59036
 North Carolina	Scotland County	34174
 North Carolina	Stanly County	62504
 North Carolina	Stokes County	44520
 North Carolina	Surry County	71359
 North Carolina	Swain County	14117
 North Carolina	Transylvania County	32986
 North Carolina	Tyrrell County	3245
 North Carolina	Union County	238267
 North Carolina	Vance County	42578
 North Carolina	Wake County	1129410
 North Carolina	Warren County	18642
 North Carolina	Washington County	11003
 North Carolina	Watauga County	54086
 North Carolina	Wayne County	117333
 North Carolina	Wilkes County	65969
 North Carolina	Wilson County	78784
 North Carolina	Yadkin County	37214
 North Carolina	Yancey County	18470
 North Dakota	Adams County	2200
 North Dakota	Barnes County	10853
 North Dakota	Benson County	5964
 North Dakota	Billings County	945
 North Dakota	Bottineau County	6379
 North Dakota	Bowman County	2993
 North Dakota	Burke County	2201
 North Dakota	Burleigh County	98458
 North Dakota	Cass County	184525
 North Dakota	Cavalier County	3704
 North Dakota	Dickey County	4999
 North Dakota	Divide County	2195
 North Dakota	Dunn County	4095
 North Dakota	Eddy County	2347
 North Dakota	Emmons County	3301
 North Dakota	Foster County	3397
 North Dakota	Golden Valley County	1736
 North Dakota	Grand Forks County	73170
 North Dakota	Grant County	2301
 North Dakota	Griggs County	2306
 North Dakota	Hettinger County	2489
 North Dakota	Kidder County	2394
 North Dakota	LaMoure County	4093
 North Dakota	Logan County	1876
 North Dakota	McHenry County	5345
 North Dakota	McIntosh County	2530
 North Dakota	McKenzie County	14704
 North Dakota	McLean County	9771
 North Dakota	Mercer County	8350
 North Dakota	Morton County	33291
 North Dakota	Mountrail County	9809
 North Dakota	Nelson County	3015
 North Dakota	Oliver County	1877
 North Dakota	Pembina County	6844
 North Dakota	Pierce County	3990
 North Dakota	Ramsey County	11605
 North Dakota	Ransom County	5703
 North Dakota	Renville County	2282
 North Dakota	Richland County	16529
 North Dakota	Rolette County	12187
 North Dakota	Sargent County	3862
 North Dakota	Sheridan County	1265
 North Dakota	Sioux County	3898
 North Dakota	Slope County	706
 North Dakota	Stark County	33646
 North Dakota	Steele County	1798
 North Dakota	Stutsman County	21593
 North Dakota	Towner County	2162
 North Dakota	Traill County	7997
 North Dakota	Walsh County	10563
 North Dakota	Ward County	69919
 North Dakota	Wells County	3982
 North Dakota	Williams County	40950
 Ohio	Adams County	27477
 Ohio	Allen County	102206
 Ohio	Ashland County	52447
 Ohio	Ashtabula County	97574
 Ohio	Athens County	62431
 Ohio	Auglaize County	46422
 Ohio	Belmont County	66497
 Ohio	Brown County	43676
 Ohio	Butler County	390357
 Ohio	Carroll County	26721
 Ohio	Champaign County	38714
 Ohio	Clark County	136001
 Ohio	Clermont County	208601
 Ohio	Clinton County	42018
 Ohio	Columbiana County	101877
 Ohio	Coshocton County	36612
 Ohio	Crawford County	42025
 Ohio	Cuyahoga County	1264817
 Ohio	Darke County	51881
 Ohio	Defiance County	38286
 Ohio	Delaware County	214124
 Ohio	Erie County	75622
 Ohio	Fairfield County	158921
 Ohio	Fayette County	28951
 Ohio	Franklin County	1323807
 Ohio	Fulton County	42713
 Ohio	Gallia County	29220
 Ohio	Geauga County	95397
 Ohio	Greene County	167966
 Ohio	Guernsey County	38438
 Ohio	Hamilton County	830639
 Ohio	Hancock County	74920
 Ohio	Hardin County	30696
 Ohio	Harrison County	14483
 Ohio	Henry County	27662
 Ohio	Highland County	43317
 Ohio	Hocking County	28050
 Ohio	Holmes County	44223
 Ohio	Huron County	58565
 Ohio	Jackson County	32653
 Ohio	Jefferson County	65249
 Ohio	Knox County	62721
 Ohio	Lake County	232603
 Ohio	Lawrence County	58240
 Ohio	Licking County	178519
 Ohio	Logan County	46150
 Ohio	Lorain County	312964
 Ohio	Lucas County	431279
 Ohio	Madison County	43824
 Ohio	Mahoning County	228614
 Ohio	Marion County	65359
 Ohio	Medina County	182470
 Ohio	Meigs County	22210
 Ohio	Mercer County	42528
 Ohio	Miami County	108774
 Ohio	Monroe County	13385
 Ohio	Montgomery County	537309
 Ohio	Morgan County	13802
 Ohio	Morrow County	34950
 Ohio	Muskingum County	86410
 Ohio	Noble County	14115
 Ohio	Ottawa County	40364
 Ohio	Paulding County	18806
 Ohio	Perry County	35408
 Ohio	Pickaway County	58539
 Ohio	Pike County	27088
 Ohio	Portage County	161791
 Ohio	Preble County	40999
 Ohio	Putnam County	34451
 Ohio	Richland County	124936
 Ohio	Ross County	77093
 Ohio	Sandusky County	58896
 Ohio	Scioto County	74008
 Ohio	Seneca County	55069
 Ohio	Shelby County	48230
 Ohio	Stark County	374853
 Ohio	Summit County	540428
 Ohio	Trumbull County	201977
 Ohio	Tuscarawas County	93263
 Ohio	Union County	62784
 Ohio	Van Wert County	28931
 Ohio	Vinton County	12800
 Ohio	Warren County	242337
 Ohio	Washington County	59771
 Ohio	Wayne County	116894
 Ohio	Williams County	37102
 Ohio	Wood County	132248
 Ohio	Wyandot County	21900
 Oklahoma	Adair County	19495
 Oklahoma	Alfalfa County	5699
 Oklahoma	Atoka County	14143
 Oklahoma	Beaver County	5049
 Oklahoma	Beckham County	22410
 Oklahoma	Blaine County	8735
 Oklahoma	Bryan County	46067
 Oklahoma	Caddo County	26945
 Oklahoma	Canadian County	154405
 Oklahoma	Carter County	48003
 Oklahoma	Cherokee County	47078
 Oklahoma	Choctaw County	14204
 Oklahoma	Cimarron County	2296
 Oklahoma	Cleveland County	295528
 Oklahoma	Coal County	5266
 Oklahoma	Comanche County	121125
 Oklahoma	Cotton County	5527
 Oklahoma	Craig County	14107
 Oklahoma	Creek County	71754
 Oklahoma	Custer County	28513
 Oklahoma	Delaware County	40397
 Oklahoma	Dewey County	4484
 Oklahoma	Ellis County	3749
 Oklahoma	Garfield County	62846
 Oklahoma	Garvin County	25656
 Oklahoma	Grady County	54795
 Oklahoma	Grant County	4169
 Oklahoma	Greer County	5491
 Oklahoma	Harmon County	2488
 Oklahoma	Harper County	3272
 Oklahoma	Haskell County	11561
 Oklahoma	Hughes County	13367
 Oklahoma	Jackson County	24785
 Oklahoma	Jefferson County	5337
 Oklahoma	Johnston County	10272
 Oklahoma	Kay County	43700
 Oklahoma	Kingfisher County	15184
 Oklahoma	Kiowa County	8509
 Oklahoma	Latimer County	9444
 Oklahoma	Le Flore County	48129
 Oklahoma	Lincoln County	33458
 Oklahoma	Logan County	49555
 Oklahoma	Love County	10146
 Oklahoma	McClain County	41662
 Oklahoma	McCurtain County	30814
 Oklahoma	McIntosh County	18941
 Oklahoma	Major County	7782
 Oklahoma	Marshall County	15312
 Oklahoma	Mayes County	39046
 Oklahoma	Murray County	13904
 Oklahoma	Muskogee County	66339
 Oklahoma	Noble County	10924
 Oklahoma	Nowata County	9320
 Oklahoma	Okfuskee County	11310
 Oklahoma	Oklahoma County	796292
 Oklahoma	Okmulgee County	36706
 Oklahoma	Osage County	45818
 Oklahoma	Ottawa County	30285
 Oklahoma	Pawnee County	15553
 Oklahoma	Payne County	81646
 Oklahoma	Pittsburg County	43773
 Oklahoma	Pontotoc County	38065
 Oklahoma	Pottawatomie County	72454
 Oklahoma	Pushmataha County	10812
 Oklahoma	Roger Mills County	3442
 Oklahoma	Rogers County	95240
 Oklahoma	Seminole County	23556
 Oklahoma	Sequoyah County	39281
 Oklahoma	Stephens County	42848
 Oklahoma	Texas County	21384
 Oklahoma	Tillman County	6968
 Oklahoma	Tulsa County	669279
 Oklahoma	Wagoner County	80981
 Oklahoma	Washington County	52455
 Oklahoma	Washita County	10924
 Oklahoma	Woods County	8624
 Oklahoma	Woodward County	20470
 Oregon	Baker County	16668
 Oregon	Benton County	95184
 Oregon	Clackamas County	421401
 Oregon	Clatsop County	41072
 Oregon	Columbia County	52589
 Oregon	Coos County	64929
 Oregon	Crook County	24738
 Oregon	Curry County	23446
 Oregon	Deschutes County	198253
 Oregon	Douglas County	111201
 Oregon	Gilliam County	1995
 Oregon	Grant County	7233
 Oregon	Harney County	7495
 Oregon	Hood River County	23977
 Oregon	Jackson County	223259
 Oregon	Jefferson County	24502
 Oregon	Josephine County	88090
 Oregon	Klamath County	69413
 Oregon	Lake County	8160
 Oregon	Lane County	382971
 Oregon	Lincoln County	50395
 Oregon	Linn County	128610
 Oregon	Malheur County	31571
 Oregon	Marion County	345920
 Oregon	Morrow County	12186
 Oregon	Multnomah County	815428
 Oregon	Polk County	87433
 Oregon	Sherman County	1870
 Oregon	Tillamook County	27390
 Oregon	Umatilla County	80075
 Oregon	Union County	26196
 Oregon	Wallowa County	7391
 Oregon	Wasco County	26670
 Oregon	Washington County	600372
 Oregon	Wheeler County	1451
 Oregon	Yamhill County	107722
 Pennsylvania	Adams County	103852
 Pennsylvania	Allegheny County	1250578
 Pennsylvania	Armstrong County	65558
 Pennsylvania	Beaver County	168215
 Pennsylvania	Bedford County	47577
 Pennsylvania	Berks County	428849
 Pennsylvania	Blair County	122822
 Pennsylvania	Bradford County	59967
 Pennsylvania	Bucks County	646538
 Pennsylvania	Butler County	193763
 Pennsylvania	Cambria County	133472
 Pennsylvania	Cameron County	4547
 Pennsylvania	Carbon County	64749
 Pennsylvania	Centre County	158172
 Pennsylvania	Chester County	534413
 Pennsylvania	Clarion County	37241
 Pennsylvania	Clearfield County	80562
 Pennsylvania	Clinton County	37450
 Pennsylvania	Columbia County	64727
 Pennsylvania	Crawford County	83938
 Pennsylvania	Cumberland County	259469
 Pennsylvania	Dauphin County	286401
 Pennsylvania	Delaware County	576830
 Pennsylvania	Elk County	30990
 Pennsylvania	Erie County	270876
 Pennsylvania	Fayette County	128804
 Pennsylvania	Forest County	6973
 Pennsylvania	Franklin County	155932
 Pennsylvania	Fulton County	14556
 Pennsylvania	Greene County	35954
 Pennsylvania	Huntingdon County	44092
 Pennsylvania	Indiana County	83246
 Pennsylvania	Jefferson County	44492
 Pennsylvania	Juniata County	23509
 Pennsylvania	Lackawanna County	215896
 Pennsylvania	Lancaster County	552984
 Pennsylvania	Lawrence County	86070
 Pennsylvania	Lebanon County	143257
 Pennsylvania	Lehigh County	374557
 Pennsylvania	Luzerne County	325594
 Pennsylvania	Lycoming County	114188
 Pennsylvania	McKean County	40432
 Pennsylvania	Mercer County	110652
 Pennsylvania	Mifflin County	46143
 Pennsylvania	Monroe County	168327
 Pennsylvania	Montgomery County	856553
 Pennsylvania	Montour County	18136
 Pennsylvania	Northampton County	312951
 Pennsylvania	Northumberland County	91647
 Pennsylvania	Perry County	45842
 Pennsylvania	Philadelphia County	1603797
 Pennsylvania	Pike County	58535
 Pennsylvania	Potter County	16396
 Pennsylvania	Schuylkill County	143049
 Pennsylvania	Snyder County	39736
 Pennsylvania	Somerset County	74129
 Pennsylvania	Sullivan County	5840
 Pennsylvania	Susquehanna County	38434
 Pennsylvania	Tioga County	41045
 Pennsylvania	Union County	42681
 Pennsylvania	Venango County	50454
 Pennsylvania	Warren County	38587
 Pennsylvania	Washington County	209349
 Pennsylvania	Wayne County	51155
 Pennsylvania	Westmoreland County	354663
 Pennsylvania	Wyoming County	26069
 Pennsylvania	York County	456438
 Rhode Island	Bristol County	50793
 Rhode Island	Kent County	170363
 Rhode Island	Newport County	85643
 Rhode Island	Providence County	660741
 Rhode Island	Washington County	129839
 South Carolina	Abbeville County	24295
 South Carolina	Aiken County	168808
 South Carolina	Allendale County	8039
 South Carolina	Anderson County	203718
 South Carolina	Bamberg County	13311
 South Carolina	Barnwell County	20589
 South Carolina	Beaufort County	187117
 South Carolina	Berkeley County	229861
 South Carolina	Calhoun County	14119
 South Carolina	Charleston County	408235
 South Carolina	Cherokee County	56216
 South Carolina	Chester County	32294
 South Carolina	Chesterfield County	43273
 South Carolina	Clarendon County	31144
 South Carolina	Colleton County	38604
 South Carolina	Darlington County	62905
 South Carolina	Dillon County	28292
 South Carolina	Dorchester County	161540
 South Carolina	Edgefield County	25657
 South Carolina	Fairfield County	20948
 South Carolina	Florence County	137059
 South Carolina	Georgetown County	63404
 South Carolina	Greenville County	525534
 South Carolina	Greenwood County	69351
 South Carolina	Hampton County	18561
 South Carolina	Horry County	351029
 South Carolina	Jasper County	28791
 South Carolina	Kershaw County	65403
 South Carolina	Lancaster County	96016
 South Carolina	Laurens County	67539
 South Carolina	Lee County	16531
 South Carolina	Lexington County	293991
 South Carolina	McCormick County	9526
 South Carolina	Marion County	29183
 South Carolina	Marlboro County	26667
 South Carolina	Newberry County	37719
 South Carolina	Oconee County	78607
 South Carolina	Orangeburg County	84223
 South Carolina	Pickens County	131404
 South Carolina	Richland County	416147
 South Carolina	Saluda County	18862
 South Carolina	Spartanburg County	327997
 South Carolina	Sumter County	105556
 South Carolina	Union County	27244
 South Carolina	Williamsburg County	31026
 South Carolina	York County	282090
 South Dakota	Aurora County	2747
 South Dakota	Beadle County	19149
 South Dakota	Bennett County	3381
 South Dakota	Bon Homme County	7003
 South Dakota	Brookings County	34375
 South Dakota	Brown County	38301
 South Dakota	Brule County	5247
 South Dakota	Buffalo County	1948
 South Dakota	Butte County	10243
 South Dakota	Campbell County	1377
 South Dakota	Charles Mix County	9373
 South Dakota	Clark County	3837
 South Dakota	Clay County	14967
 South Dakota	Codington County	28325
 South Dakota	Corson County	3902
 South Dakota	Custer County	8318
 South Dakota	Davison County	19956
 South Dakota	Day County	5449
 South Dakota	Deuel County	4295
 South Dakota	Dewey County	5239
 South Dakota	Douglas County	2835
 South Dakota	Edmunds County	3986
 South Dakota	Fall River County	6973
 South Dakota	Faulk County	2125
 South Dakota	Grant County	7556
 South Dakota	Gregory County	3994
 South Dakota	Haakon County	1872
 South Dakota	Hamlin County	6164
 South Dakota	Hand County	3145
 South Dakota	Hanson County	3461
 South Dakota	Harding County	1311
 South Dakota	Hughes County	17765
 South Dakota	Hutchinson County	7427
 South Dakota	Hyde County	1262
 South Dakota	Jackson County	2806
 South Dakota	Jerauld County	1663
 South Dakota	Jones County	917
 South Dakota	Kingsbury County	5187
 South Dakota	Lake County	11059
 South Dakota	Lawrence County	25768
 South Dakota	Lincoln County	65161
 South Dakota	Lyman County	3718
 South Dakota	McCook County	5682
 South Dakota	McPherson County	2411
 South Dakota	Marshall County	4306
 South Dakota	Meade County	29852
 South Dakota	Mellette County	1918
 South Dakota	Miner County	2298
 South Dakota	Minnehaha County	197214
 South Dakota	Moody County	6336
 South Dakota	Oglala Lakota County	13672
 South Dakota	Pennington County	109222
 South Dakota	Perkins County	2835
 South Dakota	Potter County	2472
 South Dakota	Roberts County	10280
 South Dakota	Sanborn County	2330
 South Dakota	Spink County	6361
 South Dakota	Stanley County	2980
 South Dakota	Sully County	1446
 South Dakota	Todd County	9319
 South Dakota	Tripp County	5624
 South Dakota	Turner County	8673
 South Dakota	Union County	16811
 South Dakota	Walworth County	5315
 South Dakota	Yankton County	23310
 South Dakota	Ziebach County	2413
 Tennessee	Anderson County	77123
 Tennessee	Bedford County	50237
 Tennessee	Benton County	15864
 Tennessee	Bledsoe County	14913
 Tennessee	Blount County	135280
 Tennessee	Bradley County	108620
 Tennessee	Campbell County	39272
 Tennessee	Cannon County	14506
 Tennessee	Carroll County	28440
 Tennessee	Carter County	56356
 Tennessee	Cheatham County	41072
 Tennessee	Chester County	17341
 Tennessee	Claiborne County	32043
 Tennessee	Clay County	7581
 Tennessee	Cocke County	35999
 Tennessee	Coffee County	57889
 Tennessee	Crockett County	13911
 Tennessee	Cumberland County	61145
 Tennessee	Davidson County	715884
 Tennessee	Decatur County	11435
 Tennessee	DeKalb County	20080
 Tennessee	Dickson County	54315
 Tennessee	Dyer County	36801
 Tennessee	Fayette County	41990
 Tennessee	Fentress County	18489
 Tennessee	Franklin County	42774
 Tennessee	Gibson County	50429
 Tennessee	Giles County	30346
 Tennessee	Grainger County	23527
 Tennessee	Greene County	70152
 Tennessee	Grundy County	13529
 Tennessee	Hamblen County	64499
 Tennessee	Hamilton County	366207
 Tennessee	Hancock County	6662
 Tennessee	Hardeman County	25462
 Tennessee	Hardin County	26831
 Tennessee	Hawkins County	56721
 Tennessee	Haywood County	17864
 Tennessee	Henderson County	27842
 Tennessee	Henry County	32199
 Tennessee	Hickman County	24925
 Tennessee	Houston County	8283
 Tennessee	Humphreys County	18990
 Tennessee	Jackson County	11617
 Tennessee	Jefferson County	54683
 Tennessee	Johnson County	17948
 Tennessee	Knox County	478971
 Tennessee	Lake County	7005
 Tennessee	Lauderdale County	25143
 Tennessee	Lawrence County	44159
 Tennessee	Lewis County	12582
 Tennessee	Lincoln County	35319
 Tennessee	Loudon County	54886
 Tennessee	McMinn County	53276
 Tennessee	McNairy County	25866
 Tennessee	Macon County	25216
 Tennessee	Madison County	98823
 Tennessee	Marion County	28837
 Tennessee	Marshall County	34318
 Tennessee	Maury County	100974
 Tennessee	Meigs County	12758
 Tennessee	Monroe County	46250
 Tennessee	Montgomery County	220069
 Tennessee	Moore County	6461
 Tennessee	Morgan County	21035
 Tennessee	Obion County	30787
 Tennessee	Overton County	22511
 Tennessee	Perry County	8366
 Tennessee	Pickett County	5001
 Tennessee	Polk County	17544
 Tennessee	Putnam County	79854
 Tennessee	Rhea County	32870
 Tennessee	Roane County	53404
 Tennessee	Robertson County	72803
 Tennessee	Rutherford County	341486
 Tennessee	Scott County	21850
 Tennessee	Sequatchie County	15826
 Tennessee	Sevier County	98380
 Tennessee	Shelby County	929744
 Tennessee	Smith County	19904
 Tennessee	Stewart County	13657
 Tennessee	Sullivan County	158163
 Tennessee	Sumner County	196281
 Tennessee	Tipton County	60970
 Tennessee	Trousdale County	11615
 Tennessee	Unicoi County	17928
 Tennessee	Union County	19802
 Tennessee	Van Buren County	6168
 Tennessee	Warren County	40953
 Tennessee	Washington County	133001
 Tennessee	Wayne County	16232
 Tennessee	Weakley County	32902
 Tennessee	White County	27351
 Tennessee	Williamson County	247726
 Tennessee	Wilson County	147737
 Texas	Anderson County	57922
 Texas	Andrews County	18610
 Texas	Angelina County	86395
 Texas	Aransas County	23830
 Texas	Archer County	8560
 Texas	Armstrong County	1848
 Texas	Atascosa County	48981
 Texas	Austin County	30167
 Texas	Bailey County	6904
 Texas	Bandera County	20851
 Texas	Bastrop County	97216
 Texas	Baylor County	3465
 Texas	Bee County	31047
 Texas	Bell County	370647
 Texas	Bexar County	2009324
 Texas	Blanco County	11374
 Texas	Borden County	631
 Texas	Bosque County	18235
 Texas	Bowie County	92893
 Texas	Brazoria County	372031
 Texas	Brazos County	233849
 Texas	Brewster County	9546
 Texas	Briscoe County	1435
 Texas	Brooks County	7076
 Texas	Brown County	38095
 Texas	Burleson County	17642
 Texas	Burnet County	49130
 Texas	Caldwell County	45883
 Texas	Calhoun County	20106
 Texas	Callahan County	13708
 Texas	Cameron County	421017
 Texas	Camp County	12464
 Texas	Carson County	5807
 Texas	Cass County	28454
 Texas	Castro County	7371
 Texas	Chambers County	46571
 Texas	Cherokee County	50412
 Texas	Childress County	6664
 Texas	Clay County	10218
 Texas	Cochran County	2547
 Texas	Coke County	3285
 Texas	Coleman County	7684
 Texas	Collin County	1064465
 Texas	Collingsworth County	2652
 Texas	Colorado County	20557
 Texas	Comal County	161501
 Texas	Comanche County	13594
 Texas	Concho County	3303
 Texas	Cooke County	41668
 Texas	Coryell County	83093
 Texas	Cottle County	1380
 Texas	Crane County	4675
 Texas	Crockett County	3098
 Texas	Crosby County	5133
 Texas	Culberson County	2188
 Texas	Dallam County	7115
 Texas	Dallas County	2613539
 Texas	Dawson County	12456
 Texas	Deaf Smith County	18583
 Texas	Delta County	5230
 Texas	Denton County	906422
 Texas	DeWitt County	19824
 Texas	Dickens County	1770
 Texas	Dimmit County	8615
 Texas	Donley County	3258
 Texas	Duval County	9831
 Texas	Eastland County	17725
 Texas	Ector County	165171
 Texas	Edwards County	1422
 Texas	Ellis County	192455
 Texas	El Paso County	865657
 Texas	Erath County	42545
 Texas	Falls County	16968
 Texas	Fannin County	35662
 Texas	Fayette County	24435
 Texas	Fisher County	3672
 Texas	Floyd County	5402
 Texas	Foard County	1095
 Texas	Fort Bend County	822779
 Texas	Franklin County	10359
 Texas	Freestone County	19435
 Texas	Frio County	18385
 Texas	Gaines County	21598
 Texas	Galveston County	350682
 Texas	Garza County	5816
 Texas	Gillespie County	26725
 Texas	Glasscock County	1116
 Texas	Goliad County	7012
 Texas	Gonzales County	19653
 Texas	Gray County	21227
 Texas	Grayson County	135543
 Texas	Gregg County	124239
 Texas	Grimes County	29268
 Texas	Guadalupe County	172706
 Texas	Hale County	32522
 Texas	Hall County	2825
 Texas	Hamilton County	8222
 Texas	Hansford County	5285
 Texas	Hardeman County	3549
 Texas	Hardin County	56231
 Texas	Harris County	4731145
 Texas	Harrison County	68839
 Texas	Hartley County	5382
 Texas	Haskell County	5416
 Texas	Hays County	241067
 Texas	Hemphill County	3382
 Texas	Henderson County	82150
 Texas	Hidalgo County	870781
 Texas	Hill County	35874
 Texas	Hockley County	21537
 Texas	Hood County	61598
 Texas	Hopkins County	36787
 Texas	Houston County	22066
 Texas	Howard County	34860
 Texas	Hudspeth County	3202
 Texas	Hunt County	99956
 Texas	Hutchinson County	20617
 Texas	Irion County	1513
 Texas	Jack County	8472
 Texas	Jackson County	14988
 Texas	Jasper County	32980
 Texas	Jeff Davis County	1996
 Texas	Jefferson County	256526
 Texas	Jim Hogg County	4838
 Texas	Jim Wells County	38891
 Texas	Johnson County	179927
 Texas	Jones County	19663
 Texas	Karnes County	14710
 Texas	Kaufman County	145310
 Texas	Kendall County	44279
 Texas	Kenedy County	350
 Texas	Kent County	753
 Texas	Kerr County	52598
 Texas	Kimble County	4286
 Texas	King County	265
 Texas	Kinney County	3129
 Texas	Kleberg County	31040
 Texas	Knox County	3353
 Texas	Lamar County	50088
 Texas	Lamb County	13045
 Texas	Lampasas County	21627
 Texas	La Salle County	6664
 Texas	Lavaca County	20337
 Texas	Lee County	17478
 Texas	Leon County	15719
 Texas	Liberty County	91628
 Texas	Limestone County	22146
 Texas	Lipscomb County	3059
 Texas	Live Oak County	11335
 Texas	Llano County	21243
 Texas	Loving County	64
 Texas	Lubbock County	310639
 Texas	Lynn County	5596
 Texas	McCulloch County	7630
 Texas	McLennan County	260579
 Texas	McMullen County	600
 Texas	Madison County	13455
 Texas	Marion County	9725
 Texas	Martin County	5237
 Texas	Mason County	3953
 Texas	Matagorda County	36255
 Texas	Maverick County	57887
 Texas	Medina County	50748
 Texas	Menard County	1962
 Texas	Midland County	169983
 Texas	Milam County	24754
 Texas	Mills County	4456
 Texas	Mitchell County	8990
 Texas	Montague County	19965
 Texas	Montgomery County	620443
 Texas	Moore County	21358
 Texas	Morris County	11973
 Texas	Motley County	1063
 Texas	Nacogdoches County	64653
 Texas	Navarro County	52624
 Texas	Newton County	12217
 Texas	Nolan County	14738
 Texas	Nueces County	353178
 Texas	Ochiltree County	10015
 Texas	Oldham County	1758
 Texas	Orange County	84808
 Texas	Palo Pinto County	28409
 Texas	Panola County	22491
 Texas	Parker County	148222
 Texas	Parmer County	9869
 Texas	Pecos County	15193
 Texas	Polk County	50123
 Texas	Potter County	118525
 Texas	Presidio County	6131
 Texas	Rains County	12164
 Texas	Randall County	140753
 Texas	Reagan County	3385
 Texas	Real County	2758
 Texas	Red River County	11587
 Texas	Reeves County	14748
 Texas	Refugio County	6741
 Texas	Roberts County	827
 Texas	Robertson County	16757
 Texas	Rockwall County	107819
 Texas	Runnels County	9900
 Texas	Rusk County	52214
 Texas	Sabine County	9894
 Texas	San Augustine County	7918
 Texas	San Jacinto County	27402
 Texas	San Patricio County	68755
 Texas	San Saba County	5730
 Texas	Schleicher County	2451
 Texas	Scurry County	16932
 Texas	Shackelford County	3105
 Texas	Shelby County	24022
 Texas	Sherman County	2782
 Texas	Smith County	233479
 Texas	Somervell County	9205
 Texas	Starr County	65920
 Texas	Stephens County	9101
 Texas	Sterling County	1372
 Texas	Stonewall County	1245
 Texas	Sutton County	3372
 Texas	Swisher County	6971
 Texas	Tarrant County	2110640
 Texas	Taylor County	143208
 Texas	Terrell County	760
 Texas	Terry County	11831
 Texas	Throckmorton County	1440
 Texas	Titus County	31247
 Texas	Tom Green County	120003
 Texas	Travis County	1290188
 Texas	Trinity County	13602
 Texas	Tyler County	19798
 Texas	Upshur County	40892
 Texas	Upton County	3308
 Texas	Uvalde County	24564
 Texas	Val Verde County	47586
 Texas	Van Zandt County	59541
 Texas	Victoria County	91319
 Texas	Walker County	76400
 Texas	Waller County	56794
 Texas	Ward County	11644
 Texas	Washington County	35805
 Texas	Webb County	267114
 Texas	Wharton County	41570
 Texas	Wheeler County	4990
 Texas	Wichita County	129350
 Texas	Wilbarger County	12887
 Texas	Willacy County	20164
 Texas	Williamson County	609017
 Texas	Wilson County	49753
 Texas	Winkler County	7791
 Texas	Wise County	68632
 Texas	Wood County	44843
 Texas	Yoakum County	7694
 Texas	Young County	17867
 Texas	Zapata County	13889
 Texas	Zavala County	9670
 Utah	Beaver County	7072
 Utah	Box Elder County	57666
 Utah	Cache County	133154
 Utah	Carbon County	20412
 Utah	Daggett County	935
 Utah	Davis County	362679
 Utah	Duchesne County	19596
 Utah	Emery County	9825
 Utah	Garfield County	5083
 Utah	Grand County	9669
 Utah	Iron County	57289
 Utah	Juab County	11786
 Utah	Kane County	7667
 Utah	Millard County	12975
 Utah	Morgan County	12295
 Utah	Piute County	1438
 Utah	Rich County	2510
 Utah	Salt Lake County	1185238
 Utah	San Juan County	14518
 Utah	Sanpete County	28437
 Utah	Sevier County	21522
 Utah	Summit County	42357
 Utah	Tooele County	72698
 Utah	Uintah County	35620
 Utah	Utah County	659399
 Utah	Wasatch County	34788
 Utah	Washington County	180279
 Utah	Wayne County	2486
 Utah	Weber County	262223
 Vermont	Addison County	37363
 Vermont	Bennington County	37347
 Vermont	Caledonia County	30233
 Vermont	Chittenden County	168323
 Vermont	Essex County	5920
 Vermont	Franklin County	49946
 Vermont	Grand Isle County	7293
 Vermont	Lamoille County	25945
 Vermont	Orange County	29277
 Vermont	Orleans County	27393
 Vermont	Rutland County	60572
 Vermont	Washington County	59807
 Vermont	Windham County	45905
 Vermont	Windsor County	57753
 Virginia	Accomack County	33413
 Virginia	Albemarle County	112395
 Virginia	Alleghany County	15223
 Virginia	Amelia County	13265
 Virginia	Amherst County	31307
 Virginia	Appomattox County	16119
 Virginia	Arlington County	238643
 Virginia	Augusta County	77487
 Virginia	Bath County	4209
 Virginia	Bedford County	79462
 Virginia	Bland County	6270
 Virginia	Botetourt County	33596
 Virginia	Brunswick County	15849
 Virginia	Buchanan County	20355
 Virginia	Buckingham County	16824
 Virginia	Campbell County	55696
 Virginia	Caroline County	30887
 Virginia	Carroll County	29155
 Virginia	Charles City County	6773
 Virginia	Charlotte County	11529
 Virginia	Chesterfield County	364548
 Virginia	Clarke County	14783
 Virginia	Craig County	4892
 Virginia	Culpeper County	52552
 Virginia	Cumberland County	9675
 Virginia	Dickenson County	14124
 Virginia	Dinwiddie County	27947
 Virginia	Essex County	10599
 Virginia	Fairfax County	1150309
 Virginia	Fauquier County	72972
 Virginia	Floyd County	15476
 Virginia	Fluvanna County	27249
 Virginia	Franklin County	54477
 Virginia	Frederick County	91419
 Virginia	Giles County	16787
 Virginia	Gloucester County	38711
 Virginia	Goochland County	24727
 Virginia	Grayson County	15333
 Virginia	Greene County	20552
 Virginia	Greensville County	11391
 Virginia	Halifax County	34022
 Virginia	Hanover County	109979
 Virginia	Henrico County	334389
 Virginia	Henry County	50948
 Virginia	Highland County	2232
 Virginia	Isle of Wight County	38606
 Virginia	James City County	78254
 Virginia	King and Queen County	6608
 Virginia	King George County	26723
 Virginia	King William County	17810
 Virginia	Lancaster County	10919
 Virginia	Lee County	22173
 Virginia	Loudoun County	420959
 Virginia	Louisa County	37596
 Virginia	Lunenburg County	11936
 Virginia	Madison County	13837
 Virginia	Mathews County	8533
 Virginia	Mecklenburg County	30319
 Virginia	Middlesex County	10625
 Virginia	Montgomery County	99721
 Virginia	Nelson County	14775
 Virginia	New Kent County	22945
 Virginia	Northampton County	12282
 Virginia	Northumberland County	11839
 Virginia	Nottoway County	15642
 Virginia	Orange County	36254
 Virginia	Page County	23709
 Virginia	Patrick County	17608
 Virginia	Pittsylvania County	60501
 Virginia	Powhatan County	30333
 Virginia	Prince Edward County	21849
 Virginia	Prince George County	43010
 Virginia	Prince William County	482204
 Virginia	Pulaski County	33800
 Virginia	Rappahannock County	7348
 Virginia	Richmond County	8923
 Virginia	Roanoke County	96929
 Virginia	Rockbridge County	22650
 Virginia	Rockingham County	83757
 Virginia	Russell County	25781
 Virginia	Scott County	21576
 Virginia	Shenandoah County	44186
 Virginia	Smyth County	29800
 Virginia	Southampton County	17996
 Virginia	Spotsylvania County	140032
 Virginia	Stafford County	156927
 Virginia	Surry County	6561
 Virginia	Sussex County	10829
 Virginia	Tazewell County	40429
 Virginia	Warren County	40727
 Virginia	Washington County	53935
 Virginia	Westmoreland County	18477
 Virginia	Wise County	36130
 Virginia	Wythe County	28290
 Virginia	York County	70045
 Virginia	Alexandria city	159467
 Virginia	Bristol city	17219
 Virginia	Buena Vista city	6641
 Virginia	Charlottesville city	46553
 Virginia	Chesapeake city	249422
 Virginia	Colonial Heights city	18170
 Virginia	Covington city	5737
 Virginia	Danville city	42590
 Virginia	Emporia city	5766
 Virginia	Fairfax city	24146
 Virginia	Falls Church city	14658
 Virginia	Franklin city	8180
 Virginia	Fredericksburg city	27982
 Virginia	Galax city	6720
 Virginia	Hampton city	137148
 Virginia	Harrisonburg city	51814
 Virginia	Hopewell city	23033
 Virginia	Lexington city	7320
 Virginia	Lynchburg city	79009
 Virginia	Manassas city	42772
 Virginia	Manassas Park city	17219
 Virginia	Martinsville city	13485
 Virginia	Newport News city	186247
 Virginia	Norfolk city	238005
 Virginia	Norton city	3687
 Virginia	Petersburg city	33458
 Virginia	Poquoson city	12460
 Virginia	Portsmouth city	97915
 Virginia	Radford city	16070
 Virginia	Richmond city	226610
 Virginia	Roanoke city	100011
 Virginia	Salem city	25346
 Virginia	Staunton city	25750
 Virginia	Suffolk city	94324
 Virginia	Virginia Beach city	459470
 Virginia	Waynesboro city	22196
 Virginia	Williamsburg city	15425
 Virginia	Winchester city	28120
 Washington	Adams County	20613
 Washington	Asotin County	22285
 Washington	Benton County	206873
 Washington	Chelan County	79074
 Washington	Clallam County	77155
 Washington	Clark County	503311
 Washington	Columbia County	3952
 Washington	Cowlitz County	110730
 Washington	Douglas County	42938
 Washington	Ferry County	7178
 Washington	Franklin County	96749
 Washington	Garfield County	2286
 Washington	Grant County	99123
 Washington	Grays Harbor County	75636
 Washington	Island County	86857
 Washington	Jefferson County	32977
 Washington	King County	2269675
 Washington	Kitsap County	275611
 Washington	Kittitas County	44337
 Washington	Klickitat County	22735
 Washington	Lewis County	82149
 Washington	Lincoln County	10876
 Washington	Mason County	65726
 Washington	Okanogan County	42104
 Washington	Pacific County	23365
 Washington	Pend Oreille County	13401
 Washington	Pierce County	921130
 Washington	San Juan County	17788
 Washington	Skagit County	129523
 Washington	Skamania County	12036
 Washington	Snohomish County	827957
 Washington	Spokane County	539339
 Washington	Stevens County	46445
 Washington	Thurston County	294793
 Washington	Wahkiakum County	4422
 Washington	Walla Walla County	62584
 Washington	Whatcom County	226847
 Washington	Whitman County	47973
 Washington	Yakima County	256728
 West Virginia	Barbour County	15465
 West Virginia	Berkeley County	122076
 West Virginia	Boone County	21809
 West Virginia	Braxton County	12447
 West Virginia	Brooke County	22559
 West Virginia	Cabell County	94350
 West Virginia	Calhoun County	6229
 West Virginia	Clay County	8051
 West Virginia	Doddridge County	7808
 West Virginia	Fayette County	40488
 West Virginia	Gilmer County	7408
 West Virginia	Grant County	10976
 West Virginia	Greenbrier County	32977
 West Virginia	Hampshire County	23093
 West Virginia	Hancock County	29095
 West Virginia	Hardy County	14299
 West Virginia	Harrison County	65921
 West Virginia	Jackson County	27791
 West Virginia	Jefferson County	57701
 West Virginia	Kanawha County	180745
 West Virginia	Lewis County	17033
 West Virginia	Lincoln County	20463
 West Virginia	Logan County	32567
 West Virginia	McDowell County	19111
 West Virginia	Marion County	56205
 West Virginia	Marshall County	30591
 West Virginia	Mason County	25453
 West Virginia	Mercer County	59664
 West Virginia	Mineral County	26938
 West Virginia	Mingo County	23568
 West Virginia	Monongalia County	105822
 West Virginia	Monroe County	12376
 West Virginia	Morgan County	17063
 West Virginia	Nicholas County	24604
 West Virginia	Ohio County	42425
 West Virginia	Pendleton County	6143
 West Virginia	Pleasants County	7653
 West Virginia	Pocahontas County	7869
 West Virginia	Preston County	34216
 West Virginia	Putnam County	57440
 West Virginia	Raleigh County	74591
 West Virginia	Randolph County	27932
 West Virginia	Ritchie County	8444
 West Virginia	Roane County	14028
 West Virginia	Summers County	11959
 West Virginia	Taylor County	16705
 West Virginia	Tucker County	6762
 West Virginia	Tyler County	8313
 West Virginia	Upshur County	23816
 West Virginia	Wayne County	38982
 West Virginia	Webster County	8378
 West Virginia	Wetzel County	14442
 West Virginia	Wirt County	5194
 West Virginia	Wood County	84296
 West Virginia	Wyoming County	21382
 Wisconsin	Adams County	20654
 Wisconsin	Ashland County	16027
 Wisconsin	Barron County	46711
 Wisconsin	Bayfield County	16220
 Wisconsin	Brown County	268740
 Wisconsin	Buffalo County	13317
 Wisconsin	Burnett County	16526
 Wisconsin	Calumet County	52442
 Wisconsin	Chippewa County	66297
 Wisconsin	Clark County	34659
 Wisconsin	Columbia County	58490
 Wisconsin	Crawford County	16113
 Wisconsin	Dane County	561504
 Wisconsin	Dodge County	89396
 Wisconsin	Door County	30066
 Wisconsin	Douglas County	44295
 Wisconsin	Dunn County	45440
 Wisconsin	Eau Claire County	105710
 Wisconsin	Florence County	4558
 Wisconsin	Fond du Lac County	104154
 Wisconsin	Forest County	9179
 Wisconsin	Grant County	51938
 Wisconsin	Green County	37093
 Wisconsin	Green Lake County	19018
 Wisconsin	Iowa County	23709
 Wisconsin	Iron County	6137
 Wisconsin	Jackson County	21145
 Wisconsin	Jefferson County	84900
 Wisconsin	Juneau County	26718
 Wisconsin	Kenosha County	169151
 Wisconsin	Kewaunee County	20563
 Wisconsin	La Crosse County	120784
 Wisconsin	Lafayette County	16611
 Wisconsin	Langlade County	19491
 Wisconsin	Lincoln County	28415
 Wisconsin	Manitowoc County	81359
 Wisconsin	Marathon County	138013
 Wisconsin	Marinette County	41872
 Wisconsin	Marquette County	15592
 Wisconsin	Menominee County	4255
 Wisconsin	Milwaukee County	939489
 Wisconsin	Monroe County	46274
 Wisconsin	Oconto County	38965
 Wisconsin	Oneida County	37845
 Wisconsin	Outagamie County	190705
 Wisconsin	Ozaukee County	91503
 Wisconsin	Pepin County	7318
 Wisconsin	Pierce County	42212
 Wisconsin	Polk County	44977
 Wisconsin	Portage County	70377
 Wisconsin	Price County	14054
 Wisconsin	Racine County	197727
 Wisconsin	Richland County	17304
 Wisconsin	Rock County	163687
 Wisconsin	Rusk County	14188
 Wisconsin	St. Croix County	93536
 Wisconsin	Sauk County	65763
 Wisconsin	Sawyer County	18074
 Wisconsin	Shawano County	40881
 Wisconsin	Sheboygan County	118034
 Wisconsin	Taylor County	19913
 Wisconsin	Trempealeau County	30760
 Wisconsin	Vernon County	30714
 Wisconsin	Vilas County	23047
 Wisconsin	Walworth County	106478
 Wisconsin	Washburn County	16623
 Wisconsin	Washington County	136761
 Wisconsin	Waukesha County	406978
 Wisconsin	Waupaca County	51812
 Wisconsin	Waushara County	24520
 Wisconsin	Winnebago County	171730
 Wisconsin	Wood County	74207
 Wyoming	Albany County	37066
 Wyoming	Big Horn County	11521
 Wyoming	Campbell County	47026
 Wyoming	Carbon County	14537
 Wyoming	Converse County	13751
 Wyoming	Crook County	7181
 Wyoming	Fremont County	39234
 Wyoming	Goshen County	12498
 Wyoming	Hot Springs County	4621
 Wyoming	Johnson County	8447
 Wyoming	Laramie County	100512
 Wyoming	Lincoln County	19581
 Wyoming	Natrona County	79955
 Wyoming	Niobrara County	2467
 Wyoming	Park County	29624
 Wyoming	Platte County	8605
 Wyoming	Sheridan County	30921
 Wyoming	Sublette County	8728
 Wyoming	Sweetwater County	42272
 Wyoming	Teton County	23331
 Wyoming	Uinta County	20450
 Wyoming	Washakie County	7685
 Wyoming	Weston County	6838
 Puerto Rico	Adjuntas Municipio	18020
 Puerto Rico	Aguada Municipio	38136
 Puerto Rico	Aguadilla Municipio	55101
 Puerto Rico	Aguas Buenas Municipio	24223
 Puerto Rico	Aibonito Municipio	24637
 Puerto Rico	Añasco Municipio	25596
 Puerto Rico	Arecibo Municipio	87754
 Puerto Rico	Arroyo Municipio	15843
 Puerto Rico	Barceloneta Municipio	22657
 Puerto Rico	Barranquitas Municipio	28983
 Puerto Rico	Bayamón Municipio	185187
 Puerto Rico	Cabo Rojo Municipio	47158
 Puerto Rico	Caguas Municipio	127244
 Puerto Rico	Camuy Municipio	32827
 Puerto Rico	Canóvanas Municipio	42337
 Puerto Rico	Carolina Municipio	154815
 Puerto Rico	Cataño Municipio	23155
 Puerto Rico	Cayey Municipio	41652
 Puerto Rico	Ceiba Municipio	11307
 Puerto Rico	Ciales Municipio	16984
 Puerto Rico	Cidra Municipio	39970
 Puerto Rico	Coamo Municipio	34668
 Puerto Rico	Comerío Municipio	18883
 Puerto Rico	Corozal Municipio	34571
 Puerto Rico	Culebra Municipio	1792
 Puerto Rico	Dorado Municipio	35879
 Puerto Rico	Fajardo Municipio	32124
 Puerto Rico	Florida Municipio	11692
 Puerto Rico	Guánica Municipio	13787
 Puerto Rico	Guayama Municipio	36614
 Puerto Rico	Guayanilla Municipio	17784
 Puerto Rico	Guaynabo Municipio	89780
 Puerto Rico	Gurabo Municipio	40622
 Puerto Rico	Hatillo Municipio	38486
 Puerto Rico	Hormigueros Municipio	15654
 Puerto Rico	Humacao Municipio	50896
 Puerto Rico	Isabela Municipio	42943
 Puerto Rico	Jayuya Municipio	14779
 Puerto Rico	Juana Díaz Municipio	46538
 Puerto Rico	Juncos Municipio	37012
 Puerto Rico	Lajas Municipio	23334
 Puerto Rico	Lares Municipio	28105
 Puerto Rico	Las Marías Municipio	8874
 Puerto Rico	Las Piedras Municipio	35180
 Puerto Rico	Loíza Municipio	23693
 Puerto Rico	Luquillo Municipio	17781
 Puerto Rico	Manatí Municipio	39492
 Puerto Rico	Maricao Municipio	4755
 Puerto Rico	Maunabo Municipio	10589
 Puerto Rico	Mayagüez Municipio	73077
 Puerto Rico	Moca Municipio	37460
 Puerto Rico	Morovis Municipio	28727
 Puerto Rico	Naguabo Municipio	23386
 Puerto Rico	Naranjito Municipio	29241
 Puerto Rico	Orocovis Municipio	21434
 Puerto Rico	Patillas Municipio	15985
 Puerto Rico	Peñuelas Municipio	20399
 Puerto Rico	Ponce Municipio	137491
 Puerto Rico	Quebradillas Municipio	23638
 Puerto Rico	Rincón Municipio	15187
 Puerto Rico	Río Grande Municipio	47060
 Puerto Rico	Sabana Grande Municipio	22729
 Puerto Rico	Salinas Municipio	25789
 Puerto Rico	San Germán Municipio	31879
 Puerto Rico	San Juan Municipio	342259
 Puerto Rico	San Lorenzo Municipio	37693
 Puerto Rico	San Sebastián Municipio	39345
 Puerto Rico	Santa Isabel Municipio	20281
 Puerto Rico	Toa Alta Municipio	66852
 Puerto Rico	Toa Baja Municipio	75293
 Puerto Rico	Trujillo Alto Municipio	67740
 Puerto Rico	Utuado Municipio	28287
 Puerto Rico	Vega Alta Municipio	35395
 Puerto Rico	Vega Baja Municipio	54414
 Puerto Rico	Vieques Municipio	8249
 Puerto Rico	Villalba Municipio	22093
 Puerto Rico	Yabucoa Municipio	30426
 Puerto Rico	Yauco Municipio	34172
\.


-- Completed on 2024-11-02 19:32:39

--
-- PostgreSQL database dump complete
--

