VAR robbery_question_loop = true
VAR ask_robbery_questions = false


-> u_ok_man



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
        
    