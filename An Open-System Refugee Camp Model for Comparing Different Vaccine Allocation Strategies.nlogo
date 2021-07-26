globals [
  cum-infected-vaccinated
  cum-asymptomatic-vaccinated-hosts
  cum-asymptomatic-vaccinated-rohingyas
  cum-asymptomatic-vaccinated
  cum-asymptomatic-vaccinated-D
  cum-recovered-vaccinated
  Minute ;X
  Hour;X
  Day;X
  Day?;X
  Day-of-the-week;X
  Week
  random-day
  measure-inside-camp-market
  facilities          ; the agent set of all types of facilties
  numtents                   ; total number of Rohingya shelter tents
  shelters
  initial-number-of-tents
  initial-number-of-hosts
  populations                              ; an agent-set with both rohingyas and hosts
  food-delivery-day
  entry-point-openness                     ; "open" / "partially open" / "closed"
  infectious-distance                      ; within 1.5 meter distance an individual risks to become infected from infectious other
  transmission-force-children-rohingya
  transmission-force-young-adults-rohingya
  transmission-force-older-adults-rohingya
  transmission-force-elderly-rohingya
  transmission-force-young-adults-bangladeshi
  transmission-force-older-adults-bangladeshi
  transmission-force-elderly-bangladeshi
  Initially-infected-hosts
  Initially-infected-Rohingyas
  capacity-vicinity-market-today
  capacity-in-camp-market-today
  capacity-in-camp-facility-today
  vaccine-efficiacy-exp

  ; Population Rohingyas
  numrohingyas
  number_children
  number_young_adults
  number_older_adults
  number_elderly

  ; Population Hosts:
  numhosts
  number_children_hosts
  number_youngeradults_hosts
  number_olderadults_hosts
  number_elderly_hosts

  ; Total Population
  Population-total
  Population-total-children
  Population-total-YA
  Population-total-OA
  Population-total-eld

  ; INTERACTIONS
  cum-interactions
  cum-interactions-rohingyas
  cum-interactions-hosts

  cum-interactions-at-in-camp-market
  cum-interactions-at-vicinity-market
  cum-rohingyas-at-in-camp-facilities

  cum-hosts-at-vicinity-market
  cum-hosts-at-in-camp-market
  cum-rohingyas-at-vicinity-market
  cum-rohingyas-at-in-camp-market

  cum-hosts-at-vicinity-market-D
  cum-hosts-at-in-camp-market-D
  cum-rohingyas-at-vicinity-market-D
  cum-rohingyas-at-in-camp-market-D

  cum-interactions-D
  cum-interactions-rohingyas-D
  cum-interactions-hosts-D

  cum-interactions-at-in-camp-market-D
  cum-interactions-at-vicinity-market-D
  cum-rohingyas-at-in-camp-facilities-D


  ;INFECTIONS
  cum-daily-infected-today
  cum-daily-infected-yesterday
  R-list
  weekly-R

  cum-susceptible

  cum-infections-week0
  cum-infections-week1
  cum-infections-week2
  cum-infections-week3
  cum-infections-week4
  cum-infections-week5

  ;VACCINES:
  cum-vaccinated                     cum-vaccinated-rohingyas                 cum-vaccinated-hosts
  cum-vaccinated-children            cum-vaccinated-young-adults              cum-vaccinated-older-adults            cum-vaccinated-elderly
  cum-vaccinated-hosts-children      cum-vaccinated-hosts-young-adults        cum-vaccinated-hosts-older-adults      cum-vaccinated-hosts-elderly
  cum-vaccinated-rohingyas-children  cum-vaccinated-rohingyas-young-adults    cum-vaccinated-rohingyas-older-adults  cum-vaccinated-rohingyas-elderly

  ;CURRELY INFECTED PEOPLE

  current-infected-roh
  current-infected-host
  current-infected
  current-infected-children
  current-infected-ya
  current-infected-oa
  current-infected-elderly

  current-exposed
  current-exposed-roh
  current-exposed-host
  current-exposed-children
  current-exposed-ya
  current-exposed-oa
  current-exposed-elderly

; EXPOSES

  cum-exposed
  cum-exposed-rohingyas
  cum-exposed-hosts
  cum-exposed-children
  cum-exposed-ya
  cum-exposed-oa
  cum-exposed-eld

  cum-exposed-D
  cum-exposed-rohingyas-D
  cum-exposed-hosts-D
  cum-exposed-children-D
  cum-exposed-ya-D
  cum-exposed-oa-D
  cum-exposed-eld-D

  ; ASYMPTOMATIC
  cum-asymptomatic
  cum-asymptomatic-rohingyas
  cum-asymptomatic-hosts
  cum-asymptomatic-children
  cum-asymptomatic-ya
  cum-asymptomatic-oa
  cum-asymptomatic-eld

  cum-asymptomatic-D
  cum-asymptomatic-rohingyas-D
  cum-asymptomatic-hosts-D
  cum-asymptomatic-children-D
  cum-asymptomatic-ya-D
  cum-asymptomatic-oa-D
  cum-asymptomatic-eld-D

  current-asymp
  current-asymp-roh
  current-asymp-host
  current-asymp-children
  current-asymp-ya
  current-asymp-oa
  current-asymp-elderly

  perc-asymp
  perc-asymp-hosts
  perc-asymp-rohingyas
  perc-asymp-children
  perc-asymp-ya
  perc-asymp-oa
  perc-asymp-eld

  ;SYMPTOMATIC
  cum-symptomatic
  cum-symptomatic-rohingyas
  cum-symptomatic-hosts
  cum-symptomatic-children
  cum-symptomatic-ya
  cum-symptomatic-oa
  cum-symptomatic-eld

  cum-symptomatic-D
  cum-symptomatic-rohingyas-D
  cum-symptomatic-hosts-D
  cum-symptomatic-children-D
  cum-symptomatic-ya-D
  cum-symptomatic-oa-D
  cum-symptomatic-eld-D

  current-symp
  current-symp-roh
  current-symp-host
  current-symp-children
  current-symp-ya
  current-symp-oa
  current-symp-elderly

  perc-symp
  perc-symp-hosts
  perc-symp-rohingyas
  perc-symp-children
  perc-symp-ya
  perc-symp-oa
  perc-symp-eld

  ; SEVERE
  cum-severely-symptomatic
  cum-severely-symptomatic-hosts
  cum-severely-symptomatic-rohingyas
  cum-severely-symptomatic-children
  cum-severely-symptomatic-ya
  cum-severely-symptomatic-oa
  cum-severely-symptomatic-eld

  cum-severely-symptomatic-D
  cum-severely-symptomatic-hosts-D
  cum-severely-symptomatic-rohingyas-D
  cum-severely-symptomatic-children-D
  cum-severely-symptomatic-ya-D
  cum-severely-symptomatic-oa-D
  cum-severely-symptomatic-eld-D

  perc-sev-symp
  perc-sev-symp-hosts
  perc-sev-symp-rohingyas
  perc-sev-symp-children
  perc-sev-symp-ya
  perc-sev-symp-oa
  perc-sev-symp-eld

  ; CRITICAL:::
  cum-critically-symptomatic
  cum-critically-symptomatic-hosts
  cum-critically-symptomatic-rohingyas
  cum-critically-symptomatic-children
  cum-critically-symptomatic-ya
  cum-critically-symptomatic-oa
  cum-critically-symptomatic-eld

  cum-critically-symptomatic-D
  cum-critically-symptomatic-hosts-D
  cum-critically-symptomatic-rohingyas-D
  cum-critically-symptomatic-children-D
  cum-critically-symptomatic-ya-D
  cum-critically-symptomatic-oa-D
  cum-critically-symptomatic-eld-D

  perc-crit-symp
  perc-crit-symp-hosts
  perc-crit-symp-rohingyas
  perc-crit-symp-children
  perc-crit-symp-ya
  perc-crit-symp-oa
  perc-crit-symp-eld

; RECOVERED:::

  cum-recovered
  cum-recovered-rohingyas
  cum-recovered-hosts
  cum-recovered-children
  cum-recovered-ya
  cum-recovered-oa
  cum-recovered-eld

  cum-recovered-D
  cum-recovered-rohingyas-D
  cum-recovered-hosts-D
  cum-recovered-children-D
  cum-recovered-ya-D
  cum-recovered-oa-D
  cum-recovered-eld-D

  current-recovered
  current-recovered-roh
  current-recovered-host
  current-recovered-children
  current-recovered-ya
  current-recovered-oa
  current-recovered-elderly

; DEAD:::

  cum-dead
  cum-dead-rohingyas
  cum-dead-hosts
  cum-dead-children
  cum-dead-ya
  cum-dead-oa
  cum-dead-eld

  cum-dead-D
  cum-dead-rohingyas-D
  cum-dead-hosts-D
  cum-dead-children-D
  cum-dead-ya-D
  cum-dead-oa-D
  cum-dead-eld-D

  current-dead
  current-dead-roh
  current-dead-host
  current-dead-children
  current-dead-ya
  current-dead-oa
  current-dead-elderly

  ; For queueing:
  patch-length ;X
  patch-capacity ;X
  queue-distance ;X
  spending-time-hour
  spending-time-minute

  ; COVID-19 vaccines:
  available-vaccines  ;X
  available-vaccines-children ;X
  available-vaccines-young-adults ;X
  available-vaccines-older-adults ;X
  available-vaccines-elderly ;X

  current-exposed-D
  current-asymptomatic-D
  current-symptomatic-D
  current-severly-symptomatic-D
  current-critically-symptomatic-D
  ;current-dead-D
  ;current-recovered-D

  ;KPIs

  cum-infections-vicinity-market
  cum-infections-incamp-markets
  cum-infections-incamp-facilities

  cum-infections-vicinity-market-D
  cum-infections-incamp-markets-D
  cum-infections-incamp-facilities-D

  ;sub kpis

  cum-infected-rohingyas
  cum-infected-hosts
  cum-infected
  cum-infected-children
  cum-infected-ya
  cum-infected-oa
  cum-infected-eld

  cum-infected-D
  cum-infected-rohingyas-D
  cum-infected-hosts-D
  cum-infected-children-D
  cum-infected-ya-D
  cum-infected-oa-D
  cum-infected-eld-D

]

breed [tents tent]
breed [in-camp-markets in-camp-market]
breed [vicinity-markets vicinity-market]
breed [hosts host]
breed [in-camp-facilities in-camp-facility]

in-camp-markets-own [waiting-list serving-time initial-serving-time permission capacity-in-camp-market]
vicinity-markets-own [waiting-list serving-time initial-serving-time location permission capacity-vicinity-market]
in-camp-facilities-own [waiting-list serving-time initial-serving-time location permission capacity-in-camp-facility ]

tents-own[
  myhome
  household
  householdsize               ; householdsizes for Rohingyas are mostly consist of 6 people, but 5 or 7 people are considered as well
  walker?                     ; indicates this agent is an individual executing an activity and represents a household
  in-household
  vaccinated-household                   ; a list with individuals who are vaccinated in one household
  sick-household                         ; a list with individuals who are sick in one household
  infected?                              ; true / false
  new-vaccinated-household
  infection-stage                        ; "susceptible" / "exposed/infected" / "symtomatic" / "asymptomatic" / "recovered" / "dead" / "vaccinated"
  next-infection-stage                   ; one of the above, following from previous
  time-until-next-infection-stage        ; From exposed -> (a)symptomatic = incubation-time. From asymptomatic -> recovered = recovery-time. From symptomatic -> recovered/dead = recovery-time-symptomatic.
  stay-home-compliance                   ; yes/no (determines whether a household would isolate a sick person or not)
  vaccinated-household
  destination-when-I-was-infected
  can-i-get-infected-home?
  can-i-get-infected-by-someone?
  can-i-get-vaccinated-pop
  am-i-immune?
  rohingya-market-day             ; day of the week this rohingya individual goes to the market
  rohingya-market-to-home-day
  market-time-hour                ; time this rohingya individual schedules  to the market
  rohingya-home-time-hour
  rohingya-home-time-minute
  permission
  in-camp-hour
  ;in-camp-minute
  in-camp-time
  vicinity-day
  vicinity-time
  shop-day
  shopping-time
  market_destination    ; determines if the walker goes to an in-camp market or to a vicinity market
  destination-child     ; myhome / at school / none
  destination           ; myhome / facility / none
  my-age
  my-population            ; a rohingya
  occupancy
  queue-time
  compliant-to-stay-home?
  compliant-to-wear-mask?
  vaccinated?
  mask-effect
  lockdown-compliance
  place-of-infection
  do-I-get-infected?
  transmission-F
  contact-rate
  infection-chance
  cur-location
  my-vaccine-efficiacy

]

hosts-own[
  myhome
  my-age
  my-population                      ; a bangladeshi
  host-market-day                  ; day of the week this host individual goes to the market
  host-market-day2
  market-time-hour                 ; time this host individual schedules  to the market
  host-home-time-hour
  host-home-time-minute
  market_destination               ; determines if the walker goes to an in-camp market or to a vicinity market
  permission
  walker?                          ; if yes, host is inside the camp. If no, host is not in the camp.
  destination                      ; determines where a host goes
  occupancy
  queue-time
  vicinity-day  ; 3 times per week
  vicinity-time ; 5, 10, 15 or 20 minutes
  shop-day      ;
  shopping-time
  infected?
  infection-stage
  next-infection-stage                   ; one of the above, following from previous
  time-until-next-infection-stage        ; From exposed -> (a)symptomatic = incubation-time. From asymptomatic -> recovered = recovery-time. From symptomatic -> recovered/dead = recovery-time-symptomatic.
  destination-when-I-was-infected
  vaccinated?
  compliant-to-stay-home?
  compliant-to-wear-mask?
  can-i-get-infected-by-someone?
  can-i-get-vaccinated-pop
  am-i-immune?
  time-until-reinfectious
  mask-effect
  lockdown-compliance
  place-of-infection
  do-I-get-infected?
  transmission-F
  contact-rate
  infection-chance
  cur-location
  my-vaccine-efficiacy
]

to setup
  clear-all ;X
  reset-ticks ;X
  set Day? False ;X
  set Day-of-the-week 1 ;X
  set Day 1
  set Week 0
  create-environment ;X
  create-rohingyashelters ;X
  create-host-community ;X
  ifelse Type-of-compliance = "no" [set Compliance-included? "no"][set Compliance-included? "yes"]
  set shelters turtle-set [self] of tents ;X
  set populations (turtle-set tents hosts)
  set patch-length 4.77 ;X
  set patch-capacity 90 ;X
  set queue-distance 2 / patch-length ; * (precision (1.5 - random-float(1)) 1)) ;SENSITIVITY
  set infectious-distance 1.5 / patch-length
  set-transmission-force

  if vaccine-efficiacy = 0.5 [set vaccine-efficiacy-exp "50%"]
  if vaccine-efficiacy = 0.6 [set vaccine-efficiacy-exp "60%"]
  if vaccine-efficiacy = 0.7 [set vaccine-efficiacy-exp "70%"]
  if vaccine-efficiacy = 0.8 [set vaccine-efficiacy-exp "80%"]
  if vaccine-efficiacy = 0.9 [set vaccine-efficiacy-exp "90%"]
  if vaccine-efficiacy = 1.0 [set vaccine-efficiacy-exp "100%"]
  ;print()

  let capacity 450
  set capacity-vicinity-market-today capacity - (capacity * (0.1 * strictness-of-conditional-lockdown))
  let capacity2 220
  set capacity-in-camp-market-today capacity2 - (capacity2 * (0.1 * strictness-of-conditional-lockdown))

  determine-first-batch-of-vaccines
  ask populations [ ifelse sensitivity-analysis? [set mask-effect 0.5 * (precision (1.5 - random-float(1)) 1)] [set mask-effect 0.5]]
  count-roh-pop

  setup-initial-covid-19-infections
  set Lockdown-type Lockdown-type
  set Camp-openness-policy Camp-openness-policy

  determine-I-i-can-enter-a-market-or-facility
  close-camp-for-host-community
  set-compliance-to-stay-home-if-symptomatic
  set cum-susceptible cum-susceptible + count(hosts with [infection-stage = "susceptible"])
  set R-list []
  set random-day random(7) + 1
  determine-population-data
end

;;;;;;;;;;;;;;;;; KPIs;;;;;;;;;;;;;;;;;;;;;;;

to-report vaccination-coverage

  ;population:
  let rohingya_pop (number_elderly + number_older_adults + number_young_adults + number_children)
  let bangladesh_pop numhosts
  let total_pop (rohingya_pop + bangladesh_pop)
  let vaccinated-hosts hosts with [vaccinated? = true]
  let vaccinated_pop (cum-vaccinated-rohingyas + count(vaccinated-hosts))

  ; vaccinated percentage:
  let vaccination-coverage-percentage (vaccinated_pop / total_pop * 100)
  report precision vaccination-coverage-percentage 2
end

to-report recovered-percentage
 ; populaton
  let rohingya_pop (number_elderly + number_older_adults + number_young_adults + number_children)
  let bangladesh_pop numhosts
  let total_pop (rohingya_pop + bangladesh_pop)

  let current-vaccination-coverage vaccination-coverage
  let current-immunity-coverage_pop cum-recovered

  let current-immunity-coverage-percentage (current-immunity-coverage_pop / total_pop * 100)
  report precision current-immunity-coverage-percentage 2
end

to-report group-immunity
 let immune recovered-percentage
 let vaccinated vaccination-coverage
 report precision (vaccinated + immune) 2
end


to set-daily-kpis-to-zero
  if Day? = false and Hour = 20 and Minute = 35 [

 ;;;; KPI 1: INFECTIONS ;;;;

  ; Per Age Group, Type of Infection and Population:

  ; TOTAL INFECTIONS:
  set cum-infected-rohingyas-D cum-infected-rohingyas
  set cum-infected-hosts-D cum-infected-hosts
  set cum-infected-D cum-infected
  set cum-infected-children-D cum-infected-children
  set cum-infected-ya-D cum-infected-ya
  set cum-infected-oa-D cum-infected-oa
  set cum-infected-eld-D cum-infected-eld

  ; EXPOSES
  set cum-exposed-D cum-exposed
  set cum-exposed-rohingyas-D cum-exposed-rohingyas
  set cum-exposed-hosts-D cum-exposed-hosts
  set cum-exposed-children-D cum-exposed-children
  set cum-exposed-ya-D cum-exposed-ya
  set cum-exposed-oa-D cum-exposed-oa
  set cum-exposed-eld-D cum-exposed-eld

  ; ASYMPTOMATIC INFECTIONS
  set cum-asymptomatic-vaccinated-D cum-asymptomatic-vaccinated
  set cum-asymptomatic-D   cum-asymptomatic
  set cum-asymptomatic-rohingyas-D  cum-asymptomatic-rohingyas
  set cum-asymptomatic-hosts-D  cum-asymptomatic-hosts
  set cum-asymptomatic-children-D    cum-asymptomatic-children
  set cum-asymptomatic-ya-D  cum-asymptomatic-ya
  set cum-asymptomatic-oa-D   cum-asymptomatic-oa
  set cum-asymptomatic-eld-D  cum-asymptomatic-eld

  ; SYMPTOMATIC INFECTIONS
  set cum-symptomatic-D cum-symptomatic
  set cum-symptomatic-rohingyas-D cum-symptomatic-rohingyas
  set cum-symptomatic-hosts-D cum-symptomatic-hosts
  set cum-symptomatic-children-D cum-symptomatic-children
  set cum-symptomatic-ya-D  cum-symptomatic-ya
  set cum-symptomatic-oa-D  cum-symptomatic-oa
  set cum-symptomatic-eld-D cum-symptomatic-eld

  ; SEVERE INFECTIONS

  set cum-severely-symptomatic-D cum-severely-symptomatic
  set cum-severely-symptomatic-hosts-D cum-severely-symptomatic-hosts
  set cum-severely-symptomatic-rohingyas-D cum-severely-symptomatic-rohingyas
  set cum-severely-symptomatic-children-D cum-severely-symptomatic-children
  set cum-severely-symptomatic-ya-D cum-severely-symptomatic-ya
  set cum-severely-symptomatic-oa-D cum-severely-symptomatic-oa
  set cum-severely-symptomatic-eld-D cum-severely-symptomatic-eld

  ; CRITICAL INFECTIONS

  set cum-critically-symptomatic-D cum-critically-symptomatic
  set cum-critically-symptomatic-hosts-D cum-critically-symptomatic-hosts
  set cum-critically-symptomatic-rohingyas-D cum-critically-symptomatic-rohingyas
  set cum-critically-symptomatic-children-D cum-critically-symptomatic-children
  set cum-critically-symptomatic-ya-D cum-critically-symptomatic-ya
  set cum-critically-symptomatic-oa-D cum-critically-symptomatic-oa
  set cum-critically-symptomatic-eld-D cum-critically-symptomatic-eld

  ; RECOVERIES
  set cum-recovered-D   cum-recovered
  set cum-recovered-rohingyas-D cum-recovered-rohingyas
  set cum-recovered-hosts-D cum-recovered-hosts
  set cum-recovered-children-D cum-recovered-children
  set cum-recovered-ya-D cum-recovered-ya
  set cum-recovered-oa-D cum-recovered-oa
  set cum-recovered-eld-D cum-recovered-eld


  ; DEATHS
  set cum-dead-D  cum-dead
  set cum-dead-rohingyas-D  cum-dead-rohingyas
  set cum-dead-hosts-D cum-dead-hosts
  set cum-dead-children-D cum-dead-children
  set cum-dead-ya-D cum-dead-ya
  set cum-dead-oa-D cum-dead-oa
  set cum-dead-eld-D cum-dead-eld

  ; Per Location:
  set cum-infections-vicinity-market-D cum-infections-vicinity-market
  set cum-infections-incamp-markets-D cum-infections-incamp-markets
  set cum-infections-incamp-facilities-D cum-infections-incamp-facilities

  ; current:
  set current-exposed-D count populations with [infection-stage = "exposed"]
  set current-asymptomatic-D count populations with [infection-stage = "asymptomatic"]
  set current-symptomatic-D count populations with [infection-stage = "symptomatic"]
  set current-severly-symptomatic-D count populations with [infection-stage = "severely symptomatic"]
  set current-critically-symptomatic-D count populations with [infection-stage = "critically symptomatic"]


;;; KPI 2: INTERACTIONS

  set cum-interactions-rohingyas-D cum-interactions-rohingyas
  set cum-interactions-hosts-D cum-interactions-hosts
  set cum-interactions-D cum-interactions

  set cum-hosts-at-vicinity-market-D  cum-hosts-at-vicinity-market
  set cum-hosts-at-in-camp-market-D cum-hosts-at-in-camp-market
  set cum-rohingyas-at-vicinity-market-D cum-rohingyas-at-vicinity-market
  set cum-rohingyas-at-in-camp-market-D  cum-rohingyas-at-in-camp-market

  set cum-interactions-at-in-camp-market-D cum-interactions-at-in-camp-market
  set cum-interactions-at-vicinity-market-D cum-interactions-at-vicinity-market
  set cum-rohingyas-at-in-camp-facilities-D cum-rohingyas-at-in-camp-facilities

  ]

