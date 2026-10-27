## Nuerisupu
An early prototype of a French-Syntax language for my Science Fiction setting. You can view this for scripting languages, what Esperanto is to conlangs. A language that learns its own intermediate representation and feeding it back into its own intermediate representation generations.

## Using CState
This is a work in progress for showing how aspects of my language would work in my own games.

[Priority Turn Order](https://github.com/LWFlouisa/PriorityTurnOrder/tree/main)

## Greeter
This is a greeter script.

~~~
(enc "Hello World")
~~~

## Clothing Attributes
Measuring attributes of clothing, generates a script, which is parsed by the same interpreter.

~~~
(arc "red" "folded" "large")
~~~

Now navigate to your scripts folder;

~~~
./nuerisupu_script scripts/hairbow_trivia.awa
~~~

And your result:

~~~
[":shape", "le_shape_de_la_archette_est_folded", 0.7483900512804842]
~~~

## Feeding Chickens Rubies
Measuring the size of a chicken to adjust how many Rubies you feed a one.

~~~
(pol "hen" "large" "plump")
(pom "64 carat" "large" "sixteen_oz")
~~~

## Practical Example
~~~
(arc "blue" "folded" "large")
(cor "blue" "belle" "large")
(jup "blue" "folded" "large")
(bas "brown" "trimmed" "petite")
(sab "brown" "chunky" "large")
~~~

~~~
["Le colour de la archette est blue.", "Le shape de la archette est folded.", "Le taille de la archette est large."] 
["Le colour de la corsette est blue.", "Le taille de la corsette est large.", "Le colour de la corsette est blue."] 
["Le colour de le jupe est blue.", "Le taille de le jupe est large.", "Le taille de le jupe est large."] 
["Le colour de le bas est brown.", "Le taille de le bas est petite.", "Le taille de le bas est petite."] 
["Le colour de le sabots de bois est brown.", "Le taille de le sabots de bois  est large.", "Le taille de le sabots de bois  est large."] 
~~~

~~~
./nuerisupu_script scripts/hairbow_trivia.awa && ./nuerisupu_script scripts/corset_trivia.awa && ./nuerisupu_script scripts/skirt_trivia.awa && ./nuerisupu_script scripts/stocking_trivia.awa && ./nuerisupu_script scripts/stocking_trivia.awa
~~~

~~~
[":color", "le_colour_de_la_archette_est_blue", 0.33007205002827134] 
[":size", "le_taille_de_la_corsette_est_large\n", 0.5849843829168194] 
[":shape", "le_shape_de_le_jupe_est_folded", 0.007845389285535043] 
[":size", "le_taille_de_le_bas_est_petite\n", 0.7105706786732486] 
[":color", "le_colour_de_le_bas_est_brown", 0.10739952037779062] 
~~~
