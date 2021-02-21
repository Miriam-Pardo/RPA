;Header and description

(define (domain Ambulancia)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle

vehiculo persona localizacion - object

)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here

(ubicacionV ?ambu - vehiculo ?l - localizacion) ; posición de la ambulancia
(enlace ?l1 - localizacion ?l2 - localizacion) ; enlace entre las ubicaciones a recorrer
(ubicacionP ?paci - persona ?loc - localizacion) ; posición del paciente
(pasajero ?paci - persona ?ambu - vehiculo)
(sin-pasajero ?ambu - vehiculo)

)

;define actions here
(:action Conducir
    :parameters (?ambu - vehiculo ?posicionOrigen ?posicionDestino - localizacion)
    :precondition (and 
    (ubicacionV ?ambu ?posicionOrigen)
    (enlace ?posicionOrigen ?posicionDestino)
    )
    :effect (and 
    (not (ubicacionV ?ambu ?PosicionOrigen))
    (ubicacionV ?ambu ?posicionDestino)
    )
)

(:action Subir
    :parameters (?paci - persona ?ambu - vehiculo ?posicionOrigen - localizacion)
    :precondition (and 
    (ubicacionV ?ambu ?posicionOrigen)
    (ubicacionP ?paci ?posicionOrigen)
    (sin-pasajero ?ambu)
    )
    :effect (and 
    (not (ubicacionP ?paci ?PosicionOrigen))
    (not (sin-pasajero ?ambu))
    (pasajero ?paci ?ambu)
    )
)

(:action Bajar
    :parameters (?paci - persona ?ambu - vehiculo ?posicionDestino - localizacion)
    :precondition (and 
    (ubicacionV ?ambu ?posicionDestino)
    (pasajero ?paci ?ambu)
    )
    :effect (and 
    (not (pasajero ?paci ?ambu))
    (ubicacionP ?paci ?posicionDestino)
    (sin-pasajero ?ambu)
    )
)

)