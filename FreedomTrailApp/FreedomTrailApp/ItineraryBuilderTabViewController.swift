//
//  ItineraryBuilderTabViewController.swift
//  FreedomTrailApp
//
//  Created by Sam Mailand on 2/15/16.
//  Copyright © 2016 Sam Mailand. All rights reserved.
//

import UIKit


class ItineraryBuilderTabViewController: UITabBarController, ItineraryStopTableViewDelegate {
    
    
   
    var itineraryStopTableViewController = ItineraryStopTableViewController()
    
    var locationTableViewController = LocationTableViewController()
    
    var itinerariesModel: ItinerariesViewModel?
    
    var itinerary: Itinerary!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        locationTableViewController = self.viewControllers?.last?.childViewControllers.first as! LocationTableViewController
        
        itineraryStopTableViewController = self.viewControllers?.first?.childViewControllers.first as! ItineraryStopTableViewController
        
        itinerary = Itinerary(name: "Untitled Itinerary", itineraryDescription: "No Description", locationIndexes: [])
        
        locationTableViewController.itinerary = self.itinerary
        
        itineraryStopTableViewController.itinerary = self.itinerary
        
        itineraryStopTableViewController.saveItineraryDelegate = self
        
        
    }
    
    func saveItinerary(){
        itinerariesModel?.appendItinerary(itinerary!)
    }
    
    //MARK - Delegates
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

*/

}
