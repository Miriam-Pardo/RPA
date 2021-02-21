(define (problem Problema3) (:domain Ambulancia)
(:objects 

ambulancia1 - vehiculo
ambulancia2 - vehiculo
paciente1 - persona
paciente2 - persona
paciente3 - persona
paciente4 - persona
l1 - localizacion
l2 - localizacion
l3 - localizacion
l4 - localizacion
l5 - localizacion
l6 - localizacion
l7 - localizacion
l8 - localizacion
l9 - localizacion

)

(:init
    ;todo: put the initial state's facts and numeric values here
    (ubicacionV ambulancia1 l1)
    (ubicacionV ambulancia2 l1)
    (enlace l1 l2)
    (enlace l2 l1)
    (enlace l2 l3)
    (enlace l3 l2)
    (enlace l3 l6)
    (enlace l6 l5)
    (enlace l5 l6)
    (enlace l6 l5)
    (enlace l5 l4)
    (enlace l4 l5)
    (enlace l4 l1)
    (enlace l1 l4)
    (enlace l4 l7)
    (enlace l7 l4)
    (enlace l7 l8)
    (enlace l8 l7)
    (enlace l8 l9)
    (enlace l9 l8)
    (enlace l9 l6)
    (enlace l6 l9)
    (enlace l2 l5)
    (enlace l5 l2)
    (enlace l5 l8)
    (enlace l8 l5)
    (ubicacionP paciente1 l3)
    (ubicacionP paciente2 l5)
    (ubicacionP paciente3 l7)
    (ubicacionP paciente4 l9)
    (sin-pasajero ambulancia1)
    (sin-pasajero ambulancia2)
)

(:goal (and
    ;todo: put the goal condition here
    (ubicacionP paciente1 l1)
    (ubicacionP paciente2 l1)
    (ubicacionP paciente3 l1)
    (ubicacionP paciente4 l1)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
