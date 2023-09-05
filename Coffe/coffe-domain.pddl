(define (domain espresso)
  (:requirements :strips :typing :negative-preconditions)

  (:types capsula cafeteira - objeto)

  (:predicates 
               (tem-capsula ?c - cafeteira ?cap - capsula)
               (capsula-usada ?c - cafeteira ?cap - capsula)
               (alguma-capsula ?c - cafeteira)
               (algum-cafe ?c - cafeteira)
               (tem-caneca ?c - cafeteira)
               (cafe-pronto ?c - cafeteira ?cap - capsula))

  (:functions (cafeteira-nivel ?c - cafeteira)
              (cafeteira-capacidade ?c - cafeteira)
              (cafeteira-rate ?c - cafeteira)
              (capsula-cafe ?cap - capsula)
              (capsula-cafe-nivel ?cap - capsula)
              (canecas-livres)
              (cafe-servidos ?cap - capsula)
  ) 


  (:action COLOCARAGUA
    :parameters (?c - cafeteira)
    :precondition (<= (+ (cafeteira-nivel ?c) (cafeteira-rate ?c)) (cafeteira-capacidade ?c))
    :effect (increase (cafeteira-nivel ?c) (cafeteira-rate ?c)))
)