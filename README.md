# Explicación TP 5: Ruby on Rails
[![Run on Repl.it](https://repl.it/badge/github/TTPS-ruby/ejemplo-rails)](https://repl.it/github/TTPS-ruby/ejemplo-rails)
## App de ejemplo

Debemos implementar una aplicación web simple para llevar el libro de quejas
on-line de un negocio de venta de indumentaria femenina llamado "Rosita rococó".

La idea es que los visitantes (o clientes, como gusten llamarlos) tienen a su
disposición un libro de quejas virtual que les permite descargar sus más oscuros
pensamientos y rencores para con el negocio.

Los visitantes ingresarán desde un link externo a nuestra aplicación y tendrán
automáticamente la posibilidad de leer las publicaciones de los últimos 3 días y
un formulario para cargar su mensaje.

Nos han pedido que impongamos algunas restricciones a las publicaciones, a saber:

* Cada publicación debe estar asociada a un email.
* El mismo email no puede hacer dos publicaciones en el mismo día.
* El texto debe tener al menos 10 caracteres, pero no más de 500.
* En toda publicación debe indicarse qué vendedor atendió a quien la escribe.
