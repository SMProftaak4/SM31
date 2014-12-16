//
//  ActsTableViewController.swift
//  Paaspop
//
//  Created by Casper Schobers on 15/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import UIKit

class ActsTableViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    
    var acts = [Act]()
    var filteredActs = [Act]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sample data acts
        self.acts = [Act(title: "Anouk", subtitle: "", info: "Eigenlijk wilden we hier alleen haar naam in hoofdletters zetten. Met een uitroepteken erbij als uiting van blijdschap en respect. ANOUK! dus. Maar vooruit, we zijn nu toch op dreef.  Anouks komst naar Schijndel in 2011 betekende dat  Paaspop er voorgoed een derde dag bij kreeg (de vrijdag), waardoor het vanaf dat jaar dus een driedaags evenement werd. We zijn verguld dat ’s lands coolste rockzangeres in 2015 opnieuw Paaspop op stelten komt zetten na die zeer memorabele show uit 2011. Haar nieuwe cd Paradise And Back Again is nèt uit en belooft alvast veel muzikaal moois.  ", photoUrl: "http://www.paaspop.nl/media/acts/againstMe%21.jpg", times: [String](), favorite: false),
        Act(title: "Best of Foo", subtitle: "Foo Fighters Tribute", info: "In Best of Foo hebben vijf gelouterde muzikanten elkaar gevonden. Zij benaderen de sound van de Foo Fighters ‘as close as you can get’. Makkelijk schakelend tussen stijlen brengt het vijftal een schat aan podiumervaring bij elkaar. We noemen Andrew Elt (Gin on the Rocks, Sleeze Beez, The Moon), drummer Lambert van den Munckhof (Cobs & Robbers, Pure Cult, Action in DC), Natasja Thijssen (Purple Haze, OXX-Band Mooi Wark) en de gitaristen Erik van der Ven (Bodine) en Tom Verstegen (Atomic Rock). Muziek in laagjes, precies zoals bij hun voorbeelden. Best of Foo is er daarom voor de eigentijdse muziekliefhebber en zéker voor hen die een muzikale en strakke tributeband weten te waarderen. In your honor!", photoUrl: "http://www.paaspop.nl/media/acts/bestOfFoo.jpg", times: [String](), favorite: true),
        Act(title: "Against Me!", subtitle: "", info: "Onze knieën doen nog steeds een beetje pijn. Want toen we vernamen dat de Amerikaanse punkrockband Against Me! op Paaspop komt spelen, vielen we spontaan op onze knieën van pure dankbaarheid. Waarom? Luister maar eens naar hun Mijlpaal-nu-al-Klassieker Transgender Dysphoria Blues: opwindendemelodieuzepunkrockmetfolkinvloeden en intelligente confronterende songteksten in het straatje van bijvoorbeeld een The Gaslight Anthem. Fugazi met banjo’s noemen ze het zelf. En de zanger – Laura Jane Grace - is sinds 2012 een zangeres. Dat je het maar weet. ", photoUrl: "http://www.paaspop.nl/media/acts/againstMe%21.jpg", times: [String](), favorite: false),
        Act(title: "Blues Pills", subtitle: "", info: "Dat je met pillen op festivals moet uitkijken weet iedereen met een beetje gezond verstand. Voor de consumptie van blauwe Zweedse pillen ligt dat anders, daar kun je er namelijk niet genoeg van innemen. Licht hallucinerend en verslavend, dat wel, maar verder geheel onschuldig. In 2011 was dit Zweeds-Amerikaans-Franse kwartet met de beeldschone blonde zangeres Elin Larsson er ineens en nog eens drie jaar later lag de overdonderende gelijknamige debuutplaat in de (digitale) winkelschappen, die liefhebbers van harde doomblues en spacy rockpsychedelica deed terugverlangen naar de jaren zeventig toen bands als Hawkwind , Coven, Cream en Fleetwood Mac het leven zo mooi maakten.  Trip on. ", photoUrl: "http://www.paaspop.nl/media/acts/Bluespills2014h.jpg", times: [String](), favorite: true),
        Act(title: "Colin Cloud", subtitle: "", info: "Wij sluiten onze ogen ... en concentreren ons volledig ...op jouw gedachten...en lezen af...dat...JE ONWIJS VEEL ZIN HEBT IN PAASPOP!OK, dat was erg gemakkelijk natuurlijk. Maar iemand die dus écht gedachten kan lezen is de internationaal bejubelde 'forensic mind reader' Collin Cloud. Overal waar deze intrigerende rasentertainer optreedt laat hij een verbijsterd publiek achter. 22 uitverkochte performances (!) op het Edinburgh Comedy Festival, gedachtelezer en lepelbuiger Uri Geller die hem omschrijft als “one of the greatest thought readers of all time”, 5/5 recensies...Op Paaspop zal het niet anders zijn, want Colin zorgt dat je op het puntje van je stoel zit!", photoUrl: "http://www.paaspop.nl/media/acts/cloud-hi_res2-1024x803.jpg", times: [String](), favorite: false)]
        
        //Reload the table
        self.tableView.reloadData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.filteredActs.count
        } else {
            return self.acts.count
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        var act : Act
        // Check to see whether the normal table or search results table is being displayed and set the Candy object from the appropriate array
        if tableView == self.searchDisplayController!.searchResultsTableView {
            act = filteredActs[indexPath.row]
        } else {
            act = acts[indexPath.row]
        }
        
        // Configure the cell
        cell.textLabel!.text = act.title
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        // Filter the array using the filter method
        self.filteredActs = self.acts.filter({(act: Act) -> Bool in
            var category: String
            if act.favorite {
                category = "Favorite"
            } else {
                category = "Other"
            }
            let categoryMatch = (scope == "All")||(category == scope)
            let stringMatch = act.title.lowercaseString.rangeOfString(searchText.lowercaseString)
            return categoryMatch && (stringMatch != nil)})
    }
    
    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchString searchString: String!) -> Bool {
        let scopes = self.searchDisplayController!.searchBar.scopeButtonTitles as [String]
        let selectedScope = scopes[self.searchDisplayController!.searchBar.selectedScopeButtonIndex] as String
        self.filterContentForSearchText(searchString, scope: selectedScope)
        return true
    }
    
    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchScope searchOption: Int) -> Bool {
        let scope = self.searchDisplayController!.searchBar.scopeButtonTitles as [String]
        self.filterContentForSearchText(self.searchDisplayController!.searchBar.text, scope: scope[searchOption])
        return true
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("actDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "actDetail" {
            let actDetailViewController = segue.destinationViewController as ActsDetailViewController
            if sender as UITableView == self.searchDisplayController!.searchResultsTableView {
                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
                let destinationTitle = self.filteredActs[indexPath.row].title
                actDetailViewController.title = destinationTitle
                actDetailViewController.act = self.filteredActs[indexPath.row]
            } else {
                let indexPath = self.tableView.indexPathForSelectedRow()!
                actDetailViewController.act = self.acts[indexPath.row]
            }
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
