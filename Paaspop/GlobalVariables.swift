//
//  GlobalVariables.swift
//  Paaspop
//
//  Created by Etienne Cooijmans on 05/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

public struct Globals{

/// For lack of a better name.
/// Keeps track of acts and stages for app-wide use.
static var Acts : [Act] = [
    Act(title: "Anouk", subtitle: "", info: "Eigenlijk wilden we hier alleen haar naam in hoofdletters zetten. Met een uitroepteken erbij als uiting van blijdschap en respect. ANOUK! dus. Maar vooruit, we zijn nu toch op dreef.  Anouks komst naar Schijndel in 2011 betekende dat  Paaspop er voorgoed een derde dag bij kreeg (de vrijdag), waardoor het vanaf dat jaar dus een driedaags evenement werd. We zijn verguld dat ’s lands coolste rockzangeres in 2015 opnieuw Paaspop op stelten komt zetten na die zeer memorabele show uit 2011. Haar nieuwe cd Paradise And Back Again is nèt uit en belooft alvast veel muzikaal moois.  ", photoUrl: "anouk.jpg",stage: "apollo", times: [String](arrayLiteral: "13:00-13:45", "18:00-19:00"), favorite: false),
    Act(title: "Best of Foo", subtitle: "Foo Fighters Tribute", info: "In Best of Foo hebben vijf gelouterde muzikanten elkaar gevonden. Zij benaderen de sound van de Foo Fighters ‘as close as you can get’. Makkelijk schakelend tussen stijlen brengt het vijftal een schat aan podiumervaring bij elkaar. We noemen Andrew Elt (Gin on the Rocks, Sleeze Beez, The Moon), drummer Lambert van den Munckhof (Cobs & Robbers, Pure Cult, Action in DC), Natasja Thijssen (Purple Haze, OXX-Band Mooi Wark) en de gitaristen Erik van der Ven (Bodine) en Tom Verstegen (Atomic Rock). Muziek in laagjes, precies zoals bij hun voorbeelden. Best of Foo is er daarom voor de eigentijdse muziekliefhebber en zéker voor hen die een muzikale en strakke tributeband weten te waarderen. In your honor!", photoUrl: "bestoffoo.jpg", stage: "Tunderbolt", times: [String](), favorite: true),
    Act(title: "Against Me!", subtitle: "", info: "Onze knieën doen nog steeds een beetje pijn. Want toen we vernamen dat de Amerikaanse punkrockband Against Me! op Paaspop komt spelen, vielen we spontaan op onze knieën van pure dankbaarheid. Waarom? Luister maar eens naar hun Mijlpaal-nu-al-Klassieker Transgender Dysphoria Blues: opwindendemelodieuzepunkrockmetfolkinvloeden en intelligente confronterende songteksten in het straatje van bijvoorbeeld een The Gaslight Anthem. Fugazi met banjo’s noemen ze het zelf. En de zanger – Laura Jane Grace - is sinds 2012 een zangeres. Dat je het maar weet. ", photoUrl: "againstme.jpg", stage: "Phoenix", times: [String](), favorite: false),
    Act(title: "Blues Pills", subtitle: "", info: "Dat je met pillen op festivals moet uitkijken weet iedereen met een beetje gezond verstand. Voor de consumptie van blauwe Zweedse pillen ligt dat anders, daar kun je er namelijk niet genoeg van innemen. Licht hallucinerend en verslavend, dat wel, maar verder geheel onschuldig. In 2011 was dit Zweeds-Amerikaans-Franse kwartet met de beeldschone blonde zangeres Elin Larsson er ineens en nog eens drie jaar later lag de overdonderende gelijknamige debuutplaat in de (digitale) winkelschappen, die liefhebbers van harde doomblues en spacy rockpsychedelica deed terugverlangen naar de jaren zeventig toen bands als Hawkwind , Coven, Cream en Fleetwood Mac het leven zo mooi maakten.  Trip on. ", photoUrl: "bluespills.jpg", stage: "Roxy", times: [String](), favorite: true),
    Act(title: "Colin Cloud", subtitle: "", info: "Wij sluiten onze ogen ... en concentreren ons volledig ...op jouw gedachten...en lezen af...dat...JE ONWIJS VEEL ZIN HEBT IN PAASPOP!OK, dat was erg gemakkelijk natuurlijk. Maar iemand die dus écht gedachten kan lezen is de internationaal bejubelde 'forensic mind reader' Collin Cloud. Overal waar deze intrigerende rasentertainer optreedt laat hij een verbijsterd publiek achter. 22 uitverkochte performances (!) op het Edinburgh Comedy Festival, gedachtelezer en lepelbuiger Uri Geller die hem omschrijft als “one of the greatest thought readers of all time”, 5/5 recensies...Op Paaspop zal het niet anders zijn, want Colin zorgt dat je op het puntje van je stoel zit!", photoUrl: "colincloud.jpg", stage: "Jack Daniel's stage", times: [String](), favorite: false)
]
    
    static var personalTimeTableContent : [Act] = []

}