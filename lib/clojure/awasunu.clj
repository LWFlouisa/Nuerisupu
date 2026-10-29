; Writing as string
(defn enc [input] (print input))
(defn encln [input] (println input))

; Writing as data
(defn encpn [input] (prn input))
(defn encpr [input] (pr input))

; Grammar patterns
(defn osv [o s v] (println o s v))
(defn sov [s o v] (println s o v))
(defn vos [v o s] (println v o s))
(defn vso [v s o] (println v s o))

; Compound Grammar
(defn exp [phrase_one phrase_two] (println phrase_one phrase_two))

; List types
(defn pgram [v o s ln] (println ln "=" "[" v ", " o ", " s "]"))
(defn ntupe [v o s ln] (println ln "=" "[" v ", " o ", " s "]"))

; Standard contrastive logic
(defn cette [noun adjective] (println "Cette" noun "c'est" adjective ".\n"))
(defn maisette [noun adjective] (println "Mai cette" noun "c'est" adjective ".\n"))

(defn sinon [noun adjective1 adjective2 adjective3] (println "Sinon cette" noun "n'est" adjective1 "ou" adjective2 ", mais c'est" adjective3))

; Negative constraint logic
(defn ne [first_noun second_noun] (print "Non" first_noun "ou" second_noun))
(defn mais [third_noun] (println third_noun "\n"))

(defn nai [first_noun second_noun] (print "Non" first_noun "ou" second_noun))
(defn shi [third_noun] (println third_noun "\n"))

; Clothing Types
(defn arc [color shape size] (println "Le colour de la archette c'est" color ". Le shape de la archette c'est" shape ". Le size de la archette c'est" size "."))
(defn cor [color shape size] (println "Le colour de la corset c'est" color ". Le shape de la corset c'est" shape ". Le size de la corset c'est" size "."))
(defn jup [color shape size] (println "Le colour de la jupe c'est" color ". Le shape de la jupe c'est" shape ". Le size de la jupe c'est" size "."))
(defn bas [color shape size] (println "Le colour de le bas c'est" color ". Le shape de le bas c'est" shape ". Le size de le bas c'est" size "."))
(defn sab [color shape size] (println "Le colour de le sabots de bois c'est" color ". Le shape de le sabots de bois jupe c'est" shape ". Le size de le sabots de bois c'est" size "."))

; Identity Declaration
(defn genkei [purpose] (println "Je suis un etudient a propos" purpose "."))
(defn musee_comprime [museum] (println "Cette musee comprime" museum "."))
(defn noremodei [remodeled] (println "Cette" remodeled "est ne remode."))

; Identity disolution
(defn neunir [a, b, c] (println "Je ne avoir unif avec" a "avec" b "a" c "."))
(defn nijiko [a, b, c] (println "Vous ne avoir damande moi" a "a propos" b "par" c ".")
(defn nigenkei [a] (println "Je suis ne un etudiant a propos" a "."))

; Investigatif
(defn nom [who] (println "Mes nom est" who "."))
(defn buttai [what] (println "Cette est un / un" what "."))
(defn temps [temps] (println "Le temps est" temps "."))
(defn fukin [where] (println "Je suis en le voisinage de" where "."))
(defn motif [why] (println "Mes raison pour ce est" why "."))
(defn hono [how] (prlint "Mes methode pour le fabrication mes objectif est" how "."))

(defn nenom [who] (println "Mes nom n'est" who "."))
(defn nibuttai [what] (println "Cette n'est un / un" what "."))
(defn netemps [temps] (println "Le temps n'est" temps "."))
(defn nifukin [where] (println "Je ne suis en le voisinage de" where "."))
(defn nemotif [why] (println "Mes raison pour n'est" why "."))
(defn nihono [how] (prlint "Mes methode pour le fabrication mes objectif n'est" how "."))

; Incedent reporting
(defn jiko [method purpose by] (println "Vous avoir demande moi" method "a propos de" purpose "par" by "."))
(defn unir [method_one method_two location] (println "Je avoir un unif avec" method_one "et" method_two "a" location "."))