end

to update-kpi
  set cum-interactions cum-interactions-rohingyas + cum-interactions-hosts
  set cum-infected cum-asymptomatic-rohingyas + cum-asymptomatic-hosts + cum-symptomatic-rohingyas + cum-symptomatic-hosts
  set cum-exposed cum-exposed-rohingyas + cum-exposed-hosts

  set cum-interactions-at-in-camp-market cum-hosts-at-in-camp-market + cum-rohingyas-at-in-camp-market
  set cum-interactions-at-vicinity-market cum-hosts-at-vicinity-market + cum-rohingyas-at-vicinity-market

; INFECTIONS PER AGE:
  set cum-infected-children cum-asymptomatic-children + cum-symptomatic-children + cum-severely-symptomatic-children + cum-critically-symptomatic-children
  set cum-infected-ya cum-asymptomatic-ya + cum-symptomatic-ya + cum-severely-symptomatic-ya + cum-critically-symptomatic-ya
  set cum-infected-oa cum-asymptomatic-oa + cum-symptomatic-oa + cum-severely-symptomatic-oa + cum-critically-symptomatic-oa
  set cum-infected-eld cum-asymptomatic-eld + cum-symptomatic-eld + cum-severely-symptomatic-eld + cum-critically-symptomatic-eld

;INFECTED:
  set current-infected-roh count tents with [infected? = true]
  set current-infected-host count hosts with [infected? = true]
  set current-infected current-infected-host + current-infected-roh

  set current-infected-children count tents with [infected? = true] + count hosts with [infected? = true]
  set current-infected-ya       count tents with [infected? = true] + count hosts with [infected? = true]
  set current-infected-oa       count tents with [infected? = true] + count hosts with [infected? = true]
  set current-infected-elderly count tents with [infected? = true] + count hosts with [infected? = true]


; EXPOSED:
  set current-exposed-roh count tents with [infection-stage = "exposed"]
  set current-exposed-host count hosts with [infection-stage = "exposed"]
  set current-exposed current-exposed-host + current-exposed-roh

  set current-exposed-children count tents with [infection-stage = "exposed" and my-age = "child"] + count hosts with [infection-stage = "exposed" and my-age = "child"]
  set current-exposed-ya       count tents with [infection-stage = "exposed" and my-age = "young adult"] + count hosts with [infection-stage = "exposed" and my-age = "young adult"]
  set current-exposed-oa       count tents with [infection-stage = "exposed" and my-age = "older adult"] + count hosts with [infection-stage = "exposed" and my-age = "older adult"]
  set current-exposed-elderly count tents with [infection-stage = "exposed" and my-age = "elderly"] + count hosts with [infection-stage = "exposed" and my-age = "elderly"]

; ASYMP
  set current-asymp-roh count tents with [infection-stage = "asymptomatic"]
  set current-asymp-host count hosts with [infection-stage = "asymptomatic"]
  set current-asymp current-asymp-host + current-asymp-roh

  set current-asymp-children count tents with [infection-stage = "asymptomatic" and my-age = "child"] + count hosts with [infection-stage = "asymptomatic" and my-age = "child"]
  set current-asymp-ya       count tents with [infection-stage = "asymptomatic" and my-age = "young adult"] + count hosts with [infection-stage = "asymptomatic" and my-age = "young adult"]
  set current-asymp-oa       count tents with [infection-stage = "asymptomatic" and my-age = "older adult"] + count hosts with [infection-stage = "asymptomatic" and my-age = "older adult"]
  set current-asymp-elderly count tents with [infection-stage = "asymptomatic" and my-age = "elderly"] + count hosts with [infection-stage = "asymptomatic" and my-age = "elderly"]

  set perc-asymp             precision (cum-asymptomatic / Population-total * 100) 2
  set perc-asymp-hosts       precision (cum-asymptomatic-hosts / numhosts * 100) 2
  set perc-asymp-rohingyas   precision (cum-asymptomatic-rohingyas / numrohingyas * 100) 2
  set perc-asymp-children    precision (cum-asymptomatic-children / Population-total-children * 100) 2
  set perc-asymp-ya          precision (cum-asymptomatic-ya / Population-total-YA * 100) 2
  set perc-asymp-oa          precision (cum-asymptomatic-oa  / Population-total-OA * 100) 2
  set perc-asymp-eld         precision (cum-asymptomatic-eld / Population-total-eld * 100) 2


; SYMP
  set current-symp-roh count tents with [infection-stage = "symptomatic"]
  set current-symp-host count hosts with [infection-stage = "symptomatic"]
  set current-symp current-symp-host + current-symp-roh

  set perc-symp             precision (cum-symptomatic / Population-total * 100) 2
  set perc-symp-hosts       precision (cum-symptomatic-hosts / numhosts * 100) 2
  set perc-symp-rohingyas   precision (cum-symptomatic-rohingyas / numrohingyas * 100) 2
  set perc-symp-children    precision (cum-symptomatic-children / Population-total-children * 100) 2
  set perc-symp-ya          precision (cum-symptomatic-ya / Population-total-YA * 100) 2
  set perc-symp-oa          precision (cum-symptomatic-oa  / Population-total-OA * 100) 2
  set perc-symp-eld         precision (cum-symptomatic-eld / Population-total-eld * 100) 2

  set current-symp-children count tents with [infection-stage = "symptomatic" and my-age = "child"] + count hosts with [infection-stage = "symptomatic" and my-age = "child"]
  set current-symp-ya       count tents with [infection-stage = "symptomatic" and my-age = "young adult"] + count hosts with [infection-stage = "symptomatic" and my-age = "young adult"]
  set current-symp-oa       count tents with [infection-stage = "symptomatic" and my-age = "older adult"] + count hosts with [infection-stage = "symptomatic" and my-age = "older adult"]
  set current-symp-elderly count tents with [infection-stage = "symptomatic" and my-age = "elderly"] + count hosts with [infection-stage = "symptomatic" and my-age = "elderly"]

; SEVERE

  set perc-sev-symp            precision (cum-severely-symptomatic / Population-total * 100) 2
  set perc-sev-symp-hosts       precision (cum-severely-symptomatic-hosts / numhosts * 100) 2
  set perc-sev-symp-rohingyas   precision (cum-severely-symptomatic-rohingyas / numrohingyas * 100) 2
  set perc-sev-symp-children   precision (cum-severely-symptomatic-children / Population-total-children * 100) 2
  set perc-sev-symp-ya          precision (cum-severely-symptomatic-ya / Population-total-YA * 100) 2
  set perc-sev-symp-oa         precision (cum-severely-symptomatic-oa  / Population-total-OA * 100) 2
  set perc-sev-symp-eld        precision (cum-severely-symptomatic-eld / Population-total-eld * 100) 2

; CRITICAL

  set perc-crit-symp            precision (cum-critically-symptomatic / Population-total * 100) 2
  set perc-crit-symp-hosts       precision (cum-critically-symptomatic-hosts / numhosts * 100) 2
  set perc-crit-symp-rohingyas   precision (cum-critically-symptomatic-rohingyas / numrohingyas * 100) 2
  set perc-crit-symp-children   precision (cum-critically-symptomatic-children / Population-total-children * 100) 2
  set perc-crit-symp-ya          precision (cum-critically-symptomatic-ya / Population-total-YA * 100) 2
  set perc-crit-symp-oa         precision (cum-critically-symptomatic-oa  / Population-total-OA * 100) 2
  set perc-crit-symp-eld        precision (cum-critically-symptomatic-eld / Population-total-eld * 100) 2


; RECOVERED
  set current-recovered-roh count tents with [infection-stage = "recovered"]
  ;set current-recovered-host count hosts with [infection-stage = "recovered"]

  set current-recovered current-recovered-host + current-recovered-roh

  set current-recovered-children count tents with [infection-stage = "recovered" and my-age = "child"] + count hosts with [infection-stage = "recovered" and my-age = "child"]
  set current-recovered-ya       count tents with [infection-stage = "recovered" and my-age = "young adult"] + count hosts with [infection-stage = "recovered" and my-age = "young adult"]
  set current-recovered-oa       count tents with [infection-stage = "recovered" and my-age = "older adult"] + count hosts with [infection-stage = "recovered" and my-age = "older adult"]
  set current-recovered-elderly count tents with [infection-stage = "recovered" and my-age = "elderly"] + count hosts with [infection-stage = "recovered" and my-age = "elderly"]

; DEAD
  set current-dead-roh count tents with [infection-stage = "dead"]
  set current-dead-host count hosts with [infection-stage = "dead"]
  set current-dead current-dead-host + current-dead-roh

  set current-dead-children count tents with [infection-stage = "dead" and my-age = "child"] + count hosts with [infection-stage = "dead" and my-age = "child"]
  set current-dead-ya       count tents with [infection-stage = "dead" and my-age = "young adult"] + count hosts with [infection-stage = "dead" and my-age = "young adult"]
  set current-dead-oa       count tents with [infection-stage = "dead" and my-age = "older adult"] + count hosts with [infection-stage = "dead" and my-age = "older adult"]
  set current-dead-elderly count tents with [infection-stage = "dead" and my-age = "elderly"] + count hosts with [infection-stage = "dead" and my-age = "elderly"]


end

; ENVIRONMENT

to create-environment
  ask patches with [(pxcor >= max-pxcor ) or (pxcor <= min-pxcor + 1) or (pycor >= max-pycor - 1) or (pycor <= min-pycor + 1) or pycor = 0 or pycor = 1 or pycor = -1] [set pcolor white]
  let half (max-pycor / 2) ; adapted from pxcor to pycor
  ask patches with [(pxcor > floor half) and (pxcor < floor max-pxcor) and (pycor < floor max-pycor - 1) and (pycor > floor min-pycor + 1 )] [set pcolor brown]
  create-facilities
end

to create-facilities

  create-vicinity-markets 1 [
    set shape "square"
    set size 1
    set color orange
    setxy 8 0
    set hidden? false
    set location patch-here
    set permission "yes"
  ]

    create-in-camp-markets 5 [
    set shape "square"
    set size 0.5
    set color orange
    setxy (0 + random -20) 0
        while [any? other in-camp-markets in-radius 0.2] [setxy (0 + random -20) 0] ]

    create-in-camp-facilities 5 [
    set shape "square"
    set size 0.5
    set color green
    setxy -20 (20 + random -40)
    while [any? other in-camp-facilities in-radius 0.2] [setxy -20 (20 + random -40) ]
  ]

  set facilities (turtle-set in-camp-markets vicinity-markets in-camp-facilities)

  ask facilities [
  set waiting-list [] ]
  split-facilities

end

to split-facilities
  ifelse Camp-openness-policy != "Isolating facilities in different parts"[
    ask vicinity-markets [hatch 0 [] ]
    ask in-camp-facilities [hatch 30 [] ]
    stop][

  ask vicinity-markets [hatch 1 [] ]
  ask in-camp-facilities [hatch 30 [] ]
  ask in-camp-markets [hatch 1 [] ]
  ]
end

; ROHINGYAS & BANGLADESHI

to create-rohingyashelters
  ifelse model-environment = "Nayapara Block B"  [
    set initial-number-of-tents 148
    ask n-of initial-number-of-tents patches with [pcolor = black] [sprout-tents 1]] [
    ifelse model-environment = "Test block"  [
    set initial-number-of-tents 30
    ask n-of initial-number-of-tents patches with [pcolor = black] [sprout-tents 1]] [
      if model-environment = "One!" [
    set initial-number-of-tents 1
        ask n-of initial-number-of-tents patches with [pcolor = black] [sprout-tents 1]] ] ]

  ask tents [
    move-to one-of patches with [pcolor = black]
    while [any? other tents in-radius infectious-distance] [move-to one-of patches with [pcolor = black]]
    set color blue
    set shape "campsite"
    set size 1
    set myhome patch-here
    set destination-child "none"
    set destination "Home"
    set occupancy "free"
    set walker? false
    set my-population "Rohingya"
    set permission "yes"

   ; COVID-19:
    set sick-household []
    set vaccinated-household []
    set infected? false
    set infection-stage "susceptible"
    set next-infection-stage "exposed"
    set vaccinated? false

   ; ACTIVITY SCHEDULE:
    set rohingya-market-day (random 7 + 1)                                     ; host community go to the market once a week
    set market-time-hour (random 5 + 12)                                   ; host community go to the market from 12pm-18pm
    set rohingya-market-to-home-day rohingya-market-day
    set in-camp-hour (random 3 + 9)

    determine-households
    let in_vs_vicinity_campchance (random 100 + 1)
    ifelse in_vs_vicinity_campchance <= 49 [set market_destination "in-camp market"][set market_destination "vicinity market"] ; 49% of the host community people visit the in-camp markets, 51% go to the vicinity market.
    set numtents (count tents * householdsize)
  ]
end

to determine-households
  let householdsize-randomizer random 10 + 1
  let household-composition-randomizer random 5 + 1
  ifelse householdsize-randomizer <= 5 [set householdsize 6]                           ; 50% of the households is considered to host 6 people
    [ifelse householdsize-randomizer <= 8 [set householdsize 7] [set householdsize 5]] ; the other 50% of the Rohingya households is considered to host 5 or 7 people, distributed equally

  ; for households of 5 Rohingyas:
  if householdsize = 5 [ ; 5% elderly, 10% older adult, 20% young adult, 65% children comprises the most common household composition for the Rohingyas:

    ifelse household-composition-randomizer = 1 [
      set in-household (list "child" "child" "elderly" "young adult" "young adult" )
      set household in-household
        set number_children number_children + 2
        set number_young_adults number_young_adults + 2
        set number_older_adults number_older_adults + 0
        set number_elderly number_elderly + 1] [          ; 20% elderly, 20% older adult, 40% young adult, 40% children

      ifelse household-composition-randomizer = 2 [
       set in-household (list "child" "child" "older adult" "young adult" "young adult" )
        set household in-household
        set number_children number_children + 2
        set number_young_adults number_young_adults + 2
        set number_older_adults number_older_adults +  1
        set number_elderly number_elderly +  0] [     ; 0% elderly, 20% older adult, 40% young adult, 40% children
        ifelse household-composition-randomizer = 3 [
        set in-household (list "child" "child" "child" "elderly" "young adult" )
        set household in-household
          set number_children number_children + 3
          set number_young_adults number_young_adults + 1
          set number_older_adults number_older_adults +  0
          set number_elderly number_elderly +  1 ] [              ; 20% elderly, 0% older adult, 20% young adult, 60% children
         ifelse household-composition-randomizer = 4 [
         set in-household (list "child" "child" "child" "young adult" "young adult" )
         set household in-household
            set number_children number_children + 3
            set number_young_adults number_young_adults + 2
            set number_older_adults number_older_adults +  0
            set number_elderly number_elderly +  0 ] [         ; 0% elderly, 0% older adult, 40% young adult, 60% children

            set in-household (list "child" "child" "child" "child" "young adult" )
            set household in-household
              set number_children number_children + 4
              set number_young_adults number_young_adults + 1
              set number_older_adults number_older_adults +  0
              set number_elderly number_elderly + 0] ] ] ] ]        ; 0% elderly, 0% older adult, 20% young adult, 80% children
                                                                                                       ; ---------    ------------    -------------    ----------
                                                                                                       ; 8% elderly   8% older adults  32% young adult   58%
  ; for households of 6 Rohingyas:
  if householdsize = 6 [

    ifelse household-composition-randomizer = 1 [
    set in-household (list "child" "child" "elderly" "older adult" "young adult" "young adult" )
            set household in-household
            set number_children number_children +  2
            set number_young_adults number_young_adults + 2
            set number_older_adults number_older_adults +  1
            set number_elderly number_elderly +  1 ] [
     ifelse household-composition-randomizer = 2 [
     set in-household (list "child" "child" "child" "child" "elderly" "young adult" )
            set household in-household
            set number_children number_children +  4
            set number_young_adults number_young_adults + 1
            set number_older_adults number_older_adults +  0
            set number_elderly number_elderly + 1 ] [
      ifelse household-composition-randomizer = 3 [
      set in-household (list "child" "child" "child" "older adult" "young adult" "young adult" )
            set household in-household
            set number_children number_children +  3
            set number_young_adults number_young_adults + 2
            set number_older_adults number_older_adults +  1
            set number_elderly number_elderly + 0 ] [
       ifelse household-composition-randomizer = 4 [
       set in-household  (list "child" "child" "child" "elderly" "older adult" "young adult"  )
            set household in-household
            set number_children number_children +  3
            set number_young_adults number_young_adults + 1
            set number_older_adults number_older_adults + 1
            set number_elderly number_elderly + 1] [
        set in-household (list "child" "child" "older adult" "young adult" "young adult" "young adult"  )
            set household in-household
            set number_children number_children + 2
            set number_young_adults number_young_adults + 3
            set number_older_adults number_older_adults + 1
            set number_elderly number_elderly + 0 ] ] ] ]
  ]

  ;for households of 7 Rohingyas:
 if householdsize = 7 [

    ifelse household-composition-randomizer = 1 [
    set in-household (list "child" "child" "child" "elderly" "older adult" "young adult" "young adult" )
            set household in-household
            set number_children number_children +  3
            set number_young_adults number_young_adults + 2
            set number_older_adults number_older_adults + 1
            set number_elderly number_elderly + 1 ] [
     ifelse household-composition-randomizer = 2 [
     set in-household (list "child" "child" "child" "child" "elderly" "older adult" "young adult" )
            set household in-household
            set number_children number_children +  4
            set number_young_adults number_young_adults + 1
            set number_older_adults number_older_adults + 1
            set number_elderly number_elderly + 1 ] [
      ifelse household-composition-randomizer = 3 [
      set in-household (list "child" "child" "child" "child" "older adult" "young adult" "young adult" )
            set household in-household
            set number_children number_children + 4
            set number_young_adults number_young_adults + 2
            set number_older_adults number_older_adults + 1
            set number_elderly number_elderly + 0 ]  [
       ifelse household-composition-randomizer = 4 [
       set in-household (list "child" "child" "child" "child" "elderly" "older adult" "young adult" )
            set household in-household
            set number_children number_children + 4
            set number_young_adults number_young_adults + 1
            set number_older_adults number_older_adults + 1
            set number_elderly number_elderly + 1 ] [

            set in-household (list "child" "child" "child" "older adult" "young adult" "young adult" "young adult" )

            set household in-household
               set number_children number_children + 3
               set number_young_adults number_young_adults + 3
               set number_older_adults number_older_adults + 1
               set number_elderly number_elderly + 0
    ] ] ] ]
  ]
end

