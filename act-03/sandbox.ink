VAR robbery_question_loop = true
VAR ask_robbery_questions = false


-> all_reason_for_cover

=== find_help ===

    You search desperately for a friendly face in the crowd. 
    *    The woman in the hat[?] pushes you roughly aside. -> find_help
    *    The man with the briefcase[?] looks disgusted as you stumble past him. -> find_help 
    *    [] But it is too late: you collapse onto the station platform. This is the end.
        -> END




== all_reason_for_cover ==
    {"And all the more reason for cover," adds Julian.| "Being spotted makes me nervous," says Julian.|}

    *    [Mia agrees.] 
        
            "Julian's right about that," she says. "The fog would provide great cover."
    
        -> all_reason_for_cover
    *    [Alexis disagrees.] 
        "But fog will make it much harder to find and recover you and the kayaks," says Alexis. "And after hitting the sandbar yesterday with Troy at the helm, the idea of piloting the boat in the fog while looking for the kayaks makes make me nervous." 
        -> all_reason_for_cover
    
    *    -> fog_or_no
    
== fog_or_no ==
    -   * "For or no fog, it's all good," says Troy.[] "The plan accounts for both possibilities..."  
    
        - (opts)
            *    "If the fog sticks around[..."], we'll stay in the cove and wait." says Troy. "When you enter the cove in the boat, use the horn to give the signal. Remember the signal?"
            
                    ** [Alexis mimics the signal.]
                        "Right, good, give two short toots of the horn, count to 3 and give one long toot," says Troy.  "When we hear your signal, we'll blow the whistle. Give two quick toots to acknowledge it. If you don't hear us, repeat your signal and we'll send a flare."
                        
            *    ["If the fog clears..."]
                "Or I should say 'when the fog clears,' keep the boat away from the island until the two hour mark, then come in and pick us up," says Troy. "Since it may be easier for us to see you, we'll start by using the signal mirror and whistle to get your attention on the boat. If that doesnt' work, we'll shoot off a flare."  
                
            *    ["If the Lakesong is spotted..."]
                You're unlikely to be seen in the fog, but when things clear, you'll be visible but so will everythig else," says Troy. "You'll be able to see a boat coming from a distance, same with the drones. Do what you need to do to evade contact and then circle back for us when you can."  
            
            // We require the player to ask at least one question
            *    {loop} [Alexis cuts Troy off.] 
                -> done
        - (loop) 
            // loop 
            { -> opts | -> opts | }
            Alexis takes a deep breath. 
        - (done)
            "OK, OK, I've got it," says Alexis, "But I'm still going to be nervous driving the boat."
            
                ["You've got this, Alexis," says Troy.]
                    -> got_this_alexis
        
        =   got_this_alexis
            "Stay slow in the fog and keep a good lookout," says Troy. "And we know the that cove and the approach to it are free of sandbars, so now worries there."
            
                * [Julian and Troy enter the kayaks.]
                    -> continue_adventure
                
                
=== continue_adventure === 
        -   "See you in two hours, give or take," says Troy, as he and Julian push off from the boat and beging paddling toward the shoreline.
        
            "Good luck!" Mia and Alexis say in unison, as Alexis starts the Lakesong's engine and prepares to depart the cove. 
            
            Contine the adventure by...
            
                    * Following Julian and Troy in the kayaks.
                        -> follow_kayaks
                        
                    * Following Mia and Alexis in the boat. 
                        -> follow_boat
    

 





