//
//  NewsTableViewController.swift
//  Paaspop
//
//  Created by Casper Schobers on 16/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {

    var newsItems = [NewsItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sample data newsitems
        //self.newsItems = [NewsItem(title: "", subtitle: "", date: "", text: ""),
           // NewsItem(title: "", subtitle: "", date: "", text: "")]
        self.newsItems = [NewsItem(title: "Rival Sons", subTitle: "Nieuwe Naam!", date: "16 dec 2014", text: "Tuurlijk hadden we graag Led Zeppelin, de Beatles en The Doors op Paaspop gehad. Gelukkig kunnen we vandaag de rocksensatie&nbsp;RIVAL SONS (uit het Amerikaanse L.A.) bevestigen! Een mooi gecombineerd alternatief: catchy bluesy (hard)rock met rhythm &amp; blues en zelfs een sausje soul. En met een zanger die je terugvoert naar de glorieuze jaren zeventig toen hardrock nog werd gemaakt door langharige gitaristen met bakkebaarden en wijde broekspijpen. Klassiek als de Venus van Milo maar tegelijk modern klinkend en met een kru00e8k eigen geluid (lees: luid, scheurend en hard)."),
        NewsItem(title: "Colin Cloud", subTitle: "Bevestigd voor Paaspop Theater!", date: "15 dec 2014", text: "The final countdown part 1: nog 10 dagen tot Kerstmis - dus nog 10 dagen om een cool Kerstkado te scoren.The final countdown part 2: Early Bird tickets nog verkrijgbaar tot slechts 11 januari 2015.The final countdown part 3: Paaspop op 3, 4 en 5 april 2015.Deze week maken we dagelijks nieuwe namen bekend maken we ook meer bekend over ons randprogramma, over diverse podia en over de camping, ha! De eerste naam is...Colin Cloud!Paaspop heeft zijn eigen schouwburg waar o.a. cabaret, comedy, theater en muziek op het programma staat: het Paaspop Theater. Overdag biedt deze inspirerende tent plaats aan 900 stoelen; 's avonds schuiven we die stoelen aan de kant zodat onze floor fillers ruim baan krijgen.Ook dit jaar is het Theater plek bij uitstek voor top entertainers. De eerste naam die we bekend kunnen maken is COLIN CLOUD! Op zijn track record lezen we: 22 uitverkochte performances (!) op het Edinburgh Comedy Festival; gedachtenlezer en lepelbuiger Uri Geller die hem omschrijft als of the greatest thought readers of all timeu201d; 5 recensies...Op Paaspop zal het niet anders zijn, want Colin zorgt dat je op het puntje van je stoel zit!"),
        NewsItem(title: "Jett Rebel", subTitle: "Who The Fuck Is", date: "2 dec 2014", text: "Who the Fuck Is Jett Rebel?!? Dat is&nbsp;de titel van de documentaire die vorige week&nbsp;op de Amsterdamse IDFA werd&nbsp;vertoond en antwoord tracht te geven op die prangende vraag.&nbsp;Nagellak, lippenstift, sieraden: niets is het Nederlandse muziekwonder Jett Rebel te gek. Als een echte ster, met dito talent en uitstraling, trekt hij volle zalen.&nbsp;Maar dit alles is slechts buitenkant. Jett Rebel is een samen met zijn manager bedacht alter ego van Jelte Tuinstra, dat tot alles in staat zou zijn wat Jelte niet aandurfde. Thuis&nbsp;blijkt muzikant Jelte Tuinstra een aartsverlegen twintiger, die aan van alles twijfelt. Als ik aan het spelen ben, ben ik interessanter, zelfverzekerder. Het is gewoon veel chiller om hem te zijn.u201d Maar hoe zorg je ervoor&nbsp;dat je niet verzuipt en geu00efsoleerd raakt achter zou2019n stage persona? Een onderdeel van de documentaire speelt zich af op&nbsp;Paaspop 2014, ook na zijn optreden hier&nbsp;kwam het grote verschil tussen Jelte en Jett Rebel tevoorschijn.&nbsp;Bekijk de documentaire Who the fuck is Jett Rebel hier")]

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
        return self.newsItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as NewsTableViewCell
        
        var newsItem: NewsItem
        newsItem = self.newsItems[indexPath.row]
        
        // Configure the cell
        cell.lblTitle.text = newsItem.title
        cell.lblSubTitle.text = newsItem.subTitle
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("newsDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "newsDetail" {
            let newsDetailViewController = segue.destinationViewController as NewsDetailViewController
                let indexPath = self.tableView.indexPathForSelectedRow()!
                newsDetailViewController.newsitem = self.newsItems[indexPath.row]
            
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
