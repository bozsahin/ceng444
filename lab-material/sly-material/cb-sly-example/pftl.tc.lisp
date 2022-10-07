(
;;;;;;;;;; bench.py-generated monadic Lisp grammar
;;;;;;;;;; from pftl.tc October 07, 2022, 11:00:10
;;
;; a rules
;;
;;
;; elements
;;
(
(KEY 351659)(PARAM 1.0)(PHON wall)
(MORPH n)(SYN ((BCAT N)(FEATS NIL)))(SEM (LAM x (wall x)))
)
(
(KEY 642401)(PARAM 1.0)(PHON company)
(MORPH n)(SYN ((BCAT N)(FEATS NIL)))(SEM (LAM x (company x)))
)
(
(KEY 533215)(PARAM 1.0)(PHON CEO)
(MORPH n)(SYN ((BCAT N)(FEATS NIL)))(SEM (LAM x (CEO x)))
)
(
(KEY 580009)(PARAM 1.0)(PHON mercier)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))))(SEM (LAM p (p mercier)))
)
(
(KEY 133896)(PARAM 1.0)(PHON camier)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))))(SEM (LAM p (p camier)))
)
(
(KEY 63177)(PARAM 1.0)(PHON who)
(MORPH wh)(SYN ((((BCAT n)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT n)(FEATS NIL)))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 587023)(PARAM 1.0)(PHON believes)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))(DIR FS)(MODAL ALL)((BCAT s)(FEATS NIL))))(SEM (LAM s (LAM x ((believe s) x))))
)
(
(KEY 3939)(PARAM 1.0)(PHON hopes)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))(DIR FS)(MODAL ALL)((BCAT s)(FEATS NIL))))(SEM (LAM s (LAM x ((hope s) x))))
)
(
(KEY 204177)(PARAM 1.0)(PHON might)
(MORPH aux)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS NIL))))(SEM (LAM p (LAM x (might (p x)))))
)
(
(KEY 642658)(PARAM 1.0)(PHON save)
(MORPH v)(SYN (((BCAT vp)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y ((save x) y))))
)
(
(KEY 800459)(PARAM 1.0)(PHON Balbus)
(MORPH np)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)(case nom))))))(SEM (LAM p (p balb)))
)
(
(KEY 193113)(PARAM 1.0)(PHON build)
(MORPH v)(SYN (((BCAT vp)(FEATS (typ inf)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y ((build x) y))))
)
(
(KEY 386266)(PARAM 1.0)(PHON see)
(MORPH v)(SYN (((BCAT VP)(FEATS (typ inf)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y ((see x) y))))
)
(
(KEY 614672)(PARAM 1.0)(PHON persuade)
(MORPH v)(SYN ((((BCAT VP)(FEATS (typ inf)))(DIR FS)(MODAL ALL)((BCAT VP)(FEATS (type to))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM q (LAM y (((persuade (q x)) x) y)))))
)
(
(KEY 526212)(PARAM 1.0)(PHON persuades)
(MORPH v)(SYN (((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))(DIR FS)(MODAL ALL)((BCAT VP)(FEATS (type to_inf))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM q (LAM y (((persuade (q x)) x) y)))))
)
(
(KEY 356498)(PARAM 1.0)(PHON en)
(MORPH aff)(SYN (((BCAT vp)(FEATS (type pss)))(DIR BS)(MODAL ALL)(((BCAT VP)(FEATS (typ inf)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (LAM y ((p y) (something y)))))
)
(
(KEY 438263)(PARAM 1.0)(PHON en)
(MORPH aff)(SYN ((((BCAT vp)(FEATS (type pss)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type to))))(DIR BS)(MODAL ALL)((((BCAT VP)(FEATS (typ inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (typ to))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (LAM q (LAM y (((p y) q) (something y))))))
)
(
(KEY 453330)(PARAM 1.0)(PHON sees)
(MORPH v)(SYN ((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr 3s))))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS NIL))))(SEM (LAM x (LAM y ((see x) y))))
)
(
(KEY 644790)(PARAM 1.0)(PHON saw)
(MORPH v)(SYN ((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS (type full)(agr ?a)))))(SEM (LAM x (LAM y ((saw x) y))))
)
(
(KEY 264749)(PARAM 1.0)(PHON gwelodd)
(MORPH v)(SYN ((((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS (agr 3s)))))(SEM (LAM y (LAM x ((saw x) y))))
)
(
(KEY 458564)(PARAM 1.0)(PHON seen)
(MORPH v)(SYN (((BCAT S)(FEATS (voi pass)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)))))(SEM (LAM x ((see x) ((sk x) one))))
)
(
(KEY 982125)(PARAM 1.0)(PHON persuaded)
(MORPH v)(SYN ((((BCAT S)(FEATS (voi pass)))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr 3s))))(DIR FS)(MODAL ALL)((BCAT VP)(FEATS (type to_inf)))))(SEM (LAM p (LAM x (((persuade (p x)) x) ((sk x) one)))))
)
(
(KEY 397227)(PARAM 1.0)(PHON open)
(MORPH v)(SYN (((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS NIL))))(SEM (LAM y (init (open y))))
)
(
(KEY 202420)(PARAM 1.0)(PHON open)
(MORPH v)(SYN ((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS NIL))))(SEM (LAM x (LAM y ((cause (init (open x))) y))))
)
(
(KEY 709322)(PARAM 1.0)(PHON break)
(MORPH v)(SYN (((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS NIL))))(SEM (LAM x (init (broken x))))
)
(
(KEY 911421)(PARAM 1.0)(PHON open)
(MORPH v)(SYN ((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS NIL))))(SEM (LAM x (LAM y ((cause (init (broken x))) y))))
)
(
(KEY 704682)(PARAM 1.0)(PHON i)
(MORPH n)(SYN (((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr 1s))))))(SEM (LAM p (p i)))
)
(
(KEY 465282)(PARAM 1.0)(PHON Harry)
(MORPH n)(SYN ((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr ?x))))(DIR BS)(MODAL ALL)((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr ?x))))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS NIL)))))(SEM (LAM p (p harry)))
)
(
(KEY 874772)(PARAM 1.0)(PHON Harry)
(MORPH n)(SYN ((BCAT NP)(FEATS NIL)))(SEM harry)
)
(
(KEY 849463)(PARAM 1.0)(PHON Balb)
(MORPH n)(SYN ((BCAT N)(FEATS NIL)))(SEM balb)
)
(
(KEY 517428)(PARAM 1.0)(PHON us)
(MORPH aff)(SYN ((((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom)(agr 3s)))))(DIR BS)(MODAL STAR)((BCAT N)(FEATS NIL))))(SEM (LAM x (LAM p (p x))))
)
(
(KEY 560498)(PARAM 1.0)(PHON mur)
(MORPH n)(SYN ((BCAT N)(FEATS NIL)))(SEM wall)
)
(
(KEY 557555)(PARAM 1.0)(PHON um)
(MORPH aff)(SYN (((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom)(agr ?x))))(DIR FS)(MODAL ALL)((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom)(agr ?x))))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case acc)))))(DIR BS)(MODAL ALL)((BCAT N)(FEATS NIL))))(SEM (LAM x (LAM p (p x))))
)
(
(KEY 490090)(PARAM 1.0)(PHON um)
(MORPH aff)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case acc)))))(DIR BS)(MODAL ALL)((BCAT N)(FEATS NIL))))(SEM (LAM x (LAM p (p x))))
)
(
(KEY 712321)(PARAM 1.0)(PHON m)
(MORPH aff)(SYN (((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom)(agr ?x))))(DIR FS)(MODAL ALL)((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom)(agr ?x))))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case acc)))))(DIR BS)(MODAL ALL)((BCAT N)(FEATS NIL))))(SEM (LAM x (LAM p (p x))))
)
(
(KEY 850080)(PARAM 1.0)(PHON aedificat)
(MORPH v)(SYN ((((BCAT S)(FEATS (type pres)))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom)(agr 3s))))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case acc)))))(SEM (LAM x (LAM y ((build x) y))))
)
(
(KEY 668286)(PARAM 1.0)(PHON depart)
(MORPH v)(SYN (((BCAT s)(FEATS (type inf)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM y (depart y)))
)
(
(KEY 227562)(PARAM 1.0)(PHON ed)
(MORPH aff)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS (type inf)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (LAM y (past (p y)))))
)
(
(KEY 626057)(PARAM 1.0)(PHON dismiss)
(MORPH v)(SYN ((((BCAT s)(FEATS (type inf)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y ((dismiss x) y))))
)
(
(KEY 950014)(PARAM 1.0)(PHON rocket)
(MORPH n)(SYN ((BCAT n)(FEATS NIL)))(SEM rocket)
)
(
(KEY 670100)(PARAM 1.0)(PHON scient)
(MORPH n)(SYN (((BCAT n)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT n)(FEATS NIL))))(SEM (LAM x (science x)))
)
(
(KEY 424252)(PARAM 1.0)(PHON ist)
(MORPH aff)(SYN (((BCAT n)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT n)(FEATS NIL))))(SEM (LAM p (LAM x ((practitioner p) x))))
)
(
(KEY 63111)(PARAM 1.0)(PHON Harry)
(MORPH n)(SYN (((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr 3s))))))(SEM (LAM p (p harry)))
)
(
(KEY 411523)(PARAM 1.0)(PHON sally)
(MORPH n)(SYN (((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (agr 3s))))))(SEM (LAM p (p sally)))
)
(
(KEY 150248)(PARAM 1.0)(PHON sally)
(MORPH n)(SYN ((BCAT NP)(FEATS (agr 3s))))(SEM sally)
)
(
(KEY 870119)(PARAM 1.0)(PHON missed)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x ((miss x) me)))
)
(
(KEY 24962)(PARAM 1.0)(PHON the saturday dance)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p thesaturdaydance)))
)
(
(KEY 406774)(PARAM 1.0)(PHON saw)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (type ana)(agr ?a)))))(SEM (LAM a (LAM y ((saw (a y)) y))))
)
(
(KEY 830405)(PARAM 1.0)(PHON mae)
(MORPH v)(SYN ((((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT VP)(FEATS (typ asp))))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS (agr 3s)))))(SEM (LAM y (LAM p (pres (p y)))))
)
(
(KEY 508405)(PARAM 1.0)(PHON rhiannon)
(MORPH n)(SYN ((((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT VP)(FEATS (typ asp))))(DIR BS)(MODAL ALL)((((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT VP)(FEATS (type asp))))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS (agr 3s))))))(SEM (LAM p (p rhiannon)))
)
(
(KEY 776492)(PARAM 1.0)(PHON yn)
(MORPH asp)(SYN (((BCAT vp)(FEATS (type asp)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS NIL))))(SEM (LAM p (LAM y (prog (p y)))))
)
(
(KEY 500475)(PARAM 1.0)(PHON cysgu)
(MORPH v)(SYN ((BCAT VP)(FEATS NIL)))(SEM (LAM y (sleep y)))
)
(
(KEY 177611)(PARAM 1.0)(PHON himself)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3sm))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3sm))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (type ana)(agr 3sm))))))(SEM (LAM p (p self)))
)
(
(KEY 835802)(PARAM 1.0)(PHON saw)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (type pro)(agr ?a)))))(SEM (LAM a (LAM y ((saw (something a)) y))))
)
(
(KEY 344739)(PARAM 1.0)(PHON him)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (type pro))))))(SEM (LAM p (p him)))
)
(
(KEY 696218)(PARAM 1.0)(PHON Tom)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))))(SEM (LAM p (p tom)))
)
(
(KEY 870797)(PARAM 1.0)(PHON wants)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type to_inf)))))(SEM (LAM p (LAM y ((want (p y)) y))))
)
(
(KEY 146286)(PARAM 1.0)(PHON Harry)
(MORPH n)(SYN (((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type to_inf))))(DIR BS)(MODAL ALL)(((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type to_inf))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p harry)))
)
(
(KEY 385604)(PARAM 1.0)(PHON to)
(MORPH p)(SYN (((BCAT vp)(FEATS (type to_inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type inf)))))(SEM (LAM p p))
)
(
(KEY 157595)(PARAM 1.0)(PHON go)
(MORPH v)(SYN ((BCAT VP)(FEATS (type inf))))(SEM (LAM y (go y)))
)
(
(KEY 472835)(PARAM 1.0)(PHON aedificare)
(MORPH v)(SYN ((((BCAT S)(FEATS (type inf)))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom))))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case acc)))))(SEM (LAM x (LAM y ((build x) y))))
)
(
(KEY 232774)(PARAM 1.0)(PHON the)
(MORPH det)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL))))(DIR FS)(MODAL ALL)((BCAT n)(FEATS NIL))))(SEM (LAM x (LAM p (p x))))
)
(
(KEY 170547)(PARAM 1.0)(PHON the)
(MORPH det)(SYN ((((BCAT vp)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT vp)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(DIR FS)(MODAL ALL)((BCAT n)(FEATS NIL))))(SEM (LAM x (LAM p (p x))))
)
(
(KEY 573400)(PARAM 1.0)(PHON house)
(MORPH n)(SYN ((BCAT n)(FEATS NIL)))(SEM house)
)
(
(KEY 31459)(PARAM 1.0)(PHON built)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y ((built x) y))))
)
(
(KEY 108225)(PARAM 1.0)(PHON jack)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p jack)))
)
(
(KEY 294451)(PARAM 1.0)(PHON sold)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y ((sold x) y))))
)
(
(KEY 614695)(PARAM 1.0)(PHON you)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p you)))
)
(
(KEY 201895)(PARAM 1.0)(PHON bought)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y ((bought x) y))))
)
(
(KEY 263076)(PARAM 1.0)(PHON the house that jack built)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p house_built_by_jack)))
)
(
(KEY 801735)(PARAM 1.0)(PHON give)
(MORPH v)(SYN (((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM y (LAM z (((give y) x) z)))))
)
(
(KEY 258671)(PARAM 1.0)(PHON mary)
(MORPH n)(SYN (((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR BS)(MODAL ALL)(((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p mary)))
)
(
(KEY 729240)(PARAM 1.0)(PHON records)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p records)))
)
(
(KEY 589388)(PARAM 1.0)(PHON alice)
(MORPH n)(SYN (((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR BS)(MODAL ALL)(((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p alice)))
)
(
(KEY 343539)(PARAM 1.0)(PHON books)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p books)))
)
(
(KEY 941330)(PARAM 1.0)(PHON there)
(MORPH xp)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr ?a))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr ?a))))))(SEM (LAM r (LAM y (LAM p ((r p) y)))))
)
(
(KEY 535898)(PARAM 1.0)(PHON seem)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr pl))))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (typ to_inf)(class vp)(agr pl)))))(SEM (LAM p (LAM y (seem (p y)))))
)
(
(KEY 174443)(PARAM 1.0)(PHON to be)
(MORPH v)(SYN (((BCAT vp)(FEATS (typ to_inf)(agr ?b)))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr ?b)))))(SEM (LAM p (LAM y (p y))))
)
(
(KEY 868398)(PARAM 1.0)(PHON fairies)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr pl))))(DIR BS)(MODAL HARMONIC)((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr pl))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr pl))))))(SEM (LAM p (p fairies)))
)
(
(KEY 88093)(PARAM 1.0)(PHON fairies)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr pl))))))(SEM (LAM p (p fairies)))
)
(
(KEY 472907)(PARAM 1.0)(PHON at the bottom of my garden)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr ?z))))))(SEM (LAM p (p atbmg)))
)
(
(KEY 84265)(PARAM 1.0)(PHON at the bottom of my garden)
(MORPH n)(SYN (((BCAT vp)(FEATS (agr ?a)))(DIR BS)(MODAL ALL)(((BCAT vp)(FEATS (agr ?a)))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr ?a))))))(SEM (LAM p (p atbmg)))
)
(
(KEY 415816)(PARAM 1.0)(PHON at the bottom of my garden)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT xp)(FEATS (type pred)(class pp)(agr ?z))))))(SEM (LAM p (p atbmg)))
)
(
(KEY 668706)(PARAM 1.0)(PHON quem)
(MORPH a)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (gen m)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (gen m))))))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case acc))))))(SEM (LAM p (LAM q (LAM x ((and (p x)) ((q (LAM x x)) x))))))
)
(
(KEY 672623)(PARAM 1.0)(PHON erzahlen)
(MORPH v)(SYN (((BCAT s)(FEATS (type t)))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((((BCAT vp)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case acc))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case dat)))))))(SEM (LAM p (p tell)))
)
(
(KEY 415330)(PARAM 1.0)(PHON wird)
(MORPH x)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)))))(SEM (LAM x (LAM p (will (p x)))))
)
(
(KEY 401772)(PARAM 1.0)(PHON er)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS NIL)))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)(case nom))))))(SEM (LAM p (p he)))
)
(
(KEY 980634)(PARAM 1.0)(PHON seiner tochter)
(MORPH n)(SYN (((BCAT vp)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT vp)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case acc))))))(SEM (LAM p (p daughter)))
)
(
(KEY 894460)(PARAM 1.0)(PHON ein marchen)
(MORPH n)(SYN ((((BCAT vp)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case acc))))(DIR FS)(MODAL ALL)((((BCAT vp)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case acc))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case dat))))))(SEM (LAM p (p story)))
)
(
(KEY 358624)(PARAM 1.0)(PHON konnen)
(MORPH v)(SYN (((BCAT vp)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT vp)(FEATS NIL))))(SEM (LAM p (able p)))
)
(
(KEY 881685)(PARAM 1.0)(PHON and)
(MORPH x)(SYN ((((BCAT @X)special)(DIR BS)(MODAL STAR)((BCAT @X)special))(DIR FS)(MODAL STAR)((BCAT @X)special)))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 383983)(PARAM 1.0)(PHON man)
(MORPH n)(SYN ((BCAT n)(FEATS NIL)))(SEM man)
)
(
(KEY 826012)(PARAM 1.0)(PHON that)
(MORPH a)(SYN ((((BCAT n)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT n)(FEATS NIL)))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 680824)(PARAM 1.0)(PHON that)
(MORPH a)(SYN ((((BCAT n)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT n)(FEATS NIL)))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 349556)(PARAM 1.0)(PHON walks)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)))))(SEM (LAM x (walk x)))
)
(
(KEY 53129)(PARAM 1.0)(PHON talks)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)))))(SEM (LAM x (talk x)))
)
(
(KEY 194780)(PARAM 1.0)(PHON he)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p he)))
)
(
(KEY 441995)(PARAM 1.0)(PHON et)
(MORPH x)(SYN ((((BCAT @X)special)(DIR BS)(MODAL STAR)((BCAT @X)special))(DIR FS)(MODAL STAR)((BCAT @X)special)))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 476707)(PARAM 1.0)(PHON Marc)
(MORPH n)(SYN ((BCAT N)(FEATS NIL)))(SEM mark)
)
(
(KEY 740885)(PARAM 1.0)(PHON villa)
(MORPH n)(SYN ((BCAT N)(FEATS NIL)))(SEM house)
)
(
(KEY 976797)(PARAM 1.0)(PHON vult)
(MORPH v)(SYN ((((BCAT S)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS (case nom)(agr 3s))))(DIR BS)(MODAL ALL)(((BCAT S)(FEATS (type inf)))(DIR BS)(MODAL ALL)((BCAT NP)(FEATS NIL)))))(SEM (LAM p (LAM x ((want (p x)) x))))
)
(
(KEY 769048)(PARAM 1.0)(PHON ubur)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p ubur)))
)
(
(KEY 897488)(PARAM 1.0)(PHON a_tuuk)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (play x)))
)
(
(KEY 959972)(PARAM 1.0)(PHON a_puot)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)))))(SEM (LAM y (LAM x ((beat x) y))))
)
(
(KEY 160026)(PARAM 1.0)(PHON dhaag_e)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))))(SEM (LAM p (p woman)))
)
(
(KEY 552492)(PARAM 1.0)(PHON dhaage)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p woman)))
)
(
(KEY 525758)(PARAM 1.0)(PHON ubur)
(MORPH n)(SYN (((BCAT s)(FEATS (type top)))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3s))))))(SEM (LAM p (p ubur)))
)
(
(KEY 329140)(PARAM 1.0)(PHON a_yaan_e)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3s)))))(SEM (LAM y (LAM x ((insult x) y))))
)
(
(KEY 197864)(PARAM 1.0)(PHON teim)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case dat)(agr 3s))))))(SEM (LAM p (p them)))
)
(
(KEY 595302)(PARAM 1.0)(PHON likar)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case dat)(agr 3s))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case nom)))))(SEM (LAM x (LAM y ((likes x) y))))
)
(
(KEY 892920)(PARAM 1.0)(PHON maturinn)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case dat)(agr 3s))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case dat)(agr 3s))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case nom))))))(SEM (LAM p (p food)))
)
(
(KEY 604057)(PARAM 1.0)(PHON og)
(MORPH x)(SYN ((((BCAT @X)special)(DIR BS)(MODAL STAR)((BCAT @X)special))(DIR FS)(MODAL STAR)((BCAT @X)special)))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 956061)(PARAM 1.0)(PHON borda)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case acc)(num plu)))))(SEM (LAM x ((eat x) they)))
)
(
(KEY 769537)(PARAM 1.0)(PHON mikid)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case acc))))))(SEM (LAM p (p much)))
)
(
(KEY 679681)(PARAM 1.0)(PHON Jon)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case nom))))))(SEM (LAM p (p jon)))
)
(
(KEY 283955)(PARAM 1.0)(PHON lysti)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case nom))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case dat)))))(SEM (LAM x (LAM y ((describe x) y))))
)
(
(KEY 923011)(PARAM 1.0)(PHON bordadi)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case nom))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case acc)))))(SEM (LAM x (LAM y ((ate x) y))))
)
(
(KEY 946208)(PARAM 1.0)(PHON matinn)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case acc))))))(SEM (LAM p (p food)))
)
(
(KEY 337835)(PARAM 1.0)(PHON gwelodd)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (type ana)(agr 3))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3)))))(SEM (LAM y (LAM a ((saw (a y)) y))))
)
(
(KEY 293318)(PARAM 1.0)(PHON gwyn)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3)(gen m))))))(SEM (LAM p (p gwyn)))
)
(
(KEY 888370)(PARAM 1.0)(PHON ei hun)
(MORPH ref)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (type ana)(agr 3)(gen m))))))(SEM (LAM p (p self)))
)
(
(KEY 129048)(PARAM 1.0)(PHON maen)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type ing))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3)(num plu)))))(SEM (LAM y (LAM p (p y))))
)
(
(KEY 820951)(PARAM 1.0)(PHON nhw)
(MORPH pro)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type ing))))(DIR BS)(MODAL ALL)((((BCAT S)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type ing))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3)(num plu))))))(SEM (LAM p (p them)))
)
(
(KEY 351729)(PARAM 1.0)(PHON n)
(MORPH ger)(SYN (((BCAT VP)(FEATS (type ing)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type inf)))))(SEM (LAM p p))
)
(
(KEY 533638)(PARAM 1.0)(PHON perswadio)
(MORPH v)(SYN ((((BCAT vp)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type to_inf))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM p (LAM y (((persuade (p x)) x) y)))))
)
(
(KEY 631112)(PARAM 1.0)(PHON grwpiau)
(MORPH n)(SYN ((((BCAT vp)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type to_inf))))(DIR BS)(MODAL ALL)((((BCAT vp)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type to_inf))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p groups)))
)
(
(KEY 279027)(PARAM 1.0)(PHON i)
(MORPH p)(SYN (((BCAT vp)(FEATS (type to_inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type inf)))))(SEM (LAM p p))
)
(
(KEY 515852)(PARAM 1.0)(PHON fynd)
(MORPH v)(SYN (((BCAT vp)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT pp)(FEATS NIL))))(SEM (LAM x (LAM y ((goto x) y))))
)
(
(KEY 842712)(PARAM 1.0)(PHON adref)
(MORPH p)(SYN (((BCAT vp)(FEATS (type inf)))(DIR BS)(MODAL ALL)(((BCAT vp)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT pp)(FEATS NIL)))))(SEM (LAM p (p home)))
)
(
(KEY 199186)(PARAM 1.0)(PHON roedd)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type ing))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3)))))(SEM (LAM y (LAM p (p y))))
)
(
(KEY 525910)(PARAM 1.0)(PHON gwyn)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type ing))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type ing))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (agr 3)(num s))))))(SEM (LAM p (p gwyn)))
)
(
(KEY 808747)(PARAM 1.0)(PHON yn)
(MORPH ger)(SYN (((BCAT vp)(FEATS (type ing)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type inf)))))(SEM (LAM p p))
)
(
(KEY 785115)(PARAM 1.0)(PHON dymuno)
(MORPH v)(SYN (((BCAT vp)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT s)(FEATS (type inf)))))(SEM (LAM s (LAM y ((want s) y))))
)
(
(KEY 547004)(PARAM 1.0)(PHON i)
(MORPH c)(SYN ((((BCAT s)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type inf))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM y (LAM p (p y))))
)
(
(KEY 780445)(PARAM 1.0)(PHON grwpiau)
(MORPH n)(SYN ((((BCAT s)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type inf))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (type inf)))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (type inf))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p groups)))
)
(
(KEY 559577)(PARAM 1.0)(PHON dynes)
(MORPH n)(SYN ((BCAT n)(FEATS (agr 3fs))))(SEM woman)
)
(
(KEY 412651)(PARAM 1.0)(PHON ddynes)
(MORPH n)(SYN ((BCAT n)(FEATS (agr 3fs))))(SEM woman)
)
(
(KEY 15056)(PARAM 1.0)(PHON welodd)
(MORPH a)(SYN ((((BCAT n)(FEATS (agr ?a)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM x (LAM q (LAM y ((and ((saw x) y)) (q y))))))
)
(
(KEY 778053)(PARAM 1.0)(PHON welodd)
(MORPH a)(SYN ((((BCAT n)(FEATS (agr ?a)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?a))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM y (LAM q (LAM x ((and ((saw x) y)) (q x))))))
)
(
(KEY 720848)(PARAM 1.0)(PHON gath)
(MORPH n)(SYN ((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR BS)(MODAL ALL)((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS NIL)))))(SEM (LAM p (p cat)))
)
(
(KEY 424908)(PARAM 1.0)(PHON cath)
(MORPH n)(SYN ((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR BS)(MODAL ALL)((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR FS)(MODAL ALL)((BCAT NP)(FEATS NIL)))))(SEM (LAM p (p cat)))
)
(
(KEY 99256)(PARAM 1.0)(PHON werthodd)
(MORPH v)(SYN (((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL))))(SEM (LAM y (LAM x (LAM q (LAM w ((and (((sold w) x) y)) (q w)))))))
)
(
(KEY 42705)(PARAM 1.0)(PHON ieuan)
(MORPH n)(SYN (((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR BS)(MODAL ALL)(((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p ewan)))
)
(
(KEY 883091)(PARAM 1.0)(PHON y ceffyl)
(MORPH n)(SYN ((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR BS)(MODAL ALL)((((BCAT n)(FEATS (agr ?x)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr ?x))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS NIL)))))(SEM (LAM p (p horse)))
)
(
(KEY 595538)(PARAM 1.0)(PHON iddi)
(MORPH p)(SYN ((((BCAT n)(FEATS (agr 3fs)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr 3fs))))(DIR BS)(MODAL ALL)(((BCAT n)(FEATS (agr 3fs)))(DIR BS)(MODAL ALL)((BCAT n)(FEATS (agr 3fs))))))(SEM (LAM p p))
)
(
(KEY 252088)(PARAM 1.0)(PHON bayi yara)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p man)))
)
(
(KEY 387938)(PARAM 1.0)(PHON walngarra)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (case abs)))))(SEM (LAM p (LAM x ((want (p x)) x))))
)
(
(KEY 806942)(PARAM 1.0)(PHON naba_ygu)
(MORPH v)(SYN ((BCAT VP)(FEATS (case abs))))(SEM (LAM x (bathe x)))
)
(
(KEY 737069)(PARAM 1.0)(PHON bural)
(MORPH v)(SYN (((BCAT vp)(FEATS (typ inf)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)))))(SEM (LAM y (LAM x ((see x) y))))
)
(
(KEY 168858)(PARAM 1.0)(PHON _na_ygu)
(MORPH aff)(SYN (((BCAT vp)(FEATS (typ antipss)))(DIR BS)(MODAL ALL)(((BCAT vp)(FEATS (typ inf)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (LAM x ((p (something x)) x))))
)
(
(KEY 709241)(PARAM 1.0)(PHON _na_ygu)
(MORPH aff)(SYN ((((BCAT vp)(FEATS (typ antipss)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case dat))))(DIR BS)(MODAL ALL)(((BCAT vp)(FEATS (typ inf)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (LAM x (LAM y (antip ((p y) x))))))
)
(
(KEY 789782)(PARAM 1.0)(PHON bagun yibi_gu)
(MORPH n)(SYN (((BCAT vp)(FEATS (case abs)))(DIR BS)(MODAL ALL)(((BCAT vp)(FEATS (case abs)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case dat))))))(SEM (LAM p (p woman)))
)
(
(KEY 662833)(PARAM 1.0)(PHON bangun yibi_ngu)
(MORPH n)(SYN (((BCAT vp)(FEATS (case abs)))(DIR FS)(MODAL ALL)(((BCAT vp)(FEATS (case abs)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (p woman)))
)
(
(KEY 749244)(PARAM 1.0)(PHON bura_li)
(MORPH v)(SYN (((BCAT vp)(FEATS (case abs)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)))))(SEM (LAM x (LAM y ((see y) x))))
)
(
(KEY 172701)(PARAM 1.0)(PHON yabu)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p mother)))
)
(
(KEY 720166)(PARAM 1.0)(PHON numa_ngu)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR FS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (p father)))
)
(
(KEY 837239)(PARAM 1.0)(PHON giga_n)
(MORPH v)(SYN (((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))(DIR FS)(MODAL ALL)((BCAT vp)(FEATS (case abs)))))(SEM (LAM p (LAM x (LAM y (((tell (p y)) y) x)))))
)
(
(KEY 201745)(PARAM 1.0)(PHON banaga_ygu)
(MORPH v)(SYN ((BCAT vp)(FEATS (case abs))))(SEM (LAM x (return x)))
)
(
(KEY 281086)(PARAM 1.0)(PHON gubi_ngu)
(MORPH n)(SYN (((BCAT vp)(FEATS (case abs)))(DIR FS)(MODAL ALL)(((BCAT vp)(FEATS (case abs)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (p gubi)))
)
(
(KEY 210323)(PARAM 1.0)(PHON mawa_li)
(MORPH v)(SYN (((BCAT vp)(FEATS (case abs)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)))))(SEM (LAM x (LAM y ((examine y) x))))
)
(
(KEY 91730)(PARAM 1.0)(PHON miyanda)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(SEM (LAM x (laugh x)))
)
(
(KEY 263263)(PARAM 1.0)(PHON _nu)
(MORPH aff)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (LAM q (LAM r (LAM x ((and (r x)) ((and (p x)) ((q (LAM x x)) x))))))))
)
(
(KEY 159629)(PARAM 1.0)(PHON yanu)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(SEM (LAM x (go x)))
)
(
(KEY 932093)(PARAM 1.0)(PHON balan yibi)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p woman)))
)
(
(KEY 296543)(PARAM 1.0)(PHON bangul yara_ngu)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR FS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (p man)))
)
(
(KEY 946983)(PARAM 1.0)(PHON _nu_ru)
(MORPH aff)(SYN ((((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR FS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR FS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (LAM q (LAM r (LAM y (LAM x ((and ((r x) y)) ((and (p x)) ((q (LAM x x)) x)))))))))
)
(
(KEY 522112)(PARAM 1.0)(PHON bura_n)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)))))(SEM (LAM x (LAM y ((see y) x))))
)
(
(KEY 596870)(PARAM 1.0)(PHON jilwal_na)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case dat)))))(SEM (LAM x (LAM y ((kick x) y))))
)
(
(KEY 48890)(PARAM 1.0)(PHON begun guda_gu)
(MORPH n)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(DIR BS)(MODAL ALL)(((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case dat))))))(SEM (LAM p (p dog)))
)
(
(KEY 51519)(PARAM 1.0)(PHON bangun yibi_ngu)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (p woman)))
)
(
(KEY 758374)(PARAM 1.0)(PHON bura_n)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)))))(SEM (LAM y ((saw topic) y)))
)
(
(KEY 323034)(PARAM 1.0)(PHON nyurra)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (type pro)(case nom))))))(SEM (LAM p (p you)))
)
(
(KEY 672878)(PARAM 1.0)(PHON nana_na)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case nom)(type pro))))(DIR FS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (type pro)(case nom))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (type pro)(case acc))))))(SEM (LAM p (p ((and us) (topic us)))))
)
(
(KEY 691343)(PARAM 1.0)(PHON bura_n)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case nom)(type pro))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case acc)(type pro)))))(SEM (LAM x (LAM y ((and ((saw (sk x)) (sk y))) ((noteq (sk x)) (sk y))))))
)
(
(KEY 417136)(PARAM 1.0)(PHON banaga_nyu)
(MORPH v)(SYN ((BCAT S)(FEATS NIL)))(SEM (return topic))
)
(
(KEY 682577)(PARAM 1.0)(PHON ,)
(MORPH x)(SYN ((((BCAT @X)special)(DIR BS)(MODAL STAR)((BCAT @X)special))(DIR FS)(MODAL STAR)((BCAT @X)special)))(SEM (LAM p (LAM q ((and p) q))))
)
(
(KEY 213763)(PARAM 1.0)(PHON miqqat)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr 3pl))))))(SEM (LAM p (p children)))
)
(
(KEY 944298)(PARAM 1.0)(PHON juuna)
(MORPH n)(SYN (((BCAT vp)(FEATS (case erg)))(DIR FS)(MODAL ALL)(((BCAT vp)(FEATS (case erg)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p juuna)))
)
(
(KEY 894915)(PARAM 1.0)(PHON ikiu_ssa_llu_gu)
(MORPH v)(SYN (((BCAT vp)(FEATS (case erg)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(SEM (LAM x (LAM y ((help x) y))))
)
(
(KEY 985577)(PARAM 1.0)(PHON niriursui_pp_u_t)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr 3pl))))(DIR BS)(MODAL ALL)((BCAT vp)(FEATS NIL))))(SEM (LAM p (LAM y ((promise (p y)) y))))
)
(
(KEY 404864)(PARAM 1.0)(PHON qiti_ssa_llu_tik)
(MORPH v)(SYN ((BCAT vp)(FEATS (case abs))))(SEM (LAM x (dance x)))
)
(
(KEY 705752)(PARAM 1.0)(PHON arnaup)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)(agr 3sg))))))(SEM (LAM p (p woman)))
)
(
(KEY 82331)(PARAM 1.0)(PHON nutaraq)
(MORPH n)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)(agr 3sg))))(DIR FS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)(agr 3sg))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr 3sg))))))(SEM (LAM p (p child)))
)
(
(KEY 123072)(PARAM 1.0)(PHON titirautimik)
(MORPH n)(SYN (((BCAT vp)(FEATS (case abs)))(DIR FS)(MODAL ALL)(((BCAT vp)(FEATS (case abs)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case obl))))))(SEM (LAM p (p pencil)))
)
(
(KEY 38936)(PARAM 1.0)(PHON nani_si)
(MORPH v)(SYN (((BCAT vp)(FEATS (case abs)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case obl)))))(SEM (LAM x (LAM y (antip ((find x) y)))))
)
(
(KEY 397754)(PARAM 1.0)(PHON rqu_vaa)
(MORPH v)(SYN (((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg)(agr 3sg))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr 3sg))))(DIR BS)(MODAL ALL)((BCAT vp)(FEATS (case abs)))))(SEM (LAM p (LAM x (LAM y (((tell (p x)) x) y)))))
)
(
(KEY 244777)(PARAM 1.0)(PHON titirauti)
(MORPH n)(SYN (((BCAT vp)(FEATS (case erg)))(DIR FS)(MODAL ALL)(((BCAT vp)(FEATS (case erg)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p pencil)))
)
(
(KEY 897421)(PARAM 1.0)(PHON nani)
(MORPH v)(SYN (((BCAT vp)(FEATS (case erg)))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(SEM (LAM x (LAM y ((find x) y))))
)
(
(KEY 838297)(PARAM 1.0)(PHON nanuq)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p polarbear)))
)
(
(KEY 58341)(PARAM 1.0)(PHON piita_p)
(MORPH n)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR FS)(MODAL ALL)(((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))))(SEM (LAM p (p piita)))
)
(
(KEY 428591)(PARAM 1.0)(PHON tugu)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(SEM (LAM x (LAM y ((kill x) y))))
)
(
(KEY 243783)(PARAM 1.0)(PHON _ta_a)
(MORPH aff)(SYN ((((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (LAM q (LAM r1 (LAM r ((and ((p (r1 (LAM x x))) q)) (r (r1 (LAM x x)))))))))
)
(
(KEY 235048)(PARAM 1.0)(PHON miiraq)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p child)))
)
(
(KEY 504923)(PARAM 1.0)(PHON kamat)
(MORPH v)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(SEM (LAM x (angry x)))
)
(
(KEY 630682)(PARAM 1.0)(PHON _tu_q)
(MORPH aff)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (LAM q (LAM r (LAM x ((and (p x)) ((and ((q (LAM x x)) x)) (r x))))))))
)
(
(KEY 324860)(PARAM 1.0)(PHON angut)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p man)))
)
(
(KEY 684075)(PARAM 1.0)(PHON aallaat)
(MORPH n)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (p man)))
)
(
(KEY 823974)(PARAM 1.0)(PHON aallaam_mik)
(MORPH n)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR FS)(MODAL ALL)(((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case inst))))))(SEM (LAM p (p gun)))
)
(
(KEY 412056)(PARAM 1.0)(PHON tigu_si_sima)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case inst)))))(SEM (LAM x (LAM y ((take x) y))))
)
(
(KEY 839585)(PARAM 1.0)(PHON _su_q)
(MORPH aff)(SYN (((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (LAM q (LAM r (LAM x ((and (p x)) ((and ((q (LAM x x)) x)) (r x))))))))
)
(
(KEY 226539)(PARAM 1.0)(PHON tigu_sima)
(MORPH v)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)))))(SEM (LAM x (LAM y ((take x) y))))
)
(
(KEY 282033)(PARAM 1.0)(PHON _sa_a)
(MORPH aff)(SYN ((((((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a)))))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs)(agr ?a))))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case erg))))(DIR BS)(MODAL ALL)((BCAT np)(FEATS (case abs))))))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 681327)(PARAM 1.0)(PHON ang)
(MORPH det)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang)))))(DIR FS)(MODAL ALL)((BCAT n)(FEATS NIL))))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 731568)(PARAM 1.0)(PHON babae)
(MORPH n)(SYN ((BCAT n)(FEATS NIL)))(SEM woman)
)
(
(KEY 17260)(PARAM 1.0)(PHON ng)
(MORPH lnk)(SYN ((((BCAT n)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT n)(FEATS NIL)))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS (voi ?v)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))))(SEM (LAM p (LAM n (LAM x ((and (p x)) (n x))))))
)
(
(KEY 66104)(PARAM 1.0)(PHON b_um_ili)
(MORPH v)(SYN ((((BCAT s)(FEATS (voi av)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng)))))(SEM (LAM x (LAM y ((buy x) y))))
)
(
(KEY 570641)(PARAM 1.0)(PHON ng_baro)
(MORPH n)(SYN ((((BCAT s)(FEATS (voi av)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (voi av)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (p dress)))
)
(
(KEY 13344)(PARAM 1.0)(PHON iyon)
(MORPH wh)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang)))))(SEM (LAM x (that x)))
)
(
(KEY 943267)(PARAM 1.0)(PHON baro)
(MORPH n)(SYN ((BCAT n)(FEATS NIL)))(SEM dress)
)
(
(KEY 180206)(PARAM 1.0)(PHON b_in_ili)
(MORPH v)(SYN ((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng)))))(SEM (LAM x (LAM y ((buy y) x))))
)
(
(KEY 527440)(PARAM 1.0)(PHON ng_babae)
(MORPH n)(SYN ((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (p woman)))
)
(
(KEY 898807)(PARAM 1.0)(PHON sino)
(MORPH wh)(SYN (((BCAT s)(FEATS (type whq)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang)))))(SEM (LAM x (who x)))
)
(
(KEY 689198)(PARAM 1.0)(PHON ang)
(MORPH det)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang)))))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS (voi none)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (LAM x (p x))))
)
(
(KEY 30889)(PARAM 1.0)(PHON kabibili)
(MORPH v)(SYN ((((BCAT s)(FEATS (voi none)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng)))))(SEM (LAM x (LAM y ((buy x) y))))
)
(
(KEY 804438)(PARAM 1.0)(PHON lang)
(MORPH a)(SYN (((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)((BCAT s)(FEATS NIL))))(SEM (LAM p (just p)))
)
(
(KEY 571771)(PARAM 1.0)(PHON ng tela)
(MORPH n)(SYN ((((BCAT s)(FEATS (voi none)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (voi none)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (p cloth)))
)
(
(KEY 20692)(PARAM 1.0)(PHON ano)
(MORPH wh)(SYN (((BCAT s)(FEATS (type whq)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang)))))(SEM (LAM x (what x)))
)
(
(KEY 783107)(PARAM 1.0)(PHON ang)
(MORPH det)(SYN ((((BCAT s)(FEATS NIL))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS (type whq)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang)))))(DIR FS)(MODAL ALL)(((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))))(SEM (LAM p (LAM x (p x))))
)
(
(KEY 958710)(PARAM 1.0)(PHON sinabi)
(MORPH v)(SYN ((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT s)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng)))))(SEM (LAM x (LAM p ((say p) x))))
)
(
(KEY 836013)(PARAM 1.0)(PHON ni pedro)
(MORPH n)(SYN ((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT s)(FEATS NIL)))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT s)(FEATS NIL)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (p pedro)))
)
(
(KEY 997034)(PARAM 1.0)(PHON na)
(MORPH c)(SYN (((BCAT s)(FEATS NIL))(DIR FS)(MODAL ALL)((BCAT s)(FEATS NIL))))(SEM (LAM p p))
)
(
(KEY 626486)(PARAM 1.0)(PHON binili)
(MORPH v)(SYN ((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng)))))(SEM (LAM x (LAM y ((buy y) x))))
)
(
(KEY 263762)(PARAM 1.0)(PHON ni linda)
(MORPH n)(SYN ((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (voi ov)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (p linda)))
)
(
(KEY 939412)(PARAM 1.0)(PHON huhugasan)
(MORPH v)(SYN ((((BCAT s)(FEATS (voi dv)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng)))))(SEM (LAM x (LAM y ((wash y) x))))
)
(
(KEY 385267)(PARAM 1.0)(PHON ko)
(MORPH pro)(SYN ((((BCAT s)(FEATS (voi dv)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (voi dv)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (p i)))
)
(
(KEY 46013)(PARAM 1.0)(PHON at)
(MORPH x)(SYN ((((BCAT @X)special)(DIR BS)(MODAL STAR)((BCAT @X)special))(DIR FS)(MODAL STAR)((BCAT @X)special)))(SEM (LAM p (LAM q (LAM x ((and (p x)) (q x))))))
)
(
(KEY 365689)(PARAM 1.0)(PHON pupunasan)
(MORPH v)(SYN ((((BCAT s)(FEATS (voi dv)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng)))))(SEM (LAM x (LAM y ((dry y) x))))
)
(
(KEY 382139)(PARAM 1.0)(PHON mo)
(MORPH pro)(SYN ((((BCAT s)(FEATS (voi dv)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR BS)(MODAL ALL)((((BCAT s)(FEATS (voi dv)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ng))))))(SEM (LAM p (p you)))
)
(
(KEY 586234)(PARAM 1.0)(PHON ang_mga_pinggan)
(MORPH n)(SYN (((BCAT s)(FEATS (voi dv)))(DIR BS)(MODAL ALL)(((BCAT s)(FEATS (voi dv)))(DIR FS)(MODAL ALL)((BCAT np)(FEATS (case ang))))))(SEM (LAM p (p dishes)))
)
;;
;;;;;;;;;; end of bench.py-generated monadic Lisp grammar
)
