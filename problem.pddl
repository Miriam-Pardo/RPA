(define (problem Problema1) (:domain Ambulancia)
(:objects 

ambulancia - vehiculo
paciente1 - persona
paciente2 - persona
l1 - localizacion
l2 - localizacion
l3 - localizacion
l4 - localizacion

)

(:init
    ;todo: put the initial state's facts and numeric values here
    (ubicacionV ambulancia l1)
    (enlace l1 l2)
    (enlace l2 l1)
    (enlace l2 l4)
    (enlace l4 l2)
    (enlace l4 l3)
    (enlace l3 l4)
    (ubicacionP paciente1 l4)
    (ubicacionP paciente2 l3)
    (sin-pasajero ambulancia)
)

(:goal (and
    ;todo: put the goal condition here
    (ubicacionP paciente1 l1)
    (ubicacionP paciente2 l1)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