to create-host-community
  ifelse model-environment = "Nayapara Block B"
     [set initial-number-of-hosts 225 + random(50) create-hosts initial-number-of-hosts ]
     [set initial-number-of-hosts 50 create-hosts initial-number-of-hosts ]
  ask hosts [
    set size 1
    set color blue
    set shape "person"
    move-to one-of patches with [pcolor = brown]
    while [any? other hosts in-radius (infectious-distance / 2) ] [move-to one-of patches with [pcolor = brown]]
    set myhome patch-here
    set walker? False
    set occupancy "free"
    set my-population "Bangladeshi"

    set infected? false
    set infection-stage "susceptible"
    set next-infection-stage "exposed"
    set vaccinated? false
    set am-i-immune? "no"

    ; Determine the age of the host community (10% = elderly, 40% = older adult, 50% = younger adult, no children are assumed to enter the camps)
    let age-chance random 10 + 1
    if age-chance <= 5 [set my-age "young adult"]
    if age-chance >= 6 and my-age <= 9 [set my-age "older adult"]
    if age-chance = 10 [set my-age "elderly"]

    ; Determine if it is possible to enter the camp
    ifelse lockdown-type = "no lockdown"
    [set permission "yes"]
      [ifelse lockdown-type = "unconditional lockdown"
      [set permission "no"] [
        if lockdown-type = "conditional lockdown"
        [ let permission-chance strictness-of-conditional-lockdown
          ifelse (random 10 + 1) >= strictness-of-conditional-lockdown [
            set permission "yes"] [set permission "no"]
        ]
        if lockdown-type = "conditional lockdown, vaccinated can go"
        [ let permission-chance strictness-of-conditional-lockdown
          ifelse (random 10 + 1) >= strictness-of-conditional-lockdown [
            set permission "yes"] [ifelse vaccinated? = true [set permission "yes"][set permission "no"]]
        ]       ]      ]

   ; ACTIVITY SCHEDULE HOSTS
    set host-market-day (random (7)+ 1)                                      ; host community go to the market once a week
    set host-market-day2 (random (7)+ 1)
    while [host-market-day = host-market-day2][set host-market-day2 (random (7)+ 1)]
    set market-time-hour (random (4) + 12)                                    ; host community go to the market from 12-18pm
    set host-home-time-hour market-time-hour
    set host-home-time-minute ((random(5)+ 1) * 5)

    let in_vs_vicinity_campchance (random 100 + 1)
    ifelse in_vs_vicinity_campchance <= 12 [set market_destination "in-camp market"][set market_destination "vicinity market"] ; 12% of the host community people visit the in-camp markets, 88% go to the vicinity market.

    set numhosts count hosts
    set number_children_hosts count hosts with [my-age = "child"]
    set number_youngeradults_hosts count hosts with [my-age = "young adult"]
    set number_olderadults_hosts count hosts with [my-age = "older adult"]
    set number_elderly_hosts count hosts with [my-age = "elderly"]
  ]
end

to determine-population-data
  set Population-total numrohingyas + numhosts
  set Population-total-children number_children + number_children_hosts
  set Population-total-YA number_young_adults + number_youngeradults_hosts
  set Population-total-OA number_older_adults + number_olderadults_hosts
  set Population-total-eld number_elderly + number_elderly_hosts
end

;;;;;;;;;;;; GO ;;;;;;;;;;;;;;;

to gogogo
  only-allow-vaccinated-at-markets
  if days-switch = True [
    if day = 30 and Hour = 1 and Minute = 0 [
      set Camp-openness-policy "Nothing"
      set measure-inside-camp "send out random"
      set measure-inside-camp-market "Nothing" ] ]
  time-runs
  determine-where-to-go
  determine-vaccine-batches
  set-daily-kpis-to-zero

  if Hour = 4 and Minute = 0 [ ;Day != 0 and
    set cum-daily-infected-yesterday cum-daily-infected-today
    set cum-daily-infected-today 0  ]
  if Day != 0 and Hour = 4 and Minute = 5
  [set cum-daily-infected-today 0]

  if Minute = 0  [
    ask tents with [infected? = true] [disease-progression]
    ask hosts with [infected? = true] [disease-progression]
    ask hosts with [infection-stage = "recovered"] [become-reinfectious-again]]
  insert-random-infection
  if Day? [
    count-people-at-market
    limit-capacity-for-markets
    if Lockdown-type = "conditional lockdown" [ask tents with [market_destination = "vicinity market" and color = blue] [set destination one-of vicinity-markets]]
    rohingyas-set-an-in-camp-destination!
    rohingyas-set-a-market-destination!
    rohingyas-go-home
    host-set-a-destination
    hosts-go-home
    new-walking-new
    hatch-to-vaccinated-or-immune
    manage-queues
    risk-covid-new
    ask populations [set infection-chance 0 set transmission-F 0 set contact-rate 0 set do-I-get-infected? false]
    update-kpi  ]

  if Hour = 23 and Minute = 0 [ ;Day != 0 and
    set-compliance-to-stay-home-if-symptomatic
    ifelse cum-daily-infected-today = 0 or cum-daily-infected-yesterday = 0 [
      let R 0 ;print("R is") print(1)
      set R-list lput R R-list  ] [
      let R precision (cum-daily-infected-today / cum-daily-infected-yesterday) 2
      set R-list lput R R-list ]
      set weekly-R mean(R-list) ]

  if (Day-of-the-week = 7 and Hour = 5 and Minute = 0) [
    if Dynamic-camp-openness? = True and Camp-openness-policy = "Nothing" [determine-camp-openness]
    set R-list [] ]

  set-daily-kpis-to-zero
  tick
  ;if Day = 1 and Hour = 15 [stop]
  if (Day = 90) [stop]

end

to time-runs ; makes the clock tick
  set Minute Minute + 5
  if Minute = 60 [set Minute 0 set Hour Hour + 1]
  if Hour = 8 [set Day? true ]
  if (Hour = 18) and (Minute = 0) [set Day? False]
  if Hour = 24 [
    set Hour 0
    set Day (Day + 1)
    set Day-of-the-week Day-of-the-week + 1 ]
  if Day-of-the-week = 8 [
    set Day-of-the-week 1
    set Week Week + 1
    set random-day (random(7) + 1) ]

end

;;;;;;;;;;;;GOVERNMENT;;;;;;;;;;;;;;;;;;;;

to determine-camp-openness

  ifelse R0-strictness = "low" [ifelse weekly-R <= 0.95 [set Lockdown-type "no lockdown" ][ifelse (weekly-R > 0.95 and weekly-R < 1.5 )[set Lockdown-type "conditional lockdown"] [if weekly-R >= 1.5 [set Lockdown-type "unconditional lockdown"] ]  ] ] [
    ifelse R0-strictness = "moderate" [ifelse weekly-R <= 0.9 [set Lockdown-type "no lockdown" ][ifelse (weekly-R > 0.9 and weekly-R < 1.3) [set Lockdown-type "conditional lockdown"] [if weekly-R >= 1.3 [set Lockdown-type "unconditional lockdown"] ]  ] ] [
      if R0-strictness = "high" [ifelse weekly-R <= 0.85 [set Lockdown-type "no lockdown" ][ifelse (weekly-R > 0.85 and weekly-R < 1.15) [set Lockdown-type "conditional lockdown"] [if weekly-R >= 1.15 [set Lockdown-type "unconditional lockdown"] ]  ] ]  ]]
end

to close-camp-for-host-community
  ifelse Camp-openness-policy != "Camp closed for host community" [stop][
      ask hosts with [walker? = false] [set permission "no" die]
  ]
end

to limit-capacity-for-markets
  ifelse Camp-openness-policy != "Limited capacity for markets" [][
  if any? populations with [market_destination = "vicinity market"] [
      ask n-of capacity-vicinity-M populations with [market_destination = "vicinity market"] [set permission "yes"] ]
   if any? populations with [market_destination = "in-camp market"] [
      ask n-of capacity-in-camp-M populations with [market_destination = "in-camp market"] [set permission "yes"] ]
  ]
end

to-report capacity-vicinity-M
  let people-who-cannot-enter-vicinity-M (450 - capacity-vicinity-market-today)
  let people-who-want-to-enter-vicinity-M count populations with [market_destination = "vicinity market"]
  ifelse people-who-cannot-enter-vicinity-M > people-who-want-to-enter-vicinity-M [report people-who-want-to-enter-vicinity-M] [report people-who-cannot-enter-vicinity-M]
end

to-report capacity-in-camp-M
  let people-who-cannot-enter-in-camp-M (220 - capacity-in-camp-market-today)
  let people-who-want-to-enter-in-camp-M count populations with [market_destination = "in-camp market"]
  ifelse people-who-cannot-enter-in-camp-M > people-who-want-to-enter-in-camp-M [report people-who-want-to-enter-in-camp-M] [report people-who-cannot-enter-in-camp-M]
end

to determine-I-i-can-enter-a-market-or-facility

end

to only-allow-vaccinated-at-markets
  if Camp-openness-policy = "Vaccines: Only vaccinated people allowed at vicinity market" [
   set measure-inside-camp-market "send out only vaccinated"
  ]
end


;;;;;;;;;;;;;ROHINGYAS;;;;;;;;;;;;;;;;;;;;;;

to determine-where-to-go
if Hour = 9 and Minute = 0 [
  if  Camp-openness-policy != "Limited capacity for markets" [
  ask tents [
    let in_vs_vicinity_campchance (random 100 + 1)
    ifelse in_vs_vicinity_campchance <= 49 [set market_destination "in-camp market"][set market_destination "vicinity market"] ; 49% of the host community people visit the in-camp markets, 51% go to the vicinity market.
    set market-time-hour (random 5 + 12)
    set in-camp-hour (random 3 + 9)
    ]
  ask hosts [
    let in_vs_vicinity_campchance (random 100 + 1)
    ifelse in_vs_vicinity_campchance <= 12 [set market_destination "in-camp market"][set market_destination "vicinity market"] ; 12% of the host community people visit the in-camp markets, 88% go to the vicinity market.

    set market-time-hour (random (4) + 12)                                    ; host community go to the market from 12-18pm
    set host-home-time-hour market-time-hour
    set host-home-time-minute ((random(5)+ 1) * 5)]

  ]

  if  Camp-openness-policy = "Limited capacity for markets" [
  ask tents [
    let in_vs_vicinity_campchance (random 100 + 1)
    ifelse in_vs_vicinity_campchance <= 49 [set market_destination "in-camp market"][set market_destination "vicinity market"] ; 49% of the host community people visit the in-camp markets, 51% go to the vicinity market.
    set market-time-hour (random 5 + 12)
    set in-camp-hour (random 3 + 9)

    ]
  ask hosts [
    let in_vs_vicinity_campchance (random 100 + 1)
    ifelse in_vs_vicinity_campchance <= 12 [set market_destination "in-camp market"][set market_destination "vicinity market"] ; 12% of the host community people visit the in-camp markets, 88% go to the vicinity market.

    set market-time-hour (random (4) + 12)                                    ; host community go to the market from 12-18pm
    set host-home-time-hour market-time-hour
    set host-home-time-minute ((random(5)+ 1) * 5)]
  let num_vicinity_visitors (count (populations with [market_destination = "vicinity market"]))
  let num_incamp_visitors (count (populations with [market_destination = "in-camp market"]))
  let strictness (strictness-of-conditional-lockdown / 10)
  let populations_vicinity populations with [market_destination = "vicinity market"]
  let populations_incamp populations with [market_destination = "in-camp market"]

  ask n-of round (strictness * num_vicinity_visitors) populations_vicinity [set market-time-hour 0]
  ask n-of round (strictness * num_incamp_visitors) populations_incamp [set market-time-hour 0]]
  ]
end

to rohingyas-set-a-market-destination!
  ifelse Lockdown-type = "no lockdown" [ask tents with [color = blue][rohingyas-send-out-someone-to-a-market-destination!]]
  [ifelse Lockdown-type = "conditional lockdown" [ask tents with [color = blue and permission = "yes"][rohingyas-send-out-someone-to-a-market-destination!]]
    [if Lockdown-type = "unconditional lockdown" [ask tents with [color = blue and market_destination != "vicinity market" and compliant-to-stay-home? = false ][rohingyas-send-out-someone-to-a-market-destination!]]]
  ]
end

to rohingyas-set-an-in-camp-destination!
  ifelse Lockdown-type = "no lockdown" [ask tents with [color = blue][rohingyas-send-out-someone-to-a-facility!]]
  [ifelse Lockdown-type = "conditional lockdown" [ask tents with [color = blue and permission = "yes"][rohingyas-send-out-someone-to-a-facility!]]
    [if Lockdown-type = "unconditional lockdown" [ask tents with [color = blue and market_destination != "vicinity market" and compliant-to-stay-home? = false ][rohingyas-send-out-someone-to-a-facility!]]]
  ]
end

to rohingyas-send-out-someone-to-a-facility!
if (Hour = in-camp-hour)  [
;if Day = 1  [

    if Camp-openness-policy != "Education: Only children allowed to go to in-camp facilities" and Camp-openness-policy != "Health: Keeping elderly at home" [
      let old-household household
      let old-sick sick-household
      let old-vaccinated vaccinated-household

      let number-old-household length old-household
      let number-old-sick length old-sick
      let number-old-vaccinated length old-vaccinated

    if the-report = 0 [stop]

    ; Selects a healthy:
    if the-report = 1 [
     let person item (random (length old-household)) old-household
     let new-walker position person household
     hatch 1 [
       set shape "person"
       set color grey
       set walker? true
       set my-age item new-walker household
       set spending-time-hour in-camp-hour
       set spending-time-minute ((random(6) + 1) * 5)
       set destination (one-of in-camp-facilities)
       set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
       set cum-interactions-rohingyas cum-interactions-rohingyas + 1
       set cum-interactions cum-interactions + 1 ]
    set household remove-item new-walker household ]

     if the-report = 2 [
     let person item (random (length old-vaccinated)) old-vaccinated   ;; gives 'adult' or 'elderly'
     let new-walker position person vaccinated-household
        hatch 1 [
          set shape "person"
          set color 72
          set walker? true
          set vaccinated? true
          set spending-time-hour in-camp-hour
          set spending-time-minute ((random(6) + 1) * 5)
          set my-age item new-walker vaccinated-household
          set destination (one-of in-camp-facilities)
          set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
          set cum-interactions-rohingyas cum-interactions-rohingyas + 1
          set cum-interactions cum-interactions + 1 ]
      set vaccinated-household remove-item new-walker vaccinated-household]

     if the-report = 5 [
      ifelse Compliance-included? = "yes" [
      let sick-tents tents with [infected? = true and walker? = false and compliant-to-stay-home? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour in-camp-hour ;(market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        set destination (one-of in-camp-facilities)
        set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
        set cum-interactions-rohingyas cum-interactions-rohingyas + 1
        set cum-interactions cum-interactions + 1 ]
      ]] [
      let sick-tents tents with [infected? = true and walker? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour in-camp-hour ;(market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        set destination (one-of in-camp-facilities)
        set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
        set cum-interactions-rohingyas cum-interactions-rohingyas + 1
        set cum-interactions cum-interactions + 1 ]
      ]]
      ]
  ]

  if Camp-openness-policy = "Education: Only children allowed to go to in-camp facilities" [
      let old-household filter [ s -> s = "child" ] household
      let old-sick filter [ s -> s = "child" ] sick-household
      let old-vaccinated filter [ s -> s = "child" ] vaccinated-household
      let number-old-household length old-household
      let number-old-sick length old-sick
      let number-old-vaccinated length old-vaccinated

    if the-report = 0 [stop]

    ; Selects a healthy:
    if the-report = 1 [
        ifelse old-household = [] [] [
     let person item (random (length old-household)) old-household
     let new-walker position person household
     hatch 1 [
       set shape "person"
       set color grey
       set walker? true
       set my-age item new-walker household
       set spending-time-hour in-camp-hour
       set spending-time-minute ((random(6) + 1) * 5)
       set destination (one-of in-camp-facilities)
       set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
       set cum-interactions-rohingyas cum-interactions-rohingyas + 1
       set cum-interactions cum-interactions + 1 ]
    set household remove-item new-walker household ]
      ]

     if the-report = 2 [
        ifelse old-vaccinated = [] [] [
     let person item (random (length old-vaccinated)) old-vaccinated   ;; gives 'adult' or 'elderly'
     let new-walker position person vaccinated-household
        hatch 1 [
          set shape "person"
          set color 72
          set walker? true
          set vaccinated? true
          set spending-time-hour in-camp-hour
          set spending-time-minute ((random(6) + 1) * 5)
          set my-age item new-walker vaccinated-household
          set destination (one-of in-camp-facilities)
          set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
          set cum-interactions-rohingyas cum-interactions-rohingyas + 1
          set cum-interactions cum-interactions + 1 ]
      set vaccinated-household remove-item new-walker vaccinated-household]
      ]

     if the-report = 5 [
      ifelse Compliance-included? = "yes" [
      let sick-tents tents with [infected? = true and walker? = false and compliant-to-stay-home? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour in-camp-hour ;(market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        set destination (one-of in-camp-facilities)
        set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
        set cum-interactions-rohingyas cum-interactions-rohingyas + 1
        set cum-interactions cum-interactions + 1 ]
      ]] [
      let sick-tents tents with [infected? = true and walker? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour in-camp-hour ;(market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        set destination (one-of in-camp-facilities)
        set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
        set cum-interactions-rohingyas cum-interactions-rohingyas + 1
        set cum-interactions cum-interactions + 1 ]
      ]]
      ]
   ]

  if Camp-openness-policy = "Health: Keeping elderly at home" [
      let old-household filter [ s -> s != "elderly" ] household
      let old-sick filter [ s -> s != "elderly" ] sick-household
      let old-vaccinated filter [ s -> s != "elderly" ] vaccinated-household

      let number-old-household length old-household
      let number-old-sick length old-sick
      let number-old-vaccinated length old-vaccinated

    if the-report = 0 [stop]

    ; Selects a healthy:
    if the-report = 1 [
        ifelse old-household = [] [] [
     let person item (random (length old-household)) old-household
     let new-walker position person household
     hatch 1 [
       set shape "person"
       set color grey
       set walker? true
       set my-age item new-walker household
       set spending-time-hour in-camp-hour
       set spending-time-minute ((random(6) + 1) * 5)
       set destination (one-of in-camp-facilities)
       set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
       set cum-interactions-rohingyas cum-interactions-rohingyas + 1
       set cum-interactions cum-interactions + 1 ]
    set household remove-item new-walker household ]
      ]

     if the-report = 2 [
        ifelse old-vaccinated = [] [] [
     let person item (random (length old-vaccinated)) old-vaccinated   ;; gives 'adult' or 'elderly'
     let new-walker position person vaccinated-household
        hatch 1 [
          set shape "person"
          set color 72
          set walker? true
          set vaccinated? true
          set spending-time-hour in-camp-hour
          set spending-time-minute ((random(6) + 1) * 5)
          set my-age item new-walker vaccinated-household
          set destination (one-of in-camp-facilities)
          set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
          set cum-interactions-rohingyas cum-interactions-rohingyas + 1
          set cum-interactions cum-interactions + 1 ]
      set vaccinated-household remove-item new-walker vaccinated-household]
      ]

     if the-report = 5 [
      ifelse Compliance-included? = "yes" [
      let sick-tents tents with [infected? = true and walker? = false and compliant-to-stay-home? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour in-camp-hour ;(market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        set destination (one-of in-camp-facilities)
        set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
        set cum-interactions-rohingyas cum-interactions-rohingyas + 1
        set cum-interactions cum-interactions + 1 ]
      ]] [
      let sick-tents tents with [infected? = true and walker? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour in-camp-hour ;(market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        set destination (one-of in-camp-facilities)
        set cum-rohingyas-at-in-camp-facilities cum-rohingyas-at-in-camp-facilities + 1
        set cum-interactions-rohingyas cum-interactions-rohingyas + 1
        set cum-interactions cum-interactions + 1 ]
      ]]    ]   ]  ]
end

to rohingyas-send-out-someone-to-a-market-destination!
if (Hour = market-time-hour) and random(3) = 0 [
;if Day = 1  [

if Camp-openness-policy != "Health: Keeping elderly at home" and Camp-openness-policy != "Vaccines: Only vaccinated people allowed at vicinity market" [

      let old-household household
      let old-sick sick-household
      let old-vaccinated vaccinated-household

      let number-old-household length old-household
      let number-old-sick length old-sick
      let number-old-vaccinated length old-vaccinated

    if the-report = 0 [stop]

    ; Selects a healthy:
    if the-report = 1 [
     let person item (random (length old-household)) old-household
     let new-walker position person household
     hatch 1 [
       set shape "person"
       set color grey
       set walker? true
       set my-age item new-walker household
       set spending-time-hour market-time-hour
       set spending-time-minute ((random(6) + 1) * 5)
       ifelse market_destination = "vicinity market"
          [set destination (one-of vicinity-markets)
           set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
           set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
          [set destination (one-of in-camp-markets)
           set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
           set cum-interactions-rohingyas cum-interactions-rohingyas + 1  ]
     ]
     set household remove-item new-walker household ]

     if the-report = 2 [
     let person item (random (length old-vaccinated)) old-vaccinated
     let new-walker position person vaccinated-household
        hatch 1 [
          set shape "person"
          set color 72
          set walker? true
          set vaccinated? true
          set spending-time-hour market-time-hour
          set spending-time-minute ((random(6) + 1) * 5)
          set my-age item new-walker vaccinated-household
          ifelse market_destination = "vicinity market"
            [set destination (one-of vicinity-markets)
             set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
            [set destination (one-of in-camp-markets)
             set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1 ]
      ]
    set vaccinated-household remove-item new-walker vaccinated-household]

     if the-report = 5 [
      ifelse Compliance-included? = "yes" [
      let sick-tents tents with [infected? = true and walker? = false and compliant-to-stay-home? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour (market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        ifelse market_destination = "vicinity market"
          [set destination (one-of vicinity-markets)
             set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
          [set destination (one-of in-camp-markets)
             set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1 ] ]
      ]] [
      let sick-tents tents with [infected? = true and walker? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour (market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        ifelse market_destination = "vicinity market"
          [set destination (one-of vicinity-markets)
             set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
          [set destination (one-of in-camp-markets)
             set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1 ] ]
      ]]
]
]

if Camp-openness-policy = "Health: Keeping elderly at home" [

      let old-household filter [ s -> s != "elderly" ] household
      let old-sick filter [ s -> s != "elderly" ] sick-household
      let old-vaccinated filter [ s -> s != "elderly" ] vaccinated-household

      let number-old-household length old-household
      let number-old-sick length old-sick
      let number-old-vaccinated length old-vaccinated

    if the-report = 0 [stop]

    ; Selects a healthy:
    if the-report = 1 [
     let person item (random (length old-household)) old-household
     let new-walker position person household
     hatch 1 [
       set shape "person"
       set color grey
       set walker? true
       set my-age item new-walker household
       set spending-time-hour market-time-hour
       set spending-time-minute ((random(6) + 1) * 5)
       ifelse market_destination = "vicinity market"
          [set destination (one-of vicinity-markets)
           set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
           set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
          [set destination (one-of in-camp-markets)
           set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
           set cum-interactions-rohingyas cum-interactions-rohingyas + 1  ]
     ]
     set household remove-item new-walker household ]

     if the-report = 2 [
     let person item (random (length old-vaccinated)) old-vaccinated
     let new-walker position person vaccinated-household
        hatch 1 [
          set shape "person"
          set color 72
          set walker? true
          set vaccinated? true
          set spending-time-hour market-time-hour
          set spending-time-minute ((random(6) + 1) * 5)
          set my-age item new-walker vaccinated-household
          ifelse market_destination = "vicinity market"
            [set destination (one-of vicinity-markets)
             set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
            [set destination (one-of in-camp-markets)
             set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1 ]
      ]
    set vaccinated-household remove-item new-walker vaccinated-household]

     if the-report = 5 [
      ifelse Compliance-included? = "yes" [
      let sick-tents tents with [infected? = true and walker? = false and compliant-to-stay-home? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour (market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        ifelse market_destination = "vicinity market"
          [set destination (one-of vicinity-markets)
             set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
          [set destination (one-of in-camp-markets)
             set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1 ] ]
      ]] [
      let sick-tents tents with [infected? = true and walker? = false] in-radius 0
      if any? sick-tents [
      ask n-of 1 sick-tents [
        set shape "person"
        set walker? true
        set spending-time-hour (market-time-hour + random(2)) ;(Hour + 1)
        set spending-time-minute ((random(6) + 1) * 5)
        ifelse market_destination = "vicinity market"
          [set destination (one-of vicinity-markets)
             set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
          [set destination (one-of in-camp-markets)
             set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1 ] ]
      ]]
]
]

if Camp-openness-policy = "Vaccines: Only vaccinated people allowed at vicinity market" [

      let old-household household
      let old-sick sick-household
      let old-vaccinated vaccinated-household

      let number-old-household length old-household
      let number-old-sick length old-sick
      let number-old-vaccinated length old-vaccinated

    if the-report = 0 [stop]

     if the-report = 2 [
     let person item (random (length old-vaccinated)) old-vaccinated
     let new-walker position person vaccinated-household
        hatch 1 [
          set shape "person"
          set color 72
          set walker? true
          set vaccinated? true
          set spending-time-hour market-time-hour
          set spending-time-minute ((random(6) + 1) * 5)
          set my-age item new-walker vaccinated-household
          ifelse market_destination = "vicinity market"
            [set destination (one-of vicinity-markets)
             set cum-rohingyas-at-vicinity-market cum-rohingyas-at-vicinity-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1]
            [set destination (one-of in-camp-markets)
             set cum-rohingyas-at-in-camp-market cum-rohingyas-at-in-camp-market + 1
             set cum-interactions-rohingyas cum-interactions-rohingyas + 1 ]
      ]
    set vaccinated-household remove-item new-walker vaccinated-household]
]


  ]

end

to-report the-report

if Camp-openness-policy != "Health: Keeping elderly at home" and Camp-openness-policy != "Vaccines: Only vaccinated people allowed at markets"[

  let old-household household
  let old-sick sick-household
  let old-vaccinated vaccinated-household
  let number-old-household length old-household
  let number-old-sick length old-sick
  let number-old-vaccinated length old-vaccinated

ifelse permission = "no" [report 0] [

if Compliance-included? = "no" [
  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop
   ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

     [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
      [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]
        [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]

         [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-vaccinated != 0 and number-old-sick  = 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random 2 ifelse x = 0 [report 2][report 5]]

                   [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][report 5]]]
  ]]]]]]]
  ]

   if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [report 5][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 5][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]

  if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]
               [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[report 5][report 2]]]
      ]]]]]]]]
  ]