== no_two_way ==
    -   "Unfortunately, no," says Troy. "I couldn't get my old two-way radio set to work. I stopped by Willard's store this morning to get a new one, but he said they were sold out."
    
        At this news Alexis frowns and both she and Mia give Troy looks of concern.
        
        

         - (opts)
                *    ["The walky-talkies were part of the plan," says Alexis.]
                    -- CHR_TRO_REL
                     Troy anticipated the concerns about the lack of a two-way radio, which was part of the original play, so he is prepared to smooth the situation over. -> signals
    
                *    (signals) [Julian begins stashing signals into his life jacket pockets.] {"Don't worry. We have the other signals," says Troy, nodding toward Julian, who is looking for a spot for the whistle, "so even if we can't find each other right away, locating us—even in fog—shouldn't be a problem."| "Plus the fog is going to clear," he says. "I'm sure of it." }
    
                *    {signals} ["I hope the fog doesn't clear," says Julian.] -> hope_for_fog
        -     -> opts

        = hope_for_fog
        -   "The fog is our cover," he says. "We can't be seen by man nor creature." Julian scans the foggy overhead nervously. 
        
        -   "Based on the photo Mia enlarged and cleaned-up," says Alexis, "I'm as convinced as Troy that there really are no creatures."

== review_plan ==
    -   "Let's go over the plan one more time," says Troy.
        
        - (opts)
            *    [The Kayaks.] "Troy and Julian will head out in the kayaks to investigate the shoreline of the cove, and spend up to two hours looking for clues to what happened to the boat we saw dissappear yesterday," says Alexis.
            *    [The Lakesong.]
                "Mia and Alexis will stay with the Lakesong," says Julian. "They'll wait away from the island for the fog to clear—if it clears—and return for us in two hours unless we signal for pickup sooner."
            *    [The Rendezvous.]
                "We'll return to the cove in two hours—or sooner, if we see a signal—to meet Troy and Julian and recover the kayaks," says Mia.  
            // We require the player to ask at least one question
            *    {loop} [Got it!] 
                -> done
        - (loop) 
            // loop a few times before the guard gets bored
            { -> opts | -> opts | }
            Troy nods and looks at his watch.
        - (done)
            "Good, we are all clear on the plan, so let's get started," he says reaching for two dry float bags and tossing one to Julian. "I've prepared a few supplies for the two of us to take."
            
                * [Julian opens his bag to see what's inside.]
                    -> jul_opens
                
                * [Julian catches the bag but doesn't look inside.]
            
            
        = jul_opens
        -   Inside the dry float bag Troy prepared, Julian finds the following items: a waterproof flashlight, waterproof red signal flares, a signal mirror, a whistle, a rope, a knife, a bottle of water, a granola bar, and kayak tether.
            
                * ["Before we set off..."]
                    -> before_set_off
        
        = jul_no_opens
        -   "That's a lot of stuff," says Julian holding the bag up but not opening it.
            
                * [Troy nods.]
                    -> before_set_off

        
        = before_set_off
        "Before we set off take all the signal devices—the flares, mirror, and whistle—out of your bag and put them in your PDF pockets, says Troy. "Oh and grab the kayak leash as well." 

            * "And you've got the walky talky?" asks Julian.


=== fog_talk ===
    The Lakesong continues straight ahead into the fog where Troy expects to find the cove. 

        - (opts)
                *    [ Four pairs of eyes scan the area ahead.]
                    -- CHR_TRO_REL
                     Troy has the throttle just a bit over idle, keeping their speed to a minimum in the reduced visibility.  -> birds
    
                *    (birds) ["The fog isn't as bad as yesterday," says Alexis.] {"Looks like we've got about 100 yards of visibility, give or take," says Troy. "Enough for us to launch without being seen."|"The fog should burn off later," he says, "making it easier to find each other."}
    
                *    {birds} [The sound of birds...]
        -     -> opts

        = temp
        - The sound of birds announces their proximity to the island. 
        
        "There's the cove!" says Troy. "Per the plan, we'll launch the kayaks from there."


=== arrive_ki ===
    -   The journey north to Kalkomey Isle takes quite awhile, but when they finally arrive all four agree that it felt quicker than expected. That the weather had been excellent—both warm and sunny—helped, too, at least until they hit the fog. 

        - (opts)
                *    [ Troy slows the boat.]
                    -- CHR_TRO_REL
                     As the Lakesong slows, the sound of the engine decreases allowing Troy to speak in a quiet voice. "Let's keep a sharp lookout," he says.  -> lookout
    
                *    (lookout) ["The cove should be straight ahead," says Troy.] {"I spent some time studying the charts last night, and the sandbars are all to west, near the beach, but still..."|"We know there's more than sandbars out here."}
    
                *    {lookout} [Approach the cove.] -> temp

        -     -> opts

        = temp
        - "Only thing better than a day on the lake is another day on the lake," says Troy. "Power, sail, or paddle... it's all good.







== fueling_depot ==
    -  The Lakesong arrives at the fuel dock and slide alongide one of the empty pumps and dock. Just ahead of them at the next pump they see Cletus fueling a boat. The friends tie up and go on to the dock. 
 
     - (opts)
                *    [ Cletus checks out the Lakesong.]
                    -- CHR_TRO_REL
                     Cletus gives their boat a long stare from bow to stern and back again.  -> stare
    
                *    (stare) [Cletus greets them.] {"Didn't get enough yesterday, eh?" he says.|"Those are some nice looking kayaks you've got there," he says. "Going to do some exploring?"}
    
                *    {stare} [Troy shrugs.] -> temp

        -     -> opts

        = temp
        - "Only thing better than a day on the lake is another day on the lake," says Troy. "Power, sail, or paddle... it's all good." 
        
        Nothing more is said.
        
            * [Fuel the boat.]
            
            
        
        





== dog_in_boat ==
    -  "Look there two dogs in that boat," says Mia, as they pass a small, flat-bottomed boat off their starboard side. "And one's a puppy!'
 
     - (opts)
                *    [ "Those are retrievers," says Troy. ]
                    -- CHR_TRO_REL
                     "That's a duck hunting boat and the puppy is learning how to behave on the water," he says.  -> dog
    
                *    (dog) [Troy gives the horn two quick toots.] {Troy's passing signal startles the puppy. "The dogs need to get accustomed to being in a boat the same as you or me."|"Anglers and hunters are boaters, too, as are their four-legged passengers."}
    
                *    {dog} They exchange 'Ahoys' and waves.[] -> temp

        -     -> opts

        = temp
        - temp


== lucky_how ==
     - (opts)
                *    ["I could have been worse?" shouts Mia loudly, her ears still ringing.]
                    -- CHR_TRO_REL
                     "It's not uncommon for a lightning strike to damage the electronics, the engine, and a lightning strike can even put a hole in the boat," he says. -> lucky
    
                *    (lucky) ["Let's not make a habit of tempting fate," says Alexis.] {Troy looks around the boat. "I wouldn't want to roll the dice like that again, as chances are we be a lot worse off than just a busted radio."|"Yes, we really did get lucky this time."}
    
                *    {lucky} [Alexis looks at Mia and mouths the world 'lucky.'] -> bad_decision

        -     -> opts

        = bad_decision
        - temp

== not_easy_decision ==

        - (opts)
                *    ["You said before that shore is the first option," says Mia.]
                    -- CHR_TRO_REL
                     "As long as that storm south of Laketown doesn't decide to move north over the lake, making for shore is the best option." he says. -> depends
    
                *    (depends) ["This feels like an 'it depends'" says Julian.] {Troy estimates their distance from Laketown. "It really depends on how far we are from Laketown."|"But if that storm moves, we'd need to make sure we are docked and secured before it hits."}
    
                *    {depends} [Troy pauses a couple beats to think it over.] -> tro_makes_his_choice

        -     -> opts

        = tro_makes_his_choice
        -   CHR_JUL_SUR





== if_holds_fine ==

        - (opts)
                *    ["The shore is safer?" Mia asks Troy.]
                    -- CHR_TRO_REL
                     "Generally, returning to shore is the best course of action, but like anything it depends," he says. -> avoid
    
                *    (avoid) ["Can't we stay on the lake and avoid the storm?" asks Julian.] {As an experienced boater, Troy knows there is some gray area. "Shore is the first option, but depending on the conditions, sometimes it may be best to ride a storm out in open water."|"If you're already caught in a storm, wind and waves can make approaching the shore a more dangerous option."}
    
                *    {avoid} [Head to shore.] -> horizon_clouds

        -     -> opts

        = horizon_clouds
        -   CHR_JUL_SUR




=== know_else_strange ===
        - CHR_MIA_REL
        - CHR_ALX_REL
        - Mia points high over the island. "Look at those strange birds over there in the distance."
        Alexis nods in agreement and makes a couple observations.

        - (opts)
            *    ["They don't fly like birds."]
                -- CHR_ALX_REL
                "They're flying more like a swarm than a flock..." -> creatures

            *    (creatures) ["They don't sound like birds."] {Alexis notices something else. "And that sound! Birds don't buzz like that."| says Alexis, "more like really large bees."}

            *    {creatures} ["Those are the creatures!"] -> coming_this_way_fast

        -     -> opts

        = coming_this_way_fast
        -   CHR_JUL_SUR


== is_ki == 
    -   CHR_JUL_SML
    -   CHR_TRO_REL
    -   "That's doubtful," says Troy. "There are <i>hundreds</i> of islands scattered all over the lake."

             - (opts)
                * [Julian is certain.]
                -- CHR_JUL_SAD
                "The evidence is clear," says Julian. -> fog

                * (fog) ["C'mon, Troy, look..."] {"Going north? Check. Fog? Check. Loss of cell signal? Check."| He looks at Mia and Alexis for support, but neither says a word.}

                * {fog} [Troy isn't convinced.] -> tro_not_convinced

            -   -> opts

== tro_not_convinced ==
- temp

== test_loop ==

- (opts)
    *    'Can I get a uniform from somewhere?'[] you ask the cheerful guard.
        'Sure. In the locker.' He grins. 'Don't think it'll fit you, thought.'
    *    'Tell me about the security system.'
        'It's ancient,' the guard assures you. 'Old as coal.'
    *    'Are there dogs?'
        'Hundreds,' the guard answers, with a toothy grin. 'Hungry devils, too.'
    // We require the player to ask at least one question
    *    {loop} [Enough talking] 
        -> done
- (loop) 
    // loop a few times before the guard gets bored
    { -> opts | -> opts | }
    He scratches his head.
    'Well, can't stand around talking all day,' he declares. 
- (done)
    You thank the guard, and move away. 




== u_ok_man ==
            - CHR_TRO_SUR
            - CHR_DID_ANG
            
            - (opts)
            *    ["I'm wet."]
                -- CHR_DID_SAD
                  The man pulls of his hat and gives it a shake. -> angry

            *    (angry) ["I ain't happy."] {"Came really close to capsizing and losing all my supplies," he says, scowling.|"But I didn't go overboard, so could be worse."}
            // do people say 'angry'? 'furious' maybe more natural?
                
                

            *    {angry} [The two boats continue slowly abreast.] 
                    
                    
                    //    "Keeping three points of contact was key," says the man. <-- we've already had this mentioned, and here's it's doubly unnatural. No one would ever say this at this point. 
                    //great job seemed a bit cheery, given the context
                    // the choices here were a bit weird if you take angry first. You end up with him choosing to speak or Troy. 
                    //maybe lose the brightside bit? He deserves to feel pissed off. Don't make him too nice. Nice is boring. 
                        -> know_them

            -     -> opts
            
            = know_them           
            - CHR_TRO_SML
            - CHR_DID_REL
            - Troy decides to...
            
            
           
    
             
                    * [Ask the man if he knows the pair in the speed boat.]
                        -- CHR_DID_REL
                    
                        "{~I've been seeing them around the docks since the end of last season. They boat in for supplies|Not really. Seen them buying supplies. They're not real friendly|Don't know their names, but seen them a few times buying supplies.}," says the man. "Willard, the shopkeep, told me they're from Oceanside." 
                        //trimmed - he's in a boat and they're going by. Don't need him to be too chatty all of a sudden. 
                        
                            -> supplies_oceanside
                                        
                     
                 * [Say nothing and wave goodbye.]
                                    -> overtake_wave_goodbye
                                        
                    
                 
               = ls_further_away
                    - As the <i>Lakesong</i> travels further away, nothing more is said. 
                                        
                         * [Wave goodbye.]
                            -> overtake_wave_goodbye
== supplies_oceanside
            - (opts)
                *    ["Buying supplies?"]
                -- CHR_DID_SAD
                 "Maybe they live out on an island same as me," suggests the man. 
                 //no need for a questionmark
                 -> oceanside

                *    (oceanside) ["Oceanside?"]
                
                    {"Some people think Oceanside is where the boat thieves are from," says Alexis. The man shrugs but says nothing more.|"Could be," says Troy, as he nudges the throttle forward to overtake the man's boat.}
                    //I found this confusing - added 'boating on'  as I was still thinking about supplies, so drinking?
                    // Who is Troy telling this? If the man is a local, maybe Troy should address it to his friends instead?
                    //If you do Oceanside first, then supplies, this follows in an odd order. Alexis sounds likes she's not heard the previous subject change.

                *    {oceanside} [Wave goodbye.] 
                    
                    -> overtake_wave_goodbye

            -     -> opts
            
                              
                       
== overtake_wave_goodbye ==
    -   Troy and the others bid farewell to the man, and the <i>Lakesong</i> heads on through the channel toward open waters.
    
        * On the way[...] the <i>Lakesong</i> encounters various buoys and markers—the 'traffic signals' that guide vessel operators safely along the waterways. 
        //change in tense is weird. Maybe put it into past tense, as the player doesn't get to see it. And do they encounter (possibly bump?) or just 'pass'?
        //are markers signals, or are buoys as well. If only markers, maybe a separate sentece. Markers are the...
//single quote marks if it's not speech (hence change)
            Before continuing you have two choices:
            
                ** [Review Navigation Aids.]
                    // launch review here. upon close, send student to encounter_mini
                    --- SYS_PDF_12
                    *** [Continue]
                        -> aton_mini
                ** [Skip the review and continue.]
                    -> aton_mini
        
=== aton_mini ===
// ATON aids to navigation system minigame will go here

    - SYS_MINIGAME_11
    * [Onward]
    //-> proper_lookout


/*
=== dream ===
    {
        - robbery_question_loop && go_to_island:

            

         - robbery_question_loop || ask_robbery_questions:
            
            -> dream_about_polish_beer 

        - else:
            // breakfast-based dreams have no effect
            -> dream_about_marmalade
    }    
    
    = dream_about_snakes
    - i'm choice one, dream about snakes so I got both robbery events true
    
    = dream_about_polish_beer
    -   I'm choice tow, one is correct
    
    = dream_about_marmalade
    -   I'm choice three, dream about marmalade. 
    
 */   
=== test_it ===
"What if they aren't 'creatures' at all?" says Troy. "What if they are man-made?"
- (opts)
*    [Troy explains his theory.]
    Troy tells Julian he believes the creatures are really drones disguised to look like creatures. -> pauses

*    (pauses) [Julian pauses.] {Julian considers the possibility.|"Think about how they flew," Troy tells Julian. "Didn't it seem unnatural to you?"}
*    {pauses} [Julian shakes his head.] -> jul_rejects_theory

-     -> opts

== jul_rejects_theory ==
    -  "I'm not sure how that is good news, bro," says Julian. "Scary people creating scary machines to scare peope from the island? All I'm hearing is 'scary'."
    
        "Aren't you curious?" asks Alexis.
        
    = curious_alx
    -   "Curious to find out why someone would want to scare people away from Kalkomey Isle?"
    
        - "Curiosity is for cats," says Julian.[] "Dead ones."
        
    