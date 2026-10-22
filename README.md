## Nuerisupu
An early prototype of a French-Syntax language for my Science Fiction setting. You can view this for scripting languages, what Esperanto is to conlangs.

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