if Compliance-included? = "yes" [

  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop

        ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

        [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

             [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [ifelse compliant-to-stay-home? = true [report 2][report 5]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0[let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][ifelse compliant-to-stay-home? = true [report 2][report 5]]]]
  ]]]]]]]
  ]


 if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]



    if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

       [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0  [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][ifelse compliant-to-stay-home? = true [report 0][report 5]]]
              [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                     [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]]
    ]]]]]]]
  ]
    ]
 ]
  ]


if Camp-openness-policy = "Health: Keeping elderly at home" [

  let old-household filter [ s -> s != "elderly" ] household
  let old-sick filter [ s -> s != "elderly" ] sick-household
  let old-vaccinated filter [ s -> s != "elderly" ] vaccinated-household

  let number-old-household length old-household
  let number-old-sick length old-sick
  let number-old-vaccinated length old-vaccinated

ifelse permission = "no" [report 0] [

if Compliance-included? = "no" [
  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop
   ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

     [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
      [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]
        [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]

         [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-vaccinated != 0 and number-old-sick  = 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random 2 ifelse x = 0 [report 2][report 5]]

                   [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][report 5]]]
  ]]]]]]]
  ]

   if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [report 5][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 5][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]

  if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]
               [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[report 5][report 2]]]
      ]]]]]]]]
  ]


if Compliance-included? = "yes" [

  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop

        ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

        [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

             [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [ifelse compliant-to-stay-home? = true [report 2][report 5]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0[let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][ifelse compliant-to-stay-home? = true [report 2][report 5]]]]
  ]]]]]]]
  ]


 if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]



    if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

       [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0  [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][ifelse compliant-to-stay-home? = true [report 0][report 5]]]
              [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                     [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]]
    ]]]]]]]
  ]
    ]
 ]
  ]

  if Camp-openness-policy = "Vaccines: Only vaccinated people allowed at vicinity market" [

  let old-household household
  let old-sick sick-household
  let old-vaccinated vaccinated-household

  let number-old-household length old-household
  let number-old-sick length old-sick
  let number-old-vaccinated length old-vaccinated


  ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 0]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 0]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [report 0]
               [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [report 2]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [report 2]
      ]]]]]]]
  ]



end

to-report the-report-facility

if Camp-openness-policy != "Education: Only children allowed to go to in-camp facilities" and Camp-openness-policy != "Health: Keeping elderly at home"[
  let old-household household ;filter [ s -> s != "child" ]
  let old-sick sick-household ;filter [ s -> s != "child" ]
  let old-vaccinated vaccinated-household ;filter [ s -> s != "child" ]

  let number-old-household length old-household
  let number-old-sick length old-sick
  let number-old-vaccinated length old-vaccinated

ifelse permission = "no" [report 0] [

if Compliance-included? = "no" [
  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop
   ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

     [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
      [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]
        [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]

         [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-vaccinated != 0 and number-old-sick  = 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random 2 ifelse x = 0 [report 2][report 5]]

                   [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][report 5]]]
  ]]]]]]]
  ]

   if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [report 5][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 5][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]

  if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]
               [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[report 5][report 2]]]
      ]]]]]]]]
  ]


if Compliance-included? = "yes" [

  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop

        ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

        [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

             [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [ifelse compliant-to-stay-home? = true [report 2][report 5]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0[let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][ifelse compliant-to-stay-home? = true [report 2][report 5]]]]
  ]]]]]]]
  ]


 if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]



    if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

       [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0  [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][ifelse compliant-to-stay-home? = true [report 0][report 5]]]
              [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                     [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]]
    ]]]]]]]
  ]
    ]
 ]
  ]

if Camp-openness-policy = "Education: Only children allowed to go to in-camp facilities" [
  let old-household filter [ s -> s = "child" ] household
  let old-sick filter [ s -> s = "child" ] sick-household
  let old-vaccinated filter [ s -> s = "child" ] vaccinated-household

  let number-old-household length old-household
  let number-old-sick length old-sick
  let number-old-vaccinated length old-vaccinated

ifelse permission = "no" [report 0] [

if Compliance-included? = "no" [
  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop
   ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

     [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
      [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]
        [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]

         [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-vaccinated != 0 and number-old-sick  = 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random 2 ifelse x = 0 [report 2][report 5]]

                   [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][report 5]]]
  ]]]]]]]
  ]

   if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [report 5][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 5][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]

  if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]
               [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[report 5][report 2]]]
      ]]]]]]]]
  ]


if Compliance-included? = "yes" [

  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop

        ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

        [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

             [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [ifelse compliant-to-stay-home? = true [report 2][report 5]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0[let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][ifelse compliant-to-stay-home? = true [report 2][report 5]]]]
  ]]]]]]]
  ]


 if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]



    if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

       [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0  [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][ifelse compliant-to-stay-home? = true [report 0][report 5]]]
              [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                     [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]]
    ]]]]]]]
  ]
    ]
 ]
  ]

if Camp-openness-policy = "Health: Keeping elderly at home" [
  let old-household filter [ s -> s != "elderly" ] household
  let old-sick filter [ s -> s != "elderly" ] sick-household
  let old-vaccinated filter [ s -> s != "elderly" ] vaccinated-household

  let number-old-household length old-household
  let number-old-sick length old-sick
  let number-old-vaccinated length old-vaccinated

ifelse permission = "no" [report 0] [

if Compliance-included? = "no" [
  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop
   ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

     [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
      [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]
        [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]

         [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-vaccinated != 0 and number-old-sick  = 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random 2 ifelse x = 0 [report 2][report 5]]

                   [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][report 5]]]
  ]]]]]]]
  ]

   if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [report 5][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 5][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]

  if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [report 5]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random 2 ifelse x = 0 [report 1][report 5]]
               [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [report 5][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[report 5][report 2]]]
      ]]]]]]]]
  ]


if Compliance-included? = "yes" [

  if measure-inside-camp = "send out random" [            ; Select a random person from the household to go to the market or shop

        ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

        [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

             [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][report 5]]  ;
          [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random 2 ifelse x = 0 [report 2][report 1]]
              [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [ifelse compliant-to-stay-home? = true [report 2][report 5]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0[let x random 3 ifelse x = 0 [report 1][ifelse x = 1 [report 2][ifelse compliant-to-stay-home? = true [report 2][report 5]]]]
  ]]]]]]]
  ]


 if measure-inside-camp = "send out healthy or vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

      [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
          [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0 [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 1]]
                [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(2) ifelse x = 0 [report 2][report 1]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                    [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][let x random(2) ifelse x = 0 [report 2][report 1]]
      ]]]]]]]]]



    if measure-inside-camp = "send out vaccinated if possible" [
       ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated = 0 [report 0]

       [ifelse number-old-household = 0 and number-old-sick = 0 and number-old-vaccinated != 0 [report 2]
         [ifelse number-old-sick = 0 and number-old-vaccinated = 0 and number-old-household  != 0  [report 1]
           [ifelse number-old-household = 0 and number-old-vaccinated = 0 and number-old-sick  != 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]]

              [ifelse number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated = 0 [ifelse compliant-to-stay-home? = true [report 1][ifelse compliant-to-stay-home? = true [report 0][report 5]]]
              [ifelse number-old-household != 0 and number-old-sick = 0 and number-old-vaccinated != 0 [let x random(10) ifelse x = 0 [report 1][report 2]]
                [ifelse number-old-sick != 0 and number-old-vaccinated != 0 and number-old-household  = 0 [let x random(10) ifelse x = 0 [ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]

                     [if number-old-household != 0 and number-old-sick != 0 and number-old-vaccinated != 0 [let y random(10) ifelse y = 0 [report 1][ifelse y = 1[ifelse compliant-to-stay-home? = true [report 0][report 5]][report 2]]]
    ]]]]]]]
  ]
    ]
 ]
  ]
end


to count-people-at-market
  ifelse Lockdown-type != "conditional lockdown" [stop][
  ask vicinity-markets [
    let people-here tents with [destination = myself and patch-here != myhome]
    let people-wanna-here tents with [destination = myself and patch-here = myhome and market_destination = "vicinity market"]
    let no-people-here count(people-here)
    let no-people-i-can-have capacity-vicinity-market - no-people-here
    let no-people-wanna-here  count(people-wanna-here)

    if any? people-wanna-here  [

    ifelse no-people-wanna-here > no-people-i-can-have [
      ask people-wanna-here [set permission "no"]
      let counter no-people-i-can-have
        while [counter > 0] [
        ask n-of 1 people-wanna-here [
              set permission "yes" ] set counter counter - 1] ]
        [ask people-wanna-here [set permission "yes" ]] ]]

  ]
end

