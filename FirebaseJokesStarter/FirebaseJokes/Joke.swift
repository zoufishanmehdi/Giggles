//
//  Joke.swift
//  FirebaseJokes
//
//  Created by Zoufishan Mehdi on 5/11/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import Foundation
import Firebase


class Joke {
    private var _jokeRef: Firebase!
    
    private var _jokeKey: String!
    private var _jokeText: String!
    private var _jokeVotes: Int!
    private var _username: String!
    
    var jokeKey: String {
        return _jokeKey
    }
    
    var jokeText: String {
        return _jokeText
    }
    
    var jokeVotes: Int {
        return _jokeVotes
    }
    
    var username: String {
        return _username
    }
    
    // Initialize the new Joke
    
    init(key: String, dictionary: Dictionary<String, AnyObject>) {
        self._jokeKey = key
        
        // Within the Joke, or Key, the following properties are children
        
        if let votes = dictionary["votes"] as? Int {
            self._jokeVotes = votes
        }
        
        if let joke = dictionary["jokeText"] as? String {
            self._jokeText = joke
        }
        
        if let user = dictionary["author"] as? String {
            self._username = user
        } else {
            self._username = ""
        }
        
        // The above properties are assigned to their key.
        
        self._jokeRef = DataService.dataService.JOKE_REF.childByAppendingPath(self._jokeKey)
    }
}