to rohingyas-go-home
  ask tents with [walker? = true] [
  if ((Hour = spending-time-hour) and (Minute = spending-time-minute)) or Hour = 17 [
  ;if Day = 0    [
      set can-i-get-infected-by-someone? "no"
      set destination myhome
      set permission "yes"    ]  ]
end


;;;;;;;;;;;;;;;;;HOSTS;;;;;;;;;;;;;;;;;;;;;;

to host-set-permission
  ask hosts with [walker? = false] [
   ifelse Lockdown-type = "no lockdown"
    [set permission "yes"]
      [ifelse Lockdown-type = "unconditional lockdown"
      [set permission "no"] [
        if Lockdown-type = "conditional lockdown"
        [ let permission-chance strictness-of-conditional-lockdown
          ifelse (random 10 + 1) >= strictness-of-conditional-lockdown [
            set permission "yes"] [set permission "no"]    ]    ]    ]  ]
  if Camp-openness-policy = "Vaccines: Only vaccinated hosts can enter the camp" or Camp-openness-policy = "Vaccines: Only vaccinated people allowed at vicinity market" [
  ask hosts with [walker? = false and vaccinated? = true] [
      set permission "yes"]
    ask hosts with [walker? = false and vaccinated? = false] [
      set permission "no" ]  ]
end

to host-set-a-destination
ask hosts [
 ;if Day = 1 [

 if (Hour = market-time-hour) and Minute = 0 and random(3) = 0 [

 ; Host set permission if they are allowed to enter the camp.
 host-set-permission

 ; Hosts with no permission try again next day
 if Compliance-included? = "no" [
 if permission = "no" and walker? = false [
      set destination myhome
      set host-market-day host-market-day + 1
      set host-market-day2 host-market-day2 + 1
      if host-market-day = 8 [set host-market-day 1]
      if host-market-day2 = 8 [set host-market-day2 (random(7) + 2)] ]

 if permission = "yes" and walker? = false [

     if market_destination = "vicinity market" [
        set destination one-of vicinity-markets
        set walker? true
        set cum-hosts-at-vicinity-market cum-hosts-at-vicinity-market + 1
        set cum-interactions-hosts cum-interactions-hosts + 1]

      if market_destination = "in-camp market"  [
        set destination one-of in-camp-markets
        set walker? true
        set cum-hosts-at-in-camp-market cum-hosts-at-in-camp-market + 1
        set cum-interactions-hosts cum-interactions-hosts + 1 ]    ] ]

  if Compliance-included? = "yes" [

   if permission = "yes" and infected? = false and walker? = false [
     if market_destination = "vicinity market" [
        set destination one-of vicinity-markets
        set walker? true
        set cum-hosts-at-vicinity-market cum-hosts-at-vicinity-market + 1
        set cum-interactions-hosts cum-interactions-hosts + 1]

      if market_destination = "in-camp market"  [
        set destination one-of in-camp-markets
        set walker? true
        set cum-hosts-at-in-camp-market cum-hosts-at-in-camp-market + 1
        set cum-interactions-hosts cum-interactions-hosts + 1 ]         ]

   if permission = "yes" and infected? = true and compliant-to-stay-home? = true and walker? = false [
        set destination myhome
        set host-market-day host-market-day + 1
        set host-market-day2 host-market-day2 + 1
        if host-market-day = 8 [set host-market-day 1]
        if host-market-day2 = 8 [set host-market-day2 (random(7) + 2)]        ]

   if permission = "yes" and infected? = true and compliant-to-stay-home? = false and walker? = false [
     if market_destination = "vicinity market" [
        set destination one-of vicinity-markets
        set walker? true
        set cum-hosts-at-vicinity-market cum-hosts-at-vicinity-market + 1
        set cum-interactions-hosts cum-interactions-hosts + 1]

      if market_destination = "in-camp market"  [
        set destination one-of in-camp-markets
        set walker? true
        set cum-hosts-at-in-camp-market cum-hosts-at-in-camp-market + 1
        set cum-interactions-hosts cum-interactions-hosts + 1 ]         ]   ]   ]   ]
end

to hosts-go-home
   ask hosts with [walker? = true][
    ;if Day = 0 [
    if ((Day-of-the-week = host-market-day) and (Hour = host-home-time-hour + random(2)) and (Minute = host-home-time-minute)) or Hour = 17 [
      set destination myhome    ]   ]
end

;;;;;;;;;;;;;;;;;HOSTS & ROHINGYAS ;;;;;;;;;;;;;;;

to set-compliance-to-stay-home-if-symptomatic
 ask tents [
 if Lockdown-type = "no lockdown" [set lockdown-compliance random(100) set-compliance]
      if Lockdown-type = "conditional lockdown" [set lockdown-compliance random(90) set-compliance]
    if Lockdown-type = "unconditional lockdown" [set lockdown-compliance random(70) set-compliance] ]
 ask hosts [

 if Lockdown-type = "no lockdown" [set lockdown-compliance random(100) set-compliance]
      if Lockdown-type = "conditional lockdown" [set lockdown-compliance random(90) set-compliance]
    if Lockdown-type = "unconditional lockdown" [set lockdown-compliance random(70) set-compliance] ]
end

to set-compliance
  ifelse Type-of-compliance = "yes, only stay-at-home" [
      let compliance-random random 100
      ifelse lockdown-compliance < compliance-random [set compliant-to-stay-home? true set compliant-to-wear-mask? false][set compliant-to-stay-home? false set compliant-to-wear-mask? false] ] [
   ifelse Type-of-compliance = "yes, only wearing a mask" [
      let compliance-random2 random 100
      ifelse lockdown-compliance < compliance-random2 [set compliant-to-wear-mask? true set compliant-to-stay-home? false][set compliant-to-wear-mask? false set compliant-to-stay-home? false] ] [
  ifelse Type-of-compliance = "yes, both staying home and wearing a mask" [
      let compliance-random2 random 100
      ifelse lockdown-compliance < compliance-random2 [set compliant-to-wear-mask? true][set compliant-to-wear-mask? false]
      let compliance-random random 100
      ifelse lockdown-compliance < compliance-random [set compliant-to-stay-home? true][set compliant-to-stay-home? false]] [
    if  Type-of-compliance = "no" [
        set compliant-to-stay-home? false set compliant-to-wear-mask? false]]]]
end

to new-walking-new
set populations (turtle-set tents hosts)
ask hosts with [walker? = true] [
    if destination = myhome [
      move-to myhome
      set walker? false
      set destination myhome ;"Home"
      set occupancy "free"
      set can-i-get-infected-by-someone? "no"
      set queue-time 0
       ] ]

ask populations with [walker? = true ] [
    if destination != myhome [

    ifelse queue-time = 0 [
          ifelse [length waiting-list] of destination > 0 [
            face destination
            fd (distance destination - (queue-distance / patch-length))
            while [any? other hosts with [(occupancy = "in-queue") and (destination = [destination] of self)] in-radius (queue-distance / patch-length)][fd ( 0 - queue-distance)] ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            set queue-time (queue-time + 5)
            if queue-time = 5 [ask destination [set waiting-list lput myself waiting-list]
            set occupancy "in-queue"]]
          [
            move-to destination
            set queue-time (queue-time + 5)
            if queue-time = 5 [ask destination [set waiting-list lput myself waiting-list] ] ] ]

    [ if (patch-here != [patch-here] of destination) and (occupancy = "in-queue") [
        face destination
        let vision (sqrt((queue-distance * queue-distance) * 2))
        if not any? other tents with [occupancy = "in-queue"] in-cone vision 90 [
        fd queue-distance ]]]]]

ask tents with [walker? = True and vaccinated? = false] [

if destination = myhome [
      move-to myhome
      set destination myhome
      set occupancy "free"
      set queue-time 0

 if infected? = True and vaccinated? = false [
   ask shelters with [color = blue] in-radius 0 [set sick-household lput ([my-age] of myself) sick-household]
   set walker? false  ]

 if infected? = false and vaccinated? = false [
   ask shelters with [color = blue] in-radius 0 [set household lput ([my-age] of myself) household]
   die ]  stop ]   ]
ask tents with [walker? = true and vaccinated? = true] [

if destination = myhome [
      move-to myhome
      set destination myhome ;"Home"
      set occupancy "free"
      set queue-time 0
      ;set permission "yes"

      if infected? = True
       [ask shelters with [color = blue] in-radius 0 [set sick-household lput ([my-age] of myself) sick-household]
        set walker? false ]

 if infected? = false [ask tents with [color = blue] in-radius 0 [set vaccinated-household lput ([my-age] of myself) vaccinated-household]  die ] stop ]
  ]

end

to manage-queues
  set populations (turtle-set tents hosts)
  ask facilities [
    if length waiting-list >= 1 [
    ; if there is a waiting list:
      set serving-time (serving-time - 5)
      if serving-time = 0 [ask item 0 waiting-list [
        set destination [myhome] of self
        set queue-time 0 set occupancy "busy" ]
      set waiting-list but-first waiting-list
        set serving-time initial-serving-time
        ; also bring the next customer:
        if length waiting-list >= 1 [
          while [item 0 waiting-list = nobody][
          set waiting-list but-first waiting-list
          ask item 0 waiting-list [move-to myself]]]]]]
end


;;;;;;;;;;;;;COVID-19;;;;;;;;;;;;;;;;;;;;;;

to set-transmission-force
  ifelse sensitivity-analysis? [
  set transmission-force-children-rohingya 0.05 * (precision (1.5 - random-float(1)) 1)            ; transmission forces based on Davies et al. (2020)
  set transmission-force-young-adults-rohingya 0.12 * (precision (1.5 - random-float(1)) 1)
  set transmission-force-older-adults-rohingya 0.11 * (precision (1.5 - random-float(1)) 1)
  set transmission-force-elderly-rohingya 0.11 * (precision (1.5 - random-float(1)) 1)
  set transmission-force-young-adults-bangladeshi 0.83 * (precision (1.5 - random-float(1)) 1)
  set transmission-force-older-adults-bangladeshi 0.81 * (precision (1.5 - random-float(1)) 1)
  set transmission-force-elderly-bangladeshi 0.81 * (precision (1.5 - random-float(1)) 1) ] [
  set transmission-force-children-rohingya 0.05
  set transmission-force-young-adults-rohingya 0.12
  set transmission-force-older-adults-rohingya 0.11
  set transmission-force-elderly-rohingya 0.05
  set transmission-force-young-adults-bangladeshi 0.67
  set transmission-force-older-adults-bangladeshi 0.41
  set transmission-force-elderly-bangladeshi 0.17 ]
end

to risk-covid-new
  if vaccine-infectiousness = False [
  let healthy-people populations with [walker? = true and infected? = false and vaccinated? = false and time-until-next-infection-stage != "I am immune"]
  if any? healthy-people [
    ask healthy-people [
      let infectious-people populations with [walker? = true and infected? = true and vaccinated? = false and destination = [destination] of myself and patch-here != myhome] in-radius (inf-dist-test / patch-length )
      ifelse any? infectious-people [
        determine-chance-to-get-infected
        if do-I-get-infected? = True [
          become-exposed-test1
          set infection-chance 0 set transmission-F 0 set contact-rate 0]]
      [set infection-chance 0 set transmission-F 0 set contact-rate 0]]]]

    if vaccine-infectiousness = True [
  let healthy-people populations with [walker? = true and infected? = false and time-until-next-infection-stage != "I am immune"]
  if any? healthy-people [
    ask healthy-people [
      let infectious-people populations with [walker? = true and infected? = true and destination = [destination] of myself and patch-here != myhome] in-radius (inf-dist-test / patch-length )
      ifelse any? infectious-people [
        determine-chance-to-get-infected
        if do-I-get-infected? = True [
          become-exposed-test1
          set infection-chance 0 set transmission-F 0 set contact-rate 0 ]]
      [set infection-chance 0 set transmission-F 0 set contact-rate 0]]]]
end

to determine-chance-to-get-infected
  determine-transmission-force-and-contact-rate
  let time-with-infected-person random(16) + 1
  if vaccine-infectiousness = False [
    set vaccine-efficiacy 1
    set my-vaccine-efficiacy vaccine-efficiacy ]

  if vaccine-infectiousness = True [
    let chance random-float 1
    ifelse chance < vaccine-efficiacy [
      set vaccine-efficiacy vaccine-efficiacy
      set my-vaccine-efficiacy 1 ][
      set my-vaccine-efficiacy precision ((vaccine-efficiacy - (random(10) / 100))) 2
      if 0 < my-vaccine-efficiacy [set my-vaccine-efficiacy 0 ]]
  ]

  ifelse vaccinated? = true [
    set infection-chance (transmission-F * contact-rate * time-with-infected-person * (1 - my-vaccine-efficiacy))] [
    set infection-chance (transmission-F * contact-rate * time-with-infected-person)]

  let chance random-float 1
  ifelse chance > infection-chance [set do-I-get-infected? false] [set do-I-get-infected? true]

end

to determine-transmission-force-and-contact-rate
  set transmission-F 0.1
;  set contact-rate 0.01
  determine-location
  ifelse my-age = "child" [
      set transmission-F transmission-F * 0.2    ; Children are less infectious
      set contact-rate (contact-rate * 1)]                   ; Based on location of interaction

    [   ifelse my-age = "young adult" [
      set transmission-F transmission-F * 0.8
      set contact-rate (contact-rate * 1.5) ]                   ; Based on location of interaction

    [   ifelse my-age = "older adult" [
      set transmission-F transmission-F * 1
      set contact-rate (contact-rate * 1.5) ]                   ; Based on location of interaction

    [   if my-age = "elderly" [
      set transmission-F transmission-F * 1.2
      set contact-rate (contact-rate * 0.5) ]                   ; Based on location of interaction
  ]]]

end

to determine-location
  ifelse patch-here = myhome [
     set contact-rate 0 ] [
    ifelse any? vicinity-markets in-radius (1.5 / patch-length) [
      set contact-rate 0.015
    ] [
    ifelse any? in-camp-markets in-radius (1.5 / patch-length)   [
      set contact-rate 0.015
    ] [
      if any? in-camp-facilities in-radius (1.5 / patch-length)  [
       set contact-rate 0.01
  ] ] ] ]
end



to disease-progression
  if time-until-next-infection-stage = "I am immune" [stop]
  if time-until-next-infection-stage = "I am dead" [stop]
  if time-until-next-infection-stage = "I am vaccinated" [stop]
  set time-until-next-infection-stage (time-until-next-infection-stage - 1)
  if time-until-next-infection-stage =  0
  [ ifelse next-infection-stage = "asymptomatic" [ become-asymptomatic-test stop ]
    [ ifelse next-infection-stage = "asymptomatic & vaccinated" [become-asymptomatic-vaccinated stop ]
    [ ifelse next-infection-stage = "symptomatic" [ become-moderately-sympthomatic stop ]
      [ ifelse next-infection-stage = "severely symptomatic" [ become-severely-symptomatic-test stop ]
        [ ifelse next-infection-stage = "critically symptomatic" [become-critically-symptomatic-test stop ]
            [ ifelse next-infection-stage = "recovered & vaccinated" [become-recovered-vaccinated stop]
      [ ifelse next-infection-stage  = "recovered" [ become-recovered-test stop ]
        [ if next-infection-stage = "dead" [ become-dead-test ]
  ]]]]]]]]
end

to become-reinfectious-again
  set time-until-reinfectious (time-until-reinfectious - 1)
  if time-until-reinfectious = 0 [become-infectious-again]
end

to setup-initial-covid-19-infections
  ifelse No-Rohingyas-infected? [
  set Initially-infected-hosts 10 - random(10)
  set Initially-infected-Rohingyas 0
  ][
  set Initially-infected-hosts 10
  set Initially-infected-Rohingyas 11]
  if Camp-openness-policy = "Camp closed for host community" [
    set Initially-infected-hosts 0 ]
  ;ask n-of (Initially-infected-Rohingyas-rate / 100 * initial-number-of-tents) tents with [vaccinated? = false] [
    if any? tents with [vaccinated? = false] [
    let infectable-tents tents with [vaccinated? = false and length household != 0]
    ask n-of (infect-this-number-of-rohingyas) infectable-tents [
    let age-of-sick-agent random (length household)
    set sick-household lput item age-of-sick-agent household sick-household
    set household remove-item age-of-sick-agent household
    hatch 1 [
      set my-age item 0 sick-household
      set household []
      become-exposed-test1
  ] ] ]
    if any? hosts with [vaccinated? = false] [
    let infectable-hosts hosts with [vaccinated? = false]
    ask n-of (infect-this-number-of-hosts) infectable-hosts [
     become-exposed-test1

  ] ]
end

to insert-random-infection
  if random-infections? [
  if Day-of-the-week = random-day and Hour = 2 and Minute = 0 [ ;and (Day-of-the-week = (random(4) + 1) or Day-of-the-week = (random(3) + 5))
    let infectable-tents tents with [color = blue and length(household) != 0 and next-infection-stage != "I am immune"]
    let num-infectable-tents count(infectable-tents)
    if any? infectable-tents [
        ifelse num-infectable-tents >= 5 [
          ask n-of (random(4)) infectable-tents [
          let age-of-sick-agent random (length household)
          set sick-household lput item age-of-sick-agent household sick-household
          set household remove-item age-of-sick-agent household
          hatch 1 [
           set my-age item 0 sick-household
           set household []
           become-exposed-test1
           ]
        ]] []
    ]]

  if  Hour = 2 and Minute = 0 [ ;Day-of-the-week = random-day and
    let infectable-hosts hosts with [infected? = false and vaccinated? = false and next-infection-stage != "I am immune"]
    let num-infectable-hosts count(infectable-hosts)
    if any? infectable-hosts [
      ifelse num-infectable-hosts >= 5 [
      ask n-of (random(2)) infectable-hosts [become-exposed-test1 ]][]

    ]
    ]



  if (Day = 30 or Day = 60) and Hour = 2 and Minute = 0 [ ;and (Day-of-the-week = (random(4) + 1) or Day-of-the-week = (random(3) + 5))
    let infectable-tents tents with [color = blue and length(household) != 0 and next-infection-stage != "I am immune"]
    let num-infectable-tents count(infectable-tents)
    if any? infectable-tents [
        ifelse num-infectable-tents >= Initially-infected-Rohingyas [
          ask n-of random( Initially-infected-Rohingyas ) infectable-tents [
          let age-of-sick-agent random (length household)
          set sick-household lput item age-of-sick-agent household sick-household
          set household remove-item age-of-sick-agent household
          hatch 1 [
           set my-age item 0 sick-household
           set household []
           become-exposed-test1
           ]
        ]] []
    ]]

  if (Day = 30 or Day = 60) and Hour = 2 and Minute = 0 [ ;Day-of-the-week = random-day and
    let infectable-hosts hosts with [infected? = false and vaccinated? = false and next-infection-stage != "I am immune"]
    let num-infectable-hosts count(infectable-hosts)
    if any? infectable-hosts [
      ifelse num-infectable-hosts >= Initially-infected-hosts [
      ask n-of random(Initially-infected-hosts) infectable-hosts [become-exposed-test1 ]][]

    ]
    ]


  ]
end

to-report infect-this-number-of-rohingyas
  let infectable-rohingya-tents tents with [vaccinated? = false and length (household) != 0]
  let number-of-infectable-rohingya-tents count(infectable-rohingya-tents)
  ifelse number-of-infectable-rohingya-tents >= Initially-infected-Rohingyas
    [report Initially-infected-Rohingyas]
    [report number-of-infectable-rohingya-tents]
end

to-report infect-this-number-of-hosts
  let infectable-host hosts with [vaccinated? = false]
  let number-of-infectable-hosts count(infectable-host)
  ifelse number-of-infectable-hosts >= Initially-infected-hosts
    [report Initially-infected-hosts]
    [report number-of-infectable-hosts]
end

to become-exposed-test1
    if vaccine-infectiousness = False [
    set infected? true
    set infection-stage "exposed"
    set place-of-infection min-one-of facilities [distance myself]

    ifelse any? vicinity-markets in-radius (1.5 / patch-length) [
    set cum-infections-vicinity-market cum-infections-vicinity-market + 1
    ] [
    ifelse any? in-camp-markets in-radius (1.5 / patch-length)   [
      set cum-infections-incamp-markets cum-infections-incamp-markets + 1
     ] [
      if any? in-camp-facilities in-radius (1.5 / patch-length)  [
        set cum-infections-incamp-facilities cum-infections-incamp-facilities + 1

    ] ] ]


    set cum-susceptible cum-susceptible - 1
    set cum-daily-infected-today cum-daily-infected-today + 1

  if my-population = "Rohingya" [set cum-exposed-rohingyas cum-exposed-rohingyas + 1
                                 set cum-infected-rohingyas cum-infected-rohingyas + 1
  ]
   if my-population = "Bangladeshi" [set cum-exposed-hosts cum-exposed-hosts + 1
                                     set cum-infected-hosts cum-infected-hosts + 1
  ]
  ifelse my-age = "child" [
    set cum-exposed-children cum-exposed-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-exposed-ya cum-exposed-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-exposed-oa cum-exposed-oa + 1 ] [
           if my-age = "elderly" [
            set cum-exposed-eld cum-exposed-eld + 1
]]]]



    set color red
    set time-until-next-infection-stage incubation-time
    let randomizer-chance random-float 1

    if vaccine-infectiousness = False [
    ifelse ((my-age = "child") and (my-population = "Rohingya") and (randomizer-chance <= 0.18)) or  ; SENSITIVITY!!
           ((my-age = "child") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.18)) or

           ((my-age = "young adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.50)) or
           ((my-age = "young adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.55)) or

           ((my-age = "older adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.70)) or
           ((my-age = "older adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.75)) or

           ((my-age = "elderly") and (my-population = "Rohingya") and (randomizer-chance <= 0.85)) or
           ((my-age = "elderly") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.95))
    [become-symp-or-severely-symp] [set next-infection-stage "asymptomatic"] ]

   if vaccine-infectiousness = True [
    ifelse vaccinated? = true [set next-infection-stage "asymptomatic"][
          ifelse ((my-age = "child") and (my-population = "Rohingya") and (randomizer-chance <= 0.18)) or  ; SENSITIVITY!!
           ((my-age = "child") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.18)) or

           ((my-age = "young adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.50)) or
           ((my-age = "young adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.55)) or

           ((my-age = "older adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.70)) or
           ((my-age = "older adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.75)) or

           ((my-age = "elderly") and (my-population = "Rohingya") and (randomizer-chance <= 0.85)) or
           ((my-age = "elderly") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.95))
    [become-symp-or-severely-symp] [set next-infection-stage "asymptomatic"]
  ]]]


   if vaccine-infectiousness = True [
    if vaccinated? = False [
    set infected? true
    set infection-stage "exposed"
    set place-of-infection min-one-of facilities [distance myself]

    ifelse any? vicinity-markets in-radius (1.5 / patch-length) [
    set cum-infections-vicinity-market cum-infections-vicinity-market + 1
    ] [
    ifelse any? in-camp-markets in-radius (1.5 / patch-length)   [
      set cum-infections-incamp-markets cum-infections-incamp-markets + 1
     ] [
      if any? in-camp-facilities in-radius (1.5 / patch-length)  [
        set cum-infections-incamp-facilities cum-infections-incamp-facilities + 1

    ] ] ]


    set cum-susceptible cum-susceptible - 1
    set cum-daily-infected-today cum-daily-infected-today + 1

  if my-population = "Rohingya" [set cum-exposed-rohingyas cum-exposed-rohingyas + 1
                                 set cum-infected-rohingyas cum-infected-rohingyas + 1
  ]
   if my-population = "Bangladeshi" [set cum-exposed-hosts cum-exposed-hosts + 1
                                     set cum-infected-hosts cum-infected-hosts + 1
  ]
  ifelse my-age = "child" [
    set cum-exposed-children cum-exposed-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-exposed-ya cum-exposed-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-exposed-oa cum-exposed-oa + 1 ] [
           if my-age = "elderly" [
            set cum-exposed-eld cum-exposed-eld + 1
]]]]



    set color red
    set time-until-next-infection-stage incubation-time
    let randomizer-chance random-float 1

    if vaccine-infectiousness = False [
    ifelse ((my-age = "child") and (my-population = "Rohingya") and (randomizer-chance <= 0.18)) or  ; SENSITIVITY!!
           ((my-age = "child") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.18)) or

           ((my-age = "young adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.50)) or
           ((my-age = "young adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.55)) or

           ((my-age = "older adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.70)) or
           ((my-age = "older adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.75)) or

           ((my-age = "elderly") and (my-population = "Rohingya") and (randomizer-chance <= 0.85)) or
           ((my-age = "elderly") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.95))
    [become-symp-or-severely-symp] [set next-infection-stage "asymptomatic"] ]

   if vaccine-infectiousness = True [
    ifelse vaccinated? = true [set next-infection-stage "asymptomatic"][
          ifelse ((my-age = "child") and (my-population = "Rohingya") and (randomizer-chance <= 0.18)) or  ; SENSITIVITY!!
           ((my-age = "child") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.18)) or

           ((my-age = "young adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.50)) or
           ((my-age = "young adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.55)) or

           ((my-age = "older adult") and (my-population = "Rohingya") and (randomizer-chance <= 0.70)) or
           ((my-age = "older adult") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.75)) or

           ((my-age = "elderly") and (my-population = "Rohingya") and (randomizer-chance <= 0.85)) or
           ((my-age = "elderly") and (my-population = "Bangladeshi") and (randomizer-chance <= 0.95))
    [become-symp-or-severely-symp] [set next-infection-stage "asymptomatic"]
    ]]]

    if vaccinated? = True [
    set infected? true
    set infection-stage "exposed"
    set next-infection-stage "asymptomatic & vaccinated"
    set time-until-next-infection-stage incubation-time

    set place-of-infection min-one-of facilities [distance myself]
    ifelse any? vicinity-markets in-radius (1.5 / patch-length) [
    set cum-infections-vicinity-market cum-infections-vicinity-market + 1
    ] [
    ifelse any? in-camp-markets in-radius (1.5 / patch-length)   [
      set cum-infections-incamp-markets cum-infections-incamp-markets + 1
     ] [
      if any? in-camp-facilities in-radius (1.5 / patch-length)  [
        set cum-infections-incamp-facilities cum-infections-incamp-facilities + 1
    ] ] ]

    set cum-daily-infected-today cum-daily-infected-today + 1

  if my-population = "Rohingya" [set cum-exposed-rohingyas cum-exposed-rohingyas + 1
                                 set cum-infected-vaccinated cum-infected-vaccinated + 1
                                 set cum-infected-rohingyas cum-infected-rohingyas + 1
  ]
   if my-population = "Bangladeshi" [set cum-exposed-hosts cum-exposed-hosts + 1
                                     set cum-infected-hosts cum-infected-hosts + 1
                                     set cum-infected-vaccinated cum-infected-vaccinated + 1
  ]
  ifelse my-age = "child" [
    set cum-exposed-children cum-exposed-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-exposed-ya cum-exposed-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-exposed-oa cum-exposed-oa + 1 ] [
           if my-age = "elderly" [
            set cum-exposed-eld cum-exposed-eld + 1
]]]]

    set color red
  ]]

end


to become-symp-or-severely-symp
  let chance random-float 1
  ifelse my-age = "child" [
    let chance-to-get-moderate-symptomatic 0.98
    let chance-to-get-severely-symptomatic 0.02
    let chance-to-get-hospitalized 0.0000001

    ifelse chance <= chance-to-get-hospitalized [
      set next-infection-stage "critically symptomatic" ] [

      ifelse (chance <= chance-to-get-severely-symptomatic and chance > chance-to-get-hospitalized) [
        set next-infection-stage "severely symptomatic" ][

        if chance > chance-to-get-severely-symptomatic [
          set next-infection-stage "symptomatic"           ] ] ]

  ] [
    ifelse my-age = "young adult" [
    let chance-to-get-moderate-symptomatic 0.95
    let chance-to-get-severely-symptomatic 0.05
    let chance-to-get-hospitalized 0.0000001
    ifelse chance <= chance-to-get-hospitalized [
      set next-infection-stage "critically symptomatic" ] [

      ifelse (chance <= chance-to-get-severely-symptomatic and chance > chance-to-get-hospitalized) [
        set next-infection-stage "severely symptomatic" ][

        if chance > chance-to-get-severely-symptomatic [
          set next-infection-stage "symptomatic"           ] ] ]
    ] [
      ifelse my-age = "older adult" [
    let chance-to-get-moderate-symptomatic 0.75
    let chance-to-get-severely-symptomatic 0.23
    let chance-to-get-hospitalized 0.02
    ifelse chance <= chance-to-get-hospitalized [
      set next-infection-stage "critically symptomatic" ] [

      ifelse (chance <= chance-to-get-severely-symptomatic and chance > chance-to-get-hospitalized) [
        set next-infection-stage "severely symptomatic" ][

        if chance > chance-to-get-severely-symptomatic [
          set next-infection-stage "symptomatic"           ] ] ]
      ] [
        if my-age = "elderly" [
    let chance-to-get-moderate-symptomatic 0.63
    let chance-to-get-severely-symptomatic 0.34
    let chance-to-get-hospitalized 0.03
    ifelse chance <= chance-to-get-hospitalized [
      set next-infection-stage "critically symptomatic" ] [

      ifelse (chance <= chance-to-get-severely-symptomatic and chance > chance-to-get-hospitalized) [
        set next-infection-stage "severely symptomatic" ][

        if chance > chance-to-get-severely-symptomatic [
          set next-infection-stage "symptomatic"           ] ] ]

        ]
  ]]]
end

to become-asymptomatic-test
      set infection-stage "asymptomatic"
      set color yellow
      set next-infection-stage "recovered"
      ;set cum-daily-infected-today cum-daily-infected-today + 1
      set time-until-next-infection-stage (24 * 6)  ;* (precision (1.5 - random-float(1)) 1)  ; SENSITIVITY
      ifelse my-population = "Rohingya" [set cum-asymptomatic-rohingyas cum-asymptomatic-rohingyas + 1] [set cum-asymptomatic-hosts cum-asymptomatic-hosts + 1]
      set cum-asymptomatic cum-asymptomatic + 1
  ifelse my-age = "child" [
    set cum-asymptomatic-children cum-asymptomatic-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-asymptomatic-ya cum-asymptomatic-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-asymptomatic-oa cum-asymptomatic-oa + 1 ] [
           if my-age = "elderly" [
            set cum-asymptomatic-eld cum-asymptomatic-eld + 1
]]]]
end

to become-asymptomatic-vaccinated
      set infection-stage "asymptomatic & vaccinated"
      set color white
      set next-infection-stage "recovered & vaccinated"
      ;set cum-daily-infected-today cum-daily-infected-today + 1
      set time-until-next-infection-stage (24 * 6)  ;* (precision (1.5 - random-float(1)) 1)  ; SENSITIVITY
      ifelse my-population = "Rohingya" [set cum-asymptomatic-vaccinated-rohingyas cum-asymptomatic-vaccinated-rohingyas + 1] [set cum-asymptomatic-vaccinated-hosts cum-asymptomatic-vaccinated-hosts + 1]
      set cum-asymptomatic-vaccinated cum-asymptomatic-vaccinated + 1
  ifelse my-age = "child" [
    set cum-asymptomatic-children cum-asymptomatic-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-asymptomatic-ya cum-asymptomatic-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-asymptomatic-oa cum-asymptomatic-oa + 1 ] [
           if my-age = "elderly" [
            set cum-asymptomatic-eld cum-asymptomatic-eld + 1
]]]]
end

to become-moderately-sympthomatic
      set infection-stage "symptomatic"
      set color cyan
      let randomizer-chance-death random-float 1
      ;set cum-daily-infected-today cum-daily-infected-today + 1
      ifelse my-population = "Rohingya" [
      ifelse randomizer-chance-death <= 0.022                               ; death chance for rohingyas is 0.022%  --> leeftijdsspecifieker??
         [set next-infection-stage "dead"]
         [set next-infection-stage "recovered"] ] [
          ifelse randomizer-chance-death < 0.011
            [set next-infection-stage "dead"]
            [set next-infection-stage "recovered"] ]
      set time-until-next-infection-stage (24 * 6 ) ;* (precision (1.5 - random-float(1)) 1)  ; SENSITIVITY                         ; 6 dagen ziek, 24 uur tot je herstelt of dood gaat
      ;set destination "isolation"
      ifelse my-population = "Rohingya" [set cum-symptomatic-rohingyas cum-symptomatic-rohingyas + 1] [set cum-symptomatic-hosts cum-symptomatic-hosts + 1]
      set cum-symptomatic cum-symptomatic + 1
    ifelse my-age = "child" [
    set cum-symptomatic-children cum-symptomatic-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-symptomatic-ya cum-symptomatic-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-symptomatic-oa cum-symptomatic-oa + 1 ] [
           if my-age = "elderly" [
            set cum-symptomatic-eld cum-symptomatic-eld + 1
]]]]
end

to become-severely-symptomatic-test
      set infection-stage "severely symptomatic"
      set color cyan
      let randomizer-chance-death random-float 1
      ;set cum-daily-infected-today cum-daily-infected-today + 1
      ifelse my-population = "Rohingya" [
      ifelse randomizer-chance-death <= (0.022  * 2)                             ; death chance for rohingyas is 0.022%  --> leeftijdsspecifieker??
         [set next-infection-stage "dead"]
         [set next-infection-stage "recovered"] ] [
          ifelse randomizer-chance-death < (0.011 * 3)
            [set next-infection-stage "dead"]
            [set next-infection-stage "recovered"] ]
      set time-until-next-infection-stage (24 * 6 ) ;* (precision (1.5 - random-float(1)) 1)  ; SENSITIVITY                         ; 6 dagen ziek, 24 uur tot je herstelt of dood gaat
      ;set destination "isolation"
      ifelse my-population = "Rohingya" [set cum-severely-symptomatic-rohingyas cum-severely-symptomatic-rohingyas + 1] [set cum-severely-symptomatic-hosts cum-severely-symptomatic-hosts + 1]
      set cum-severely-symptomatic cum-severely-symptomatic + 1
    ifelse my-age = "child" [
    set cum-severely-symptomatic-children cum-severely-symptomatic-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-severely-symptomatic-ya cum-severely-symptomatic-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-severely-symptomatic-oa cum-severely-symptomatic-oa + 1 ] [
           if my-age = "elderly" [
            set cum-severely-symptomatic-eld cum-severely-symptomatic-eld + 1
]]]]
end

to become-critically-symptomatic-test
      set infection-stage "critically symptomatic"
      set color cyan
      let randomizer-chance-death random-float 1
      ;set cum-daily-infected-today cum-daily-infected-today + 1
      ifelse my-population = "Rohingya" [
      ifelse randomizer-chance-death <= ( 0.022 * 3)                               ; death chance for rohingyas is 0.022%  --> leeftijdsspecifieker??
         [set next-infection-stage "dead"]
         [set next-infection-stage "recovered"] ] [
          ifelse randomizer-chance-death < (0.011 * 3)
            [set next-infection-stage "dead"]
            [set next-infection-stage "recovered"] ]
      set time-until-next-infection-stage (24 * 6 ) ;* (precision (1.5 - random-float(1)) 1)  ; SENSITIVITY                         ; 6 dagen ziek, 24 uur tot je herstelt of dood gaat
      ;set destination "isolation"
      ifelse my-population = "Rohingya" [set cum-critically-symptomatic-rohingyas cum-critically-symptomatic-rohingyas + 1] [set cum-critically-symptomatic-hosts cum-critically-symptomatic-hosts + 1]
      set cum-critically-symptomatic cum-critically-symptomatic + 1
    ifelse my-age = "child" [
    set cum-critically-symptomatic-children cum-critically-symptomatic-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-critically-symptomatic-ya cum-critically-symptomatic-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-critically-symptomatic-oa cum-critically-symptomatic-oa + 1 ] [
           if my-age = "elderly" [
            set cum-critically-symptomatic-eld cum-critically-symptomatic-eld + 1
]]]]
end

to become-recovered-test
      set infection-stage "recovered"

      set next-infection-stage "I am immune"
      set time-until-next-infection-stage "I am immune"                           ; 6 dagen ziek, 24 uur tot je herstelt of dood gaat
      set infected? false
      if patch-here != myhome [
        set destination myhome
        set walker? true
        set occupancy "free" ]
      ifelse my-population = "Rohingya" [
    set cum-recovered-rohingyas cum-recovered-rohingyas + 1] [
    set cum-recovered-hosts cum-recovered-hosts + 1
    set current-recovered-host current-recovered-host + 1
    set am-i-immune? "yes"
    set time-until-reinfectious 1000000 ];(random(1440) + 14)]                                             ; after two month's the host gets reinfectious again.
      set cum-recovered cum-recovered + 1
  ifelse my-age = "child" [
    set cum-recovered-children cum-recovered-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-recovered-ya cum-recovered-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-recovered-oa cum-recovered-oa + 1 ] [
           if my-age = "elderly" [
            set cum-recovered-eld cum-recovered-eld + 1
]]]]
end

to become-recovered-vaccinated
      set infection-stage "I am vaccinated"
      set next-infection-stage "I am vaccinated"
      set time-until-next-infection-stage "I am vaccinated"
      set infected? false
      set vaccinated? true
      set color 72
      set cum-recovered-vaccinated cum-recovered-vaccinated + 1
end

to become-infectious-again
  set infection-stage "susceptible"
  set next-infection-stage "exposed"
  set am-i-immune? "no"
  set cum-recovered cum-recovered - 1
  set cum-susceptible cum-susceptible + 1
  set time-until-next-infection-stage 0
  set color blue
end

to become-dead-test
    set infection-stage "dead"
    set next-infection-stage "I am dead"
    set time-until-next-infection-stage "I am dead"                           ; 6 dagen ziek, 24 uur tot je herstelt of dood gaat
    set cum-dead cum-dead + 1
    ifelse my-age = "child" [
    set cum-dead-children cum-dead-children + 1 ] [
    ifelse my-age = "young adult" [
      set cum-dead-ya cum-dead-ya + 1 ] [
        ifelse my-age = "older adult" [
          set cum-dead-oa cum-dead-oa + 1 ] [
           if my-age = "elderly" [
            set cum-dead-eld cum-dead-eld + 1
]]]]
    ifelse my-population = "Rohingya" [
       set cum-dead-rohingyas cum-dead-rohingyas + 1
       let dying self
       if patch-here = myhome [
         let to-remove position [my-age] of dying sick-household
  ] ] [

       set cum-dead-hosts cum-dead-hosts + 1
       die ]
end

to-report incubation-time
  let sigma 2.1
  let mu 5.5
  let incubationperiod (exp random-normal ln(mu) ln(sqrt(sigma)))
  let pre-symptomatic-infectious-time ((random 24) + 24) ;; 1-2 days before symptom onset, people become infectious
  report round ((incubationperiod * 24) - pre-symptomatic-infectious-time)
end

to count-roh-pop
  ask tents with [color = blue] [
    let number householdsize
    set numrohingyas numrohingyas  + number
    set cum-susceptible cum-susceptible + number ]
end

to hatch-everyone
  let vaccinatable-tents tents with [length(household) != 0 and color = blue]
  if any? vaccinatable-tents [

  let x 0
  while [x <= 7] [

  ask vaccinatable-tents with [length(household) = x] [
    set color 122
    let counter 0
    while [counter <= (x - 1)] [
    let person item counter household
    hatch 1 [
        set my-age item counter household
        set infected? false
        set vaccinated? false
        set color 18
        set householdsize x
        ifelse prioritizaiton-strategy-population = "Bangladesh-only" [set can-i-get-vaccinated-pop "no"][set can-i-get-vaccinated-pop "yes"]
         ]
    set counter counter + 1
    ]
    set household [ ]

  ]
      set x x + 1 ]]



  ask hosts with [infected? = false and vaccinated? = false and next-infection-stage != "I am immune"] [
    set color 18
    ifelse prioritizaiton-strategy-population = "Rohingyas-only" [set can-i-get-vaccinated-pop "no"][set can-i-get-vaccinated-pop "yes"]
  ]
  set populations (turtle-set tents hosts)
end

to bundle-everyone
  ask tents with [color = 122] [ ;householdsize = x
  ask tents with [vaccinated? = true] [
        ask tents with [new-vaccinated-household != "true"] in-radius 0
        [set vaccinated-household lput ([my-age] of myself) vaccinated-household]
    ask tents with [new-vaccinated-household = "true"] in-radius 0

      [set vaccinated-household lput ([my-age] of myself) vaccinated-household]
      die]
  ask tents with [new-vaccinated-household = "true"] [
    if vaccinated-household = [ ] [die]
   ]

  ask tents with [vaccinated? = false and color = 18] [
      ask tents with [color = 122] in-radius 0
      [set household lput ([my-age] of myself) household] die]

  ask tents with [color = 122] [set color blue ]
  ]

  ask hosts with [color = 18] [
    if vaccinated? = False [set color blue] ]

end

;;;;;;;;;;;;;;;;;;;;;;;VACCINES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to hatch-to-vaccinated-or-immune ;x
  ask tents with [color != blue and infected? = false and walker? = false] [
    ask tents with [color = blue] in-radius 0 [set vaccinated-household lput ([my-age] of myself) vaccinated-household set color blue]
    die ] stop
end

to determine-first-batch-of-vaccines
  if scarcity-scenario = "60%" [set available-vaccines round(initial-available-vaccines-batch1 * 0.6)]
  if scarcity-scenario = "80%" [set available-vaccines round(initial-available-vaccines-batch1 * 0.8)]
  if scarcity-scenario = "120%" [set available-vaccines round(initial-available-vaccines-batch1 * 1.2)]
  if scarcity-scenario = "140%" [set available-vaccines round(initial-available-vaccines-batch1 * 1.4)]
  if scarcity-scenario = "100% (15% of pop)" [set available-vaccines initial-available-vaccines-batch1]
  if scarcity-scenario = "133% (20% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 1.33)]
  if scarcity-scenario = "200% (30% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 2)]
  if scarcity-scenario = "270% (40% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 2.7)]
  if scarcity-scenario = "330% (50% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 3.3)]
  if scarcity-scenario = "400% (60% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 4)]
  if scarcity-scenario = "460% (70% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 4.6)]
  if scarcity-scenario = "66% (10% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 0.66)]
  if scarcity-scenario = "166% (25% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 1.66)]
  if scarcity-scenario = "235% (35% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 2.35)]
  if scarcity-scenario = "300% (45% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 3)]
  if scarcity-scenario = "365% (55% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 3.65)]
  if scarcity-scenario = "430% (65% of pop)" [set available-vaccines round(initial-available-vaccines-batch1 * 430)]
end

to determine-vaccine-batches
  if Day = 1 and Hour = 5 and Minute = 0 [
      hatch-everyone
      allocate-vaccines
      update-kpi
      bundle-everyone ]

  if Day = 30 and Hour = 5 and Minute = 0 [
  if scarcity-scenario = "100% (15% of pop)" [set available-vaccines initial-available-vaccines-batch2]
  if scarcity-scenario = "133% (20% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 1.33)]
  if scarcity-scenario = "200% (30% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 2)]
  if scarcity-scenario = "270% (40% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 2.7)]
  if scarcity-scenario = "330% (50% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 3.3)]
  if scarcity-scenario = "400% (60% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 4)]
  if scarcity-scenario = "460% (70% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 4.6)]
  if scarcity-scenario = "60%" [set available-vaccines round(initial-available-vaccines-batch2 * 0.6)]
  if scarcity-scenario = "80%" [set available-vaccines round(initial-available-vaccines-batch2 * 0.8)]
  if scarcity-scenario = "120%" [set available-vaccines round(initial-available-vaccines-batch2 * 1.2)]
  if scarcity-scenario = "140%" [set available-vaccines round(initial-available-vaccines-batch2 * 1.4)]
  if scarcity-scenario = "66% (10% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 0.66)]
  if scarcity-scenario = "166% (25% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 1.66)]
  if scarcity-scenario = "235% (35% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 2.35)]
  if scarcity-scenario = "300% (45% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 3)]
  if scarcity-scenario = "365% (55% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 3.65)]
  if scarcity-scenario = "430% (65% of pop)" [set available-vaccines round(initial-available-vaccines-batch2 * 430)]

    set available-vaccines round(initial-available-vaccines-batch2)
    ;set-available-number-of-vaccines-AGE-BASED
    hatch-everyone
    allocate-vaccines
    update-kpi
    bundle-everyone ]

  if Day = 60 and Hour = 5 and Minute = 0 [
  if scarcity-scenario = "100% (15% of pop)" [set available-vaccines initial-available-vaccines-batch3]
  if scarcity-scenario = "133% (20% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 1.33)]
  if scarcity-scenario = "200% (30% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 2)]
  if scarcity-scenario = "270% (40% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 2.7)]
  if scarcity-scenario = "330% (50% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 3.3)]
  if scarcity-scenario = "400% (60% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 4)]
  if scarcity-scenario = "460% (70% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 4.6)]
  if scarcity-scenario = "60%" [set available-vaccines round(initial-available-vaccines-batch3 * 0.6)]
  if scarcity-scenario = "80%" [set available-vaccines round(initial-available-vaccines-batch3 * 0.8)]
  if scarcity-scenario = "120%" [set available-vaccines round(initial-available-vaccines-batch3 * 1.2)]
  if scarcity-scenario = "140%" [set available-vaccines round(initial-available-vaccines-batch3 * 1.4)]
  if scarcity-scenario = "66% (10% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 0.66)]
  if scarcity-scenario = "166% (25% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 1.66)]
  if scarcity-scenario = "235% (35% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 2.35)]
  if scarcity-scenario = "300% (45% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 3)]
  if scarcity-scenario = "365% (55% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 3.65)]
  if scarcity-scenario = "430% (65% of pop)" [set available-vaccines round(initial-available-vaccines-batch3 * 430)]

    set available-vaccines round(initial-available-vaccines-batch3)
    ;set-available-number-of-vaccines-AGE-BASED
    hatch-everyone
    allocate-vaccines
    update-kpi
    bundle-everyone ]
end

to allocate-vaccines
  ifelse available-vaccines = 0 [ stop ] [                                                                                           ; allocate as long as there are vaccines

  if Prioritization-strategy = "Age-based: elderly,  older adults, young adults, children" [age-based-strategy]                      ; strategy 1
  if Prioritization-strategy ="Age-based: children, young adults, older adults, elderly" [age-based-strategy]                        ; strategy 2
  if Prioritization-strategy = "Equalizing strategy" [equalizing-strategy]                                                           ; strategy 3
  if Prioritization-strategy = "Skip the Rohingyas" [ set prioritizaiton-strategy-population "Bangladesh-only" age-based-strategy]   ; strategy 4
  if Prioritization-strategy =  "Age-based transmission: young, older adults, children, elderly" [age-based-strategy]                ; strategy 5

  set cum-vaccinated-children cum-vaccinated-rohingyas-children + cum-vaccinated-hosts-children
  set cum-vaccinated-young-adults cum-vaccinated-rohingyas-young-adults + cum-vaccinated-hosts-young-adults
  set cum-vaccinated-older-adults cum-vaccinated-rohingyas-older-adults + cum-vaccinated-hosts-older-adults
  set cum-vaccinated-elderly  cum-vaccinated-rohingyas-elderly + cum-vaccinated-hosts-elderly
  ]

end



; Strategy 3
to equalizing-strategy
  let vaccinatable-people populations with [color = 18 and can-i-get-vaccinated-pop = "yes"]
  if any? vaccinatable-people [
    ask n-of number-of-people-that-will-be-vaccinated-equalizing vaccinatable-people [
      get-vaccinated
      ]
    ]

end

; Strategy 1, 2, 4, 5

to age-based-strategy
  let vaccinatable-children populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "child"]
  let vaccinatable-young-adults populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "young adult"]
  let vaccinatable-older-adults populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "older adult"]
  let vaccinatable-elderly populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "elderly"]

  if Prioritization-strategy = "Age-based: children, young adults, older adults, elderly" [
    set prioritizaiton-strategy-population "equal"
    if any?  vaccinatable-children [
    ask n-of n-of-strategy-7-children vaccinatable-children [
      get-vaccinated

    ] ]
    if any?  vaccinatable-young-adults [
     ask n-of n-of-strategy-7-young-adults vaccinatable-young-adults [
      get-vaccinated

    ] ]
    if any?  vaccinatable-older-adults [
     ask n-of n-of-strategy-7-older-adults vaccinatable-older-adults [
      get-vaccinated

    ] ]
    if any?  vaccinatable-elderly [
     ask n-of n-of-strategy-7-elderly vaccinatable-elderly [
      get-vaccinated

    ] ]
  ]

  if Prioritization-strategy = "Age-based transmission: young, older adults, children, elderly" [
    set prioritizaiton-strategy-population "equal"
 if any?  vaccinatable-young-adults [
     ask n-of n-of-strategy-7-young-adults vaccinatable-young-adults [
      get-vaccinated

    ] ]
        if any?  vaccinatable-older-adults [
     ask n-of n-of-strategy-7-older-adults vaccinatable-older-adults [
      get-vaccinated

    ] ]
    if any?  vaccinatable-children [
    ask n-of n-of-strategy-7-children vaccinatable-children [
      get-vaccinated

    ] ]
    if any?  vaccinatable-elderly [
     ask n-of n-of-strategy-7-elderly vaccinatable-elderly [
      get-vaccinated

    ] ]
  ]

  if Prioritization-strategy = "Age-based: young adults, children, older adults, elderly" [
    set prioritizaiton-strategy-population "equal"
     if any?  vaccinatable-young-adults [
     ask n-of n-of-strategy-7-young-adults vaccinatable-young-adults [
      get-vaccinated

    ] ]
    if any?  vaccinatable-children [
    ask n-of n-of-strategy-7-children vaccinatable-children [
      get-vaccinated
    ] ]
    if any?  vaccinatable-older-adults [
     ask n-of n-of-strategy-7-older-adults vaccinatable-older-adults [
      get-vaccinated

    ] ]
    if any?  vaccinatable-elderly [
     ask n-of n-of-strategy-7-elderly vaccinatable-elderly [
      get-vaccinated

    ] ]
  ]


   if Prioritization-strategy = "Age-based: elderly,  older adults, young adults, children" [
    set prioritizaiton-strategy-population "equal"
    if any?  vaccinatable-elderly [
     ask n-of n-of-strategy-7-elderly vaccinatable-elderly [
      get-vaccinated


    ] ]
    if any?  vaccinatable-older-adults [
     ask n-of n-of-strategy-7-older-adults vaccinatable-older-adults [
      get-vaccinated

    ] ]
    if any?  vaccinatable-young-adults [
     ask n-of n-of-strategy-7-young-adults vaccinatable-young-adults [
      get-vaccinated


    ] ]

    if any?  vaccinatable-children [
    ask n-of n-of-strategy-7-children vaccinatable-children [
      get-vaccinated

  ] ] ]

     if Prioritization-strategy = "Skip the Rohingyas" [

    if any?  vaccinatable-elderly [
     ask n-of n-of-strategy-7-elderly vaccinatable-elderly [
      get-vaccinated


    ] ]
    if any?  vaccinatable-older-adults [
     ask n-of n-of-strategy-7-older-adults vaccinatable-older-adults [
      get-vaccinated

    ] ]
    if any?  vaccinatable-young-adults [
     ask n-of n-of-strategy-7-young-adults vaccinatable-young-adults [
      get-vaccinated


    ] ]

    if any?  vaccinatable-children [
    ask n-of n-of-strategy-7-children vaccinatable-children [
      get-vaccinated

  ] ] ]




end


to get-vaccinated
  ifelse my-population = "Rohingya" [
      set infection-stage "I am vaccinated"
      set next-infection-stage "I am vaccinated"
      set time-until-next-infection-stage "I am vaccinated"
      set infected? false
      set vaccinated? true
      set color 72
      set vaccinated-household lput my-age vaccinated-household
      set available-vaccines (available-vaccines - 1)
      set cum-vaccinated-rohingyas cum-vaccinated-rohingyas + 1
      set cum-vaccinated cum-vaccinated + 1
      ifelse my-age = "child" [
        set cum-vaccinated-rohingyas-children cum-vaccinated-rohingyas-children + 1] [

      ifelse my-age = "young adult" [
        set cum-vaccinated-rohingyas-young-adults cum-vaccinated-rohingyas-young-adults + 1] [

      ifelse my-age = "older adult" [
        set cum-vaccinated-rohingyas-older-adults cum-vaccinated-rohingyas-older-adults + 1] [

      if my-age = "elderly" [
        set cum-vaccinated-rohingyas-elderly cum-vaccinated-rohingyas-elderly + 1]
  ] ] ] ]
  [
      set infection-stage "I am vaccinated"
      set next-infection-stage "I am vaccinated"
      set time-until-next-infection-stage "I am vaccinated"
      set infected? false
      set vaccinated? true
      set color 72
      set available-vaccines (available-vaccines - 1)
      set cum-vaccinated-hosts cum-vaccinated-hosts + 1
      set cum-vaccinated cum-vaccinated + 1
      set can-i-get-vaccinated-pop "no"
      ifelse my-age = "child" [
        set cum-vaccinated-hosts-children cum-vaccinated-hosts-children + 1] [

      ifelse my-age = "young adult" [
        set cum-vaccinated-hosts-young-adults cum-vaccinated-hosts-young-adults + 1] [

      ifelse my-age = "older adult" [
        set cum-vaccinated-hosts-older-adults cum-vaccinated-hosts-older-adults + 1] [

      if my-age = "elderly" [
        set cum-vaccinated-hosts-elderly cum-vaccinated-hosts-elderly + 1]
  ] ] ]
  ]

end

; EQUALIZING STRATEGY REPORT:
to-report number-of-people-that-will-be-vaccinated-equalizing
  let vaccinatable-people populations with [color = 18 and can-i-get-vaccinated-pop = "yes"]                                             ; de te vaccineren hosts:
  let number-of-vaccinatable-people count (vaccinatable-people)                                                                                                                                       ; de aantallen:

  if prioritization-strategy = "Focus & equalizing strategy strategy" or
     prioritization-strategy = "Equalizing strategy"  or
     prioritization-strategy = "Transmission-group" [
     ifelse available-vaccines <= 0 [report 0] [
      ifelse available-vaccines <= number-of-vaccinatable-people [
        report (available-vaccines)][
        report number-of-vaccinatable-people] ] ]
end

to-report n-of-strategy-7-children
  let vaccinatable-children populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "child"]
  let number-vaccinatable-children count(vaccinatable-children)
  ifelse available-vaccines > number-vaccinatable-children [
    report number-vaccinatable-children][
    report available-vaccines]
end


to-report n-of-strategy-7-young-adults
  let vaccinatable-young-adults populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "young adult"]
  let number-vaccinatable-young-adults count(vaccinatable-young-adults)
  ifelse available-vaccines > number-vaccinatable-young-adults [
    report number-vaccinatable-young-adults][
    report available-vaccines]
end


to-report n-of-strategy-7-older-adults
  let vaccinatable-older-adults populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "older adult"]
  let number-vaccinatable-older-adults count(vaccinatable-older-adults)
  ifelse available-vaccines > number-vaccinatable-older-adults [
    report number-vaccinatable-older-adults][
    report available-vaccines]
end


to-report n-of-strategy-7-elderly
  let vaccinatable-elderly populations with [color = 18 and can-i-get-vaccinated-pop = "yes" and my-age = "elderly"]
  let number-vaccinatable-elderly count(vaccinatable-elderly)
  ifelse available-vaccines > number-vaccinatable-elderly [
    report number-vaccinatable-elderly][
    report available-vaccines]
end
@#$#@#$#@
GRAPHICS-WINDOW
476
33
976
534
-1
-1
12.0
1
10
1
1
1
0
1
1
1
-20
20
-20
20
0
0
1
ticks
30.0

BUTTON
21
33
84
66
NIL
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
22
241
166
286
model-environment
model-environment
"Nayapara Block B" "Test block" "One!"
0

MONITOR
0
791
116
836
 Rohingya shelters
count tents with [color = blue and shape = \"campsite\"]
17
1
11

BUTTON
86
33
159
66
NIL
gogogo
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
40
71
97
116
NIL
Day?
17
1
11

MONITOR
41
119
98
164
NIL
Minute
17
1
11

MONITOR
98
119
155
164
NIL
Hour
17
1
11

MONITOR
97
71
154
116
NIL
Day
17
1
11

CHOOSER
260
404
441
449
Lockdown-type
Lockdown-type
"no lockdown" "conditional lockdown" "unconditional lockdown"
0

SLIDER
260
486
441
519
strictness-of-conditional-lockdown
strictness-of-conditional-lockdown
0
10
5.0
1
1
NIL
HORIZONTAL

PLOT
983
374
1206
541
Interactions (cum)
Time
Host community
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Vicinity market" 1.0 0 -16777216 true "" "plot cum-hosts-at-vicinity-market-D"
"In-camp market" 1.0 0 -7500403 true "" "plot cum-hosts-at-in-camp-market-D"
"Vicinity market Roh." 1.0 0 -2674135 true "" "plot cum-rohingyas-at-vicinity-market-D"
"In-camp market Roh." 1.0 0 -955883 true "" "plot cum-rohingyas-at-in-camp-market-D"
"In-camp facility" 1.0 0 -6459832 true "" "plot cum-rohingyas-at-in-camp-facilities-D"

MONITOR
154
71
219
116
NIL
Day-of-the-week
17
1
11

PLOT
1219
30
1444
180
Disease progression
Time
People
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Exposed" 1.0 0 -10141563 true "" "plot   current-exposed-D\n  "
"Asymptomatic" 1.0 0 -1184463 true "" "plot current-asymptomatic-D\n"
"Symptomatic" 1.0 0 -955883 true "" "plot  current-symptomatic-D\n  \n"
"Severe" 1.0 0 -2674135 true "" "plot current-severly-symptomatic-D\n  "
"Critically" 1.0 0 -10146808 true "" "plot current-critically-symptomatic-D"

CHOOSER
22
319
246
364
measure-inside-camp
measure-inside-camp
"send out random" "send out healthy or vaccinated if possible" "send out vaccinated if possible"
0

CHOOSER
22
366
149
411
Type-of-compliance
Type-of-compliance
"yes, only stay-at-home" "yes, only wearing a mask" "yes, both staying home and wearing a mask" "no"
3

CHOOSER
259
32
466
77
Prioritization-strategy
Prioritization-strategy
"no strategy" "Age-based: elderly,  older adults, young adults, children" "Age-based: children, young adults, older adults, elderly" "Equalizing strategy" "Skip the Rohingyas" "Age-based transmission: young, older adults, children, elderly"
1

SLIDER
261
127
466
160
initial-available-vaccines-batch1
initial-available-vaccines-batch1
0
2000
180.0
10
1
vaccines
HORIZONTAL

MONITOR
1640
640
1753
685
NIL
available-vaccines
17
1
11

MONITOR
0
640
113
685
Total nr. of  Rohingyas
numrohingyas
17
1
11

MONITOR
5
690
115
735
Total nr of hosts
numhosts
17
1
11

MONITOR
5
740
114
785
Total Population
Population-total
17
1
11

MONITOR
655
647
787
692
NIL
vaccination-coverage
17
1
11

MONITOR
657
745
787
790
NIL
group-immunity
17
1
11

MONITOR
654
697
770
742
NIL
recovered-percentage
17
1
11

MONITOR
387
745
502
790
Total infected
cum-infected
17
1
11

TEXTBOX
7
618
148
639
Population KPI's
17
15.0
1

MONITOR
505
745
644
790
Total interactions
cum-interactions
17
1
11

MONITOR
507
696
644
741
Total interactions hosts
cum-interactions-hosts
17
1
11

MONITOR
505
647
644
692
Total interactions Roh.
cum-interactions-rohingyas
17
1
11

MONITOR
386
647
505
692
Total infected Roh.
cum-infected-rohingyas
17
1
11

MONITOR
386
697
509
742
Total infected hosts
cum-infected-hosts
17
1
11

TEXTBOX
403
619
591
642
Infections:
11
0.0
1

TEXTBOX
522
617
710
640
Interactions:
11
0.0
1

TEXTBOX
662
618
851
642
Immunity coverage:
11
0.0
1

TEXTBOX
811
619
999
642
Vacc. total
11
0.0
1

MONITOR
821
649
871
694
Roh
cum-vaccinated-rohingyas
17
1
11

MONITOR
823
695
873
740
Host
cum-vaccinated-hosts
17
1
11

MONITOR
823
742
873
787
Total
cum-vaccinated
17
1
11

TEXTBOX
891
619
955
642
Pop total
11
0.0
1

MONITOR
876
645
934
690
Roh
numrohingyas
17
1
11

MONITOR
877
695
944
740
Host
numhosts
17
1
11

MONITOR
877
743
944
788
Total
numrohingyas + numhosts
17
1
11

TEXTBOX
956
619
1035
642
Vacc child
11
0.0
1

MONITOR
972
647
1029
692
Roh
cum-vaccinated-rohingyas-children
17
1
11

MONITOR
973
698
1030
743
Host
cum-vaccinated-hosts-children
17
1
11

MONITOR
974
748
1032
793
Total
cum-vaccinated-children
17
1
11

TEXTBOX
1040
619
1123
642
Child total
11
0.0
1

MONITOR
1034
647
1088
692
Roh
number_children
17
1
11

MONITOR
1036
700
1091
745
Host
number_children_hosts
17
1
11

MONITOR
1036
750
1094
795
Total
number_children_hosts +   number_children
17
1
11

TEXTBOX
1120
618
1308
641
Vacc YA\t\t
11
0.0
1

TEXTBOX
1185
618
1373
641
YA total
11
0.0
1

MONITOR
1116
638
1174
683
Roh
cum-vaccinated-rohingyas-young-adults
17
1
11

MONITOR
1116
695
1174
740
Host
cum-vaccinated-hosts-young-adults
17
1
11

MONITOR
1117
746
1177
791
Total
cum-vaccinated-young-adults
17
1
11

MONITOR
1177
639
1241
684
Roh
number_young_adults
17
1
11

MONITOR
1177
692
1235
737
Host
number_youngeradults_hosts
17
1
11

MONITOR
1177
745
1235
790
Total
number_young_adults + number_youngeradults_hosts
17
1
11

TEXTBOX
1261
617
1449
640
Vacc OA
11
0.0
1

TEXTBOX
1330
617
1518
640
OA total
11
0.0
1

MONITOR
1327
640
1385
685
Roh
number_older_adults
17
1
11

MONITOR
1333
695
1391
740
Host
number_olderadults_hosts
17
1
11

MONITOR
1332
745
1390
790
Total
number_older_adults + number_olderadults_hosts
17
1
11

MONITOR
1266
696
1324
741
Host
cum-vaccinated-hosts-older-adults
17
1
11

MONITOR
1267
643
1325
688
Roh
cum-vaccinated-rohingyas-older-adults
17
1
11

MONITOR
1265
746
1325
791
Total
cum-vaccinated-older-adults
17
1
11

TEXTBOX
1404
615
1592
638
Vacc El
11
0.0
1

TEXTBOX
1469
613
1658
637
El tot.
11
0.0
1

MONITOR
1465
640
1523
685
Roh
number_elderly
17
1
11

MONITOR
1470
692
1528
737
Host
number_elderly_hosts
17
1
11

MONITOR
1473
745
1531
790
Total
number_elderly_hosts + number_elderly
17
1
11

MONITOR
1412
742
1470
787
Totoal
cum-vaccinated-elderly
17
1
11

MONITOR
1412
695
1470
740
Host
cum-vaccinated-hosts-elderly
17
1
11

MONITOR
1407
643
1465
688
Roh
cum-vaccinated-rohingyas-elderly
17
1
11

CHOOSER
260
79
467
124
prioritizaiton-strategy-population
prioritizaiton-strategy-population
"equal" "Rohingyas-only" "Bangladesh-only"
0

SWITCH
260
451
350
484
Dynamic-camp-openness?
Dynamic-camp-openness?
1
1
-1000

MONITOR
155
119
219
164
NIL
Week
17
1
11

MONITOR
1143
799
1209
844
Vaccinated
count tents with [walker? = true and vaccinated? = true]
17
1
11

MONITOR
1253
797
1313
842
Infected
count tents with [walker? = true and infected? = true]
17
1
11

MONITOR
1337
797
1394
842
Healthy
count tents with [walker? = true and infected? = false and vaccinated? = false]
17
1
11

MONITOR
1673
690
1767
735
% In. infected
precision (cum-infected / Population-total  * 100) 2
17
1
11

CHOOSER
260
521
439
566
R0-strictness
R0-strictness
"low" "moderate" "high"
2

SLIDER
261
162
466
195
initial-available-vaccines-batch2
initial-available-vaccines-batch2
0
2000
390.0
10
1
NIL
HORIZONTAL

SLIDER
262
197
468
230
initial-available-vaccines-batch3
initial-available-vaccines-batch3
0
2000
410.0
10
1
NIL
HORIZONTAL

CHOOSER
261
335
462
380
scarcity-scenario
scarcity-scenario
"60%" "80%" "140%" "120%" "100% (15% of pop)" "133% (20% of pop)" "200% (30% of pop)" "270% (40% of pop)" "330% (50% of pop)" "400% (60% of pop)" "460% (70% of pop)" "66% (10% of pop)" "166% (25% of pop)" "235% (35% of pop)" "300% (45% of pop)" "365% (55% of pop)" "430% (65% of pop)"
4

SWITCH
261
301
462
334
random-scarcity?
random-scarcity?
1
1
-1000

SWITCH
24
512
161
545
random-infections?
random-infections?
1
1
-1000

BUTTON
159
33
232
66
NIL
gogogo
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
1572
745
1685
790
NIL
available-vaccines
17
1
11

SLIDER
22
443
162
476
inf-dist-test
inf-dist-test
0
10
1.5
0.1
1
NIL
HORIZONTAL

MONITOR
1573
640
1637
685
NIL
weekly-R
17
1
11

MONITOR
1572
690
1669
735
NIL
Lockdown-type
17
1
11

CHOOSER
154
366
246
411
Compliance-included?
Compliance-included?
"yes" "no"
1

SWITCH
22
206
187
239
sensitivity-analysis?
sensitivity-analysis?
1
1
-1000

MONITOR
128
640
276
685
NIL
Population-total-children
17
1
11

MONITOR
128
690
248
735
NIL
Population-total-YA
17
1
11

MONITOR
131
740
254
785
NIL
Population-total-OA
17
1
11

MONITOR
132
792
253
837
NIL
Population-total-eld
17
1
11

SWITCH
262
266
463
299
vaccine-infectiousness
vaccine-infectiousness
1
1
-1000

SLIDER
262
231
466
264
vaccine-efficiacy
vaccine-efficiacy
0
1
1.0
0.05
1
NIL
HORIZONTAL

TEXTBOX
263
387
448
417
Camp openness restrictions:
12
0.0
1

TEXTBOX
26
302
212
332
Individual behavior refugees:
12
0.0
1

TEXTBOX
28
427
178
445
COVID settings:
12
0.0
1

PLOT
1210
376
1448
542
Interactions at in-camp facilities
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"In-camp" 1.0 1 -16777216 true "" "plot cum-rohingyas-at-in-camp-facilities-D"

PLOT
986
29
1204
180
Daily cumulative infections
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Eld" 1.0 0 -16777216 true "" "plot cum-infected-eld-D"
"Child" 1.0 0 -7500403 true "" "plot cum-infected-children-D"
"Ya" 1.0 0 -2674135 true "" "plot cum-infected-ya-D"
"OA" 1.0 0 -955883 true "" "plot cum-infected-oa-D"

PLOT
985
183
1204
346
Daily locations of infections
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Vicinity" 1.0 0 -8053223 true "" "plot cum-infections-vicinity-market-D\n"
"In-camp market" 1.0 0 -11221820 true "" "plot cum-infections-incamp-markets-D \n"
"In-camp facility" 1.0 0 -2064490 true "" "plot cum-infections-incamp-facilities-D"

PLOT
1446
28
1682
180
Cum. daily infections per infection type
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Asymp" 1.0 0 -1184463 true "" "plot cum-asymptomatic-D"
"Symp" 1.0 0 -955883 true "" "plot  cum-symptomatic-D"
"Severe" 1.0 0 -2674135 true "" "plot  cum-severely-symptomatic-D"
"Critical" 1.0 0 -10873583 true "" "plot cum-critically-symptomatic-D"
"Exposed" 1.0 0 -14730904 true "" ";plot cum-exposed-D"
"Dead" 1.0 0 -16777216 true "" "plot cum-dead-D "
"Recovered" 1.0 0 -13840069 true "" "plot cum-recovered-D "
"Asymp. Vacc." 1.0 0 -7500403 true "" "plot cum-asymptomatic-vaccinated"

PLOT
1219
183
1455
347
Daily infections per population
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Rohingyas" 1.0 1 -16777216 true "" "plot cum-infected-rohingyas-D"
"Hosts" 1.0 1 -7500403 true "" "plot cum-infected-hosts-D"

TEXTBOX
262
10
412
28
Vaccines:
12
0.0
1

TEXTBOX
1067
354
1217
372
Interactions:
12
0.0
1

TEXTBOX
1072
10
1222
28
Infections:
12
0.0
1

CHOOSER
262
568
439
613
Camp-openness-policy
Camp-openness-policy
"Nothing" "Camp closed for host community" "Limited capacity for markets" "Isolating facilities in different parts" "Education: Only children allowed to go to in-camp facilities" "Health: Keeping elderly at home" "Vaccines: Only vaccinated people allowed at vicinity market" "Vaccines: Only vaccinated hosts can enter the camp"
7

SWITCH
24
479
161
512
No-Rohingyas-infected?
No-Rohingyas-infected?
1
1
-1000

SWITCH
350
451
440
484
days-switch
days-switch
0
1
-1000

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

campsite
false
0
Polygon -7500403 true true 150 11 30 221 270 221
Polygon -16777216 true false 151 90 92 221 212 221
Line -7500403 true 150 30 150 225

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

drop
false
0
Circle -7500403 true true 73 133 152
Polygon -7500403 true true 219 181 205 152 185 120 174 95 163 64 156 37 149 7 147 166
Polygon -7500403 true true 79 182 95 152 115 120 126 95 137 64 144 37 150 6 154 165

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

toilet
false
0
Circle -7500403 true true 75 45 30
Polygon -7500403 true true 75 75 75 135 60 195 60 225 75 225 90 165 105 225 120 225 120 195 105 135 105 75
Polygon -7500403 true true 105 75 135 120 135 135 90 90
Polygon -7500403 true true 75 75 45 120 45 135 90 90
Circle -7500403 true true 195 45 30
Polygon -7500403 true true 195 75 195 135 195 165 180 225 195 225 210 165 225 225 240 225 225 165 225 135 225 75
Polygon -7500403 true true 225 75 255 120 255 135 210 90
Polygon -7500403 true true 195 75 165 120 165 135 210 90
Polygon -7500403 true true 195 90 165 195 255 195 225 90
Rectangle -7500403 false true 15 30 285 240

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wc
false
0
Rectangle -7500403 false true 0 0 285 270
Line -7500403 true 15 45 60 255
Line -7500403 true 60 255 90 120
Line -7500403 true 90 120 120 255
Line -7500403 true 120 255 180 45
Line -7500403 true 270 255 240 255
Line -7500403 true 210 240 195 210
Line -7500403 true 195 210 180 165
Line -7500403 true 180 135 180 165
Line -7500403 true 240 255 210 240
Line -7500403 true 270 45 240 45
Line -7500403 true 240 45 210 60
Line -7500403 true 210 60 195 90
Line -7500403 true 195 90 180 135

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="experimentBASIS" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-asymptomatic-rohingyas</metric>
    <metric>cum-asymptomatic-hosts</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-symptomatic-rohingyas</metric>
    <metric>cum-symptomatic-hosts</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>current-infected</metric>
    <metric>current-exposed</metric>
    <metric>current-asymp</metric>
    <metric>current-asymp-roh</metric>
    <metric>current-asymp-host</metric>
    <metric>current-symp</metric>
    <metric>current-symp-roh</metric>
    <metric>current-symp-host</metric>
    <metric>current-recovered</metric>
    <metric>current-dead</metric>
    <metric>cum-infected-children</metric>
    <metric>cum-infected-ya</metric>
    <metric>cum-infected-oa</metric>
    <metric>cum-infected-eld</metric>
    <metric>vaccination-coverage</metric>
    <metric>recovered-percentage</metric>
    <metric>group-immunity</metric>
    <metric>Weekly-R</metric>
    <metric>available-vaccines</metric>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="R0-strictness">
      <value value="&quot;moderate&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out random&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="initial-available-vaccines-batch1">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="initial-available-vaccines-batch2">
      <value value="390"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="initial-available-vaccines-batch3">
      <value value="410"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="transmission-force">
      <value value="&quot;moderate&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Initially-infected-Rohingyas">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Initially-infected-hosts">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="inf-dist-test">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-infections?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;no strategy&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prioritizaiton-strategy-population">
      <value value="&quot;equal&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="scarcity-scenario">
      <value value="&quot;100%&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-scarcity?">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment15" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-asymptomatic-rohingyas</metric>
    <metric>cum-asymptomatic-hosts</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-symptomatic-rohingyas</metric>
    <metric>cum-symptomatic-hosts</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>current-infected</metric>
    <metric>current-exposed</metric>
    <metric>current-asymp</metric>
    <metric>current-asymp-roh</metric>
    <metric>current-asymp-host</metric>
    <metric>current-symp</metric>
    <metric>current-symp-roh</metric>
    <metric>current-symp-host</metric>
    <metric>current-recovered</metric>
    <metric>current-dead</metric>
    <metric>cum-infected-children</metric>
    <metric>cum-infected-ya</metric>
    <metric>cum-infected-oa</metric>
    <metric>cum-infected-eld</metric>
    <metric>recovered-percentage</metric>
    <metric>group-immunity</metric>
    <metric>Weekly-R</metric>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment23" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-asymptomatic-rohingyas</metric>
    <metric>cum-asymptomatic-hosts</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-symptomatic-rohingyas</metric>
    <metric>cum-symptomatic-hosts</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>cum-infected-children</metric>
    <metric>cum-infected-ya</metric>
    <metric>cum-infected-oa</metric>
    <metric>cum-infected-eld</metric>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
      <value value="&quot;conditional lockdown&quot;"/>
      <value value="&quot;unconditional lockdown&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment24" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-asymptomatic-rohingyas</metric>
    <metric>cum-asymptomatic-hosts</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-symptomatic-rohingyas</metric>
    <metric>cum-symptomatic-hosts</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;yes, only stay-at-home&quot;"/>
      <value value="&quot;yes, only wearing a mask&quot;"/>
      <value value="&quot;yes, both staying home and wearing a mask&quot;"/>
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;yes&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment25" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-asymptomatic-rohingyas</metric>
    <metric>cum-asymptomatic-hosts</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-symptomatic-rohingyas</metric>
    <metric>cum-symptomatic-hosts</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>cum-infected-children</metric>
    <metric>cum-infected-ya</metric>
    <metric>cum-infected-oa</metric>
    <metric>cum-infected-eld</metric>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out random&quot;"/>
      <value value="&quot;send out healthy or vaccinated if possible&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment26" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-asymptomatic-rohingyas</metric>
    <metric>cum-asymptomatic-hosts</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-symptomatic-rohingyas</metric>
    <metric>cum-symptomatic-hosts</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>cum-infected-children</metric>
    <metric>cum-infected-ya</metric>
    <metric>cum-infected-oa</metric>
    <metric>cum-infected-eld</metric>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="1"/>
      <value value="4"/>
      <value value="7"/>
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;conditional lockdown&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment27" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>Lockdown-type</metric>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-asymptomatic-rohingyas</metric>
    <metric>cum-asymptomatic-hosts</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-symptomatic-rohingyas</metric>
    <metric>cum-symptomatic-hosts</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>cum-infected-children</metric>
    <metric>cum-infected-ya</metric>
    <metric>cum-infected-oa</metric>
    <metric>cum-infected-eld</metric>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="R0-strictness">
      <value value="&quot;low&quot;"/>
      <value value="&quot;moderate&quot;"/>
      <value value="&quot;high&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment29" repetitions="30" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>current-infected</metric>
    <metric>cum-infected-children</metric>
    <metric>cum-infected-ya</metric>
    <metric>cum-infected-oa</metric>
    <metric>cum-infected-eld</metric>
    <metric>cum-vaccinated-children</metric>
    <metric>cum-vaccinated-young-adults</metric>
    <metric>cum-vaccinated-older-adults</metric>
    <metric>cum-vaccinated-elderly</metric>
    <metric>cum-susceptible</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: young adults, children, older adults, elderly&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="scarcity-scenario">
      <value value="&quot;60%&quot;"/>
      <value value="&quot;80%&quot;"/>
      <value value="&quot;100%&quot;"/>
      <value value="&quot;120%&quot;"/>
      <value value="&quot;140%&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment30" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-infected</metric>
    <metric>cum-interactions</metric>
    <metric>current-infected</metric>
    <metric>cum-vaccinated-children</metric>
    <metric>cum-vaccinated-young-adults</metric>
    <metric>cum-vaccinated-older-adults</metric>
    <metric>cum-vaccinated-elderly</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prioritizaiton-strategy-population">
      <value value="&quot;equal&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="R0-strictness">
      <value value="&quot;low&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out random&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-infections?">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="scarcity-scenario">
      <value value="&quot;66% (10% of pop)&quot;"/>
      <value value="&quot;100% (15% of pop)&quot;"/>
      <value value="&quot;133% (20% of pop)&quot;"/>
      <value value="&quot;166% (25% of pop)&quot;"/>
      <value value="&quot;200% (30% of pop)&quot;"/>
      <value value="&quot;235% (35% of pop)&quot;"/>
      <value value="&quot;270% (40% of pop)&quot;"/>
      <value value="&quot;330% (50% of pop)&quot;"/>
      <value value="&quot;400% (60% of pop)&quot;"/>
      <value value="&quot;460% (70% of pop)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-scarcity?">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment31" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-infected</metric>
    <metric>cum-interactions</metric>
    <metric>current-infected</metric>
    <metric>cum-vaccinated-children</metric>
    <metric>cum-vaccinated-young-adults</metric>
    <metric>cum-vaccinated-older-adults</metric>
    <metric>cum-vaccinated-elderly</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prioritizaiton-strategy-population">
      <value value="&quot;equal&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="7"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="R0-strictness">
      <value value="&quot;high&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;yes&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;yes, both staying home and wearing a mask&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out vaccinated if possible&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-infections?">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="scarcity-scenario">
      <value value="&quot;66% (10% of pop)&quot;"/>
      <value value="&quot;100% (15% of pop)&quot;"/>
      <value value="&quot;133% (20% of pop)&quot;"/>
      <value value="&quot;166% (25% of pop)&quot;"/>
      <value value="&quot;200% (30% of pop)&quot;"/>
      <value value="&quot;235% (35% of pop)&quot;"/>
      <value value="&quot;270% (40% of pop)&quot;"/>
      <value value="&quot;330% (50% of pop)&quot;"/>
      <value value="&quot;400% (60% of pop)&quot;"/>
      <value value="&quot;460% (70% of pop)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-scarcity?">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment35" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-infected</metric>
    <metric>cum-interactions</metric>
    <metric>current-infected</metric>
    <metric>cum-vaccinated-children</metric>
    <metric>cum-vaccinated-young-adults</metric>
    <metric>cum-vaccinated-older-adults</metric>
    <metric>cum-vaccinated-elderly</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Equalizing strategy&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prioritizaiton-strategy-population">
      <value value="&quot;equal&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="7"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="R0-strictness">
      <value value="&quot;high&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;yes&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;yes, both staying home and wearing a mask&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out vaccinated if possible&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-infections?">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="scarcity-scenario">
      <value value="&quot;66% (10% of pop)&quot;"/>
      <value value="&quot;100% (15% of pop)&quot;"/>
      <value value="&quot;133% (20% of pop)&quot;"/>
      <value value="&quot;166% (25% of pop)&quot;"/>
      <value value="&quot;200% (30% of pop)&quot;"/>
      <value value="&quot;235% (35% of pop)&quot;"/>
      <value value="&quot;270% (40% of pop)&quot;"/>
      <value value="&quot;330% (50% of pop)&quot;"/>
      <value value="&quot;400% (60% of pop)&quot;"/>
      <value value="&quot;460% (70% of pop)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-scarcity?">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment34" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-infected</metric>
    <metric>cum-interactions</metric>
    <metric>current-infected</metric>
    <metric>cum-vaccinated-children</metric>
    <metric>cum-vaccinated-young-adults</metric>
    <metric>cum-vaccinated-older-adults</metric>
    <metric>cum-vaccinated-elderly</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Equalizing strategy&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prioritizaiton-strategy-population">
      <value value="&quot;equal&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="R0-strictness">
      <value value="&quot;low&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out random&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-infections?">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="scarcity-scenario">
      <value value="&quot;66% (10% of pop)&quot;"/>
      <value value="&quot;100% (15% of pop)&quot;"/>
      <value value="&quot;133% (20% of pop)&quot;"/>
      <value value="&quot;166% (25% of pop)&quot;"/>
      <value value="&quot;200% (30% of pop)&quot;"/>
      <value value="&quot;235% (35% of pop)&quot;"/>
      <value value="&quot;270% (40% of pop)&quot;"/>
      <value value="&quot;330% (50% of pop)&quot;"/>
      <value value="&quot;400% (60% of pop)&quot;"/>
      <value value="&quot;460% (70% of pop)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-scarcity?">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment32" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-infected</metric>
    <metric>cum-interactions</metric>
    <metric>current-infected</metric>
    <metric>cum-vaccinated-children</metric>
    <metric>cum-vaccinated-young-adults</metric>
    <metric>cum-vaccinated-older-adults</metric>
    <metric>cum-vaccinated-elderly</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;no strategy&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;no&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out random&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-infections?">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment33" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-infected</metric>
    <metric>cum-interactions</metric>
    <metric>current-infected</metric>
    <metric>cum-vaccinated-children</metric>
    <metric>cum-vaccinated-young-adults</metric>
    <metric>cum-vaccinated-older-adults</metric>
    <metric>cum-vaccinated-elderly</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;no strategy&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prioritizaiton-strategy-population">
      <value value="&quot;equal&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="7"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Dynamic-camp-openness?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Lockdown-type">
      <value value="&quot;no lockdown&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;yes&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;yes, both staying home and wearing a mask&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="measure-inside-camp">
      <value value="&quot;send out vaccinated if possible&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="random-infections?">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experimentSENSITIVITY" repetitions="500" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>cum-hosts-at-vicinity-market</metric>
    <metric>cum-hosts-at-in-camp-market</metric>
    <metric>cum-rohingyas-at-vicinity-market</metric>
    <metric>cum-rohingyas-at-in-camp-market</metric>
    <metric>cum-exposed</metric>
    <metric>cum-asymptomatic</metric>
    <metric>cum-symptomatic</metric>
    <metric>cum-recovered</metric>
    <metric>cum-dead</metric>
    <metric>current-asymp</metric>
    <metric>current-symp</metric>
    <enumeratedValueSet variable="Type-of-compliance">
      <value value="&quot;yes, both staying home and wearing a mask&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Compliance-included?">
      <value value="&quot;yes&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="sensitivity-analysis?">
      <value value="true"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_1" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-infections-vicinity-market-D</metric>
    <metric>cum-infections-incamp-markets-D</metric>
    <metric>cum-infections-incamp-facilities-D</metric>
    <metric>cum-infected-rohingyas-D</metric>
    <metric>cum-infected-hosts-D</metric>
    <metric>cum-infected-children-D</metric>
    <metric>cum-infected-ya-D</metric>
    <metric>cum-infected-oa-D</metric>
    <metric>cum-infected-eld-D</metric>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_2" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-asymptomatic-D</metric>
    <metric>cum-symptomatic-D</metric>
    <metric>cum-severely-symptomatic-D</metric>
    <metric>cum-critically-symptomatic-D</metric>
    <metric>cum-dead-D</metric>
    <enumeratedValueSet variable="model-environment">
      <value value="&quot;Nayapara Block B&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_4" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-asymptomatic-D</metric>
    <metric>cum-symptomatic-D</metric>
    <metric>cum-severely-symptomatic-D</metric>
    <metric>cum-critically-symptomatic-D</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
      <value value="&quot;Age-based: children, young adults, older adults, elderly&quot;"/>
      <value value="&quot;Equalizing strategy&quot;"/>
      <value value="&quot;Skip the Rohingyas&quot;"/>
      <value value="&quot;Age-based transmission: young, older adults, children, elderly&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_6" repetitions="30" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-infected-rohingyas-D</metric>
    <metric>cum-infected-hosts-D</metric>
    <metric>cum-infections-vicinity-market-D</metric>
    <metric>cum-infections-incamp-markets-D</metric>
    <metric>cum-infections-incamp-facilities-D</metric>
    <metric>cum-interactions-rohingyas-D</metric>
    <metric>cum-interactions-hosts-D</metric>
    <metric>cum-interactions-at-in-camp-market-D</metric>
    <metric>cum-interactions-at-vicinity-market-D</metric>
    <metric>cum-rohingyas-at-in-camp-facilities-D</metric>
    <enumeratedValueSet variable="Camp-openness-policy">
      <value value="&quot;Nothing&quot;"/>
      <value value="&quot;Camp closed for host community&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="1"/>
      <value value="2"/>
      <value value="5"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_5" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-infected-rohingyas-D</metric>
    <metric>cum-infected-hosts-D</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;No strategy&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="No-Rohingyas-infected?">
      <value value="true"/>
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_3" repetitions="30" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>vaccine-efficiacy-exp</metric>
    <metric>cum-infected-D</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="vaccine-infectiousness">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="vaccine-efficiacy">
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_7" repetitions="50" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>vaccine-efficiacy-exp</metric>
    <metric>cum-asymptomatic-D</metric>
    <metric>cum-symptomatic-D</metric>
    <metric>cum-severely-symptomatic-D</metric>
    <metric>cum-critically-symptomatic-D</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="vaccine-infectiousness">
      <value value="true"/>
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="vaccine-efficiacy">
      <value value="1"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_6_3" repetitions="30" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-infected-rohingyas-D</metric>
    <metric>cum-infected-hosts-D</metric>
    <metric>cum-infections-vicinity-market-D</metric>
    <metric>cum-infections-incamp-markets-D</metric>
    <metric>cum-infections-incamp-facilities-D</metric>
    <metric>cum-interactions-rohingyas-D</metric>
    <metric>cum-interactions-hosts-D</metric>
    <metric>cum-interactions-at-in-camp-market-D</metric>
    <metric>cum-interactions-at-vicinity-market-D</metric>
    <metric>cum-rohingyas-at-in-camp-facilities-D</metric>
    <enumeratedValueSet variable="Camp-openness-policy">
      <value value="&quot;Limited capacity for markets&quot;"/>
      <value value="&quot;Isolating facilities in different parts&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="1"/>
      <value value="2"/>
      <value value="5"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_6_5" repetitions="30" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-infected-rohingyas-D</metric>
    <metric>cum-infected-hosts-D</metric>
    <metric>cum-infections-vicinity-market-D</metric>
    <metric>cum-infections-incamp-markets-D</metric>
    <metric>cum-infections-incamp-facilities-D</metric>
    <metric>cum-interactions-rohingyas-D</metric>
    <metric>cum-interactions-hosts-D</metric>
    <metric>cum-interactions-at-in-camp-market-D</metric>
    <metric>cum-interactions-at-vicinity-market-D</metric>
    <metric>cum-rohingyas-at-in-camp-facilities-D</metric>
    <enumeratedValueSet variable="Camp-openness-policy">
      <value value="&quot;Limited capacity for markets&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="strictness-of-conditional-lockdown">
      <value value="1"/>
      <value value="2"/>
      <value value="5"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_6_6" repetitions="90" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-infected-rohingyas-D</metric>
    <metric>cum-infected-hosts-D</metric>
    <metric>cum-infections-vicinity-market-D</metric>
    <metric>cum-infections-incamp-markets-D</metric>
    <metric>cum-infections-incamp-facilities-D</metric>
    <metric>cum-interactions-rohingyas-D</metric>
    <metric>cum-interactions-hosts-D</metric>
    <metric>cum-interactions-at-in-camp-market-D</metric>
    <metric>cum-interactions-at-vicinity-market-D</metric>
    <metric>cum-rohingyas-at-in-camp-facilities-D</metric>
    <enumeratedValueSet variable="Camp-openness-policy">
      <value value="&quot;Camp closed for host community&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_8" repetitions="20" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-asymptomatic-vaccinated-D</metric>
    <metric>cum-asymptomatic-D</metric>
    <metric>cum-symptomatic-D</metric>
    <metric>cum-severely-symptomatic-D</metric>
    <metric>cum-critically-symptomatic-D</metric>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="vaccine-infectiousness">
      <value value="true"/>
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_9" repetitions="30" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-asymptomatic-D</metric>
    <metric>cum-symptomatic-D</metric>
    <metric>cum-severely-symptomatic-D</metric>
    <metric>cum-critically-symptomatic-D</metric>
    <metric>cum-infections-vicinity-market-D</metric>
    <metric>cum-infections-incamp-markets-D</metric>
    <metric>cum-infections-incamp-facilities-D</metric>
    <metric>cum-interactions-rohingyas-D</metric>
    <metric>cum-interactions-hosts-D</metric>
    <metric>cum-interactions-at-in-camp-market-D</metric>
    <metric>cum-interactions-at-vicinity-market-D</metric>
    <metric>cum-rohingyas-at-in-camp-facilities-D</metric>
    <enumeratedValueSet variable="Camp-openness-policy">
      <value value="&quot;Vaccines: Only vaccinated people allowed at vicinity market&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
      <value value="&quot;Age-based: children, young adults, older adults, elderly&quot;"/>
      <value value="&quot;Age-based transmission: young, older adults, children, elderly&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="days-switch">
      <value value="true"/>
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment_new_10" repetitions="30" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>gogogo</go>
    <metric>Hour</metric>
    <metric>Minute</metric>
    <metric>cum-asymptomatic-D</metric>
    <metric>cum-symptomatic-D</metric>
    <metric>cum-severely-symptomatic-D</metric>
    <metric>cum-critically-symptomatic-D</metric>
    <metric>cum-infections-vicinity-market-D</metric>
    <metric>cum-infections-incamp-markets-D</metric>
    <metric>cum-infections-incamp-facilities-D</metric>
    <metric>cum-interactions-rohingyas-D</metric>
    <metric>cum-interactions-hosts-D</metric>
    <metric>cum-interactions-at-in-camp-market-D</metric>
    <metric>cum-interactions-at-vicinity-market-D</metric>
    <metric>cum-rohingyas-at-in-camp-facilities-D</metric>
    <enumeratedValueSet variable="Camp-openness-policy">
      <value value="&quot;Vaccines: Only vaccinated hosts can enter the camp&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Prioritization-strategy">
      <value value="&quot;Age-based: elderly,  older adults, young adults, children&quot;"/>
      <value value="&quot;Age-based: children, young adults, older adults, elderly&quot;"/>
      <value value="&quot;Age-based transmission: young, older adults, children, elderly&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="days-switch">
      <value value="true"/>
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Camp-openness-policy">
      <value value="&quot;send out healthy or vaccinated if possible&quot;"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180


0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
