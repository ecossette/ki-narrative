
=== prepare_to_castoff_review ===
    -   Before the friends cast off, let's review the procedures for a safe and successful cast off.
    
        You have two options:
        
            * [Review the material.]
                -> castoff_review
            * [Continue without reviewing.]
                -> prepare_to_castoff
        
=== castoff_review ===
// launch study guide here for review of casting off. upon completion send student to prepare_to_castoff
    - SYS_PDF_11
    -> prepare_to_castoff


=== prepare_to_castoff ===
-   SYS_CHAP_07
            
        - The first thing they do to prepare to cast off is...
// need shuffle these choices            
            + [Untie the boat.]
                -> untie
                
            +  [Put on their life jackets.]
                -> put_on_pfd
              
            + [Toot the <i>Lakesong</i>'s horn.]
                -> toot_horn
                

        = untie
            - CHR_JUL_REL
            - CHR_TRO_REL
            - "I'll untie the boat!" calls out Julian.
            <- no_jul_stopped 
            
           <- first_is_pfd
            
        = put_on_pfd
            - CHR_ALX_REL
            - CHR_TRO_SML
            - "We should start by putting on our PFDs, right?" asks Alexis.
                "Exactly!" says Troy. <>
            // people don't tend to say each other's names in conversation
                -> first_is_pfd
             

        = toot_horn
            - "I'll toot the horn to warn the other boats," says Julian.
           <- no_jul_stopped 
            
           <- first_is_pfd
          
        = no_jul_stopped
        -   "No, wait," says Troy, stopping Julian {&in his tracks|abruptly|mid-stride}.
            Julian {~shrugs|pouts} and waits for instructions from Troy.
            -> DONE
        
        = first_is_pfd
            - "The first thing we do when preparing to cast off is to make sure everyone on board is seated and wearing a life jacket."
     
            * [They all follow Troy's instructions.]
                -> pfd_on_seated
            
== pfd_on_seated ==
        -   CHR_TRO_REL
        -   Once Alexis, Mia and Julian are seated and wearing their life jackets, Troy continues.
        
            "We'll keep the boat tied to the dock, while I warm up the engine."
            
            * [Troy starts the <i>Lakesong's</i> engine.]
                -> engine_starts
            
            = engine_starts
            -   CHR_TRO_REL
            -   The engine roars to life. Troy idles the engine and checks that it is running properly.
                
                    ** [Troy checks the departure area for traffic.]
                  
                 
            
                {shuffle:
                
                    - -> area_clear_satisfied
                    
                    - -> area_not_clear
            
                }
                
        
        = area_not_clear
        -   CHR_TRO_REL
        -    Troy sees another boat approaching. It's Mac, the man from the dock. Troy waits.
        
             *  [Mac motors past in his heavily loaded skiff.] -> area_clear_satisfied
        
       
                 


== area_clear_satisfied ==
    -   CHR_TRO_REL
    -  Satisfied that the area is clear of traffic, Troy continues.
    
        "The steps we need to take to cast off," he says, "depend on the direction of the wind or current."
            
            * [Check the conditions.]
                 -> co_wind_direction

/****** 

casting off tunnel 
the story will flow in/out of this tunnel on several occasion during play

******/

=== co_wind_direction ===
    -   The friends check the wind and current and find the following conditions.
    
        * {co_wind_none} [There is <b>no</b> wind or current.]
            -> no_wind_s2
        * {co_wind_toward} [The wind and current direction is <b>toward</b> the dock.]
            -> wind_toward_dock_s2
        * {co_wind_away} [The wind and current direction is <b>away</b> from the dock.]
            -> wind_away_dock_s2
    

== no_wind_s2 ==
    ~ co_wind_none = false
    -   SYS_MINIGAME_1_10
        * [OK]
            -> completed_casting_off
    
== wind_toward_dock_s2 ==
    ~ co_wind_toward = false
    -   SYS_MINIGAME_2_10
        * [OK]
            -> completed_casting_off

== wind_away_dock_s2 == 
    ~ co_wind_away = false
    -   SYS_MINIGAME_3_10
        * [OK]
        -> completed_casting_off

== completed_casting_off ==
    -   Everyone smiles as the boat slips away from the dock with a successful cast off!
    // Or: The group successfully casts off. (I see why you would have this here, as it's positive feedback for the player, but it does break 4th wall.)
    * [Onward!]
        -> depart_dock_day_1

// ****** end casting off tunnel ******

 === depart_dock_day_1 ===
-   SYS_SCENE_4
    -   CHR_TRO_REL
    -   Troy eases the <i>Lakesong</i> away from the Laketown docks and steers it toward the boat channel that leads to open water. 
    
            * [Enter the channel.]
                -> enter_channel
            
        = enter_channel
        // unlock badge 4 
        -  SYS_ACHIEVE_4_1
        As the boat enters the channel, Alexis, Mia, and Julian gather round Troy at the wheel.
        // style on comma before and?
        
            * [They have questions.]
                -> depart_dock_q_loop
        
 == depart_dock_q_loop ==
                    - CHR_TRO_REL
                     - (opts)
                    *    "Why are we going so slow?"[] Julian looks bored.
                    //the question mark is enough of a signal. You don't need 'asks' always.
                        -- CHR_TRO_REL
                        -- CHR_JUL_SAD
                        "We are running at 'Slow, No Wake' speed. It's a requirement for operating around the docks and in the channel." Troy smiles at Julian's expression. "Don't worry. I'll open her up once we are in open waters."
                            // he isn't worried, so no need to assure him
                    *     "What is that clipped to your PFD?"[] asks Mia.
                        -- CHR_MIA_REL
                        -- CHR_TRO_REL
                            "That's the engine cut-off switch lanyard," says Troy. 
                            "What does it do?" 
                            "It's a kill switch. If I were knocked away from the controls or tossed overboard, the lanyard will disconnect, stopping the engine." 
                            // is tossed enough in this circumstance? How long a string is it? Could him collapsing be enough? Maybe: If the driver moves or falls away from the wheel, the lanyard...   ?
                     *   "Why are all the channel markers green on the right[?"] and red on the left?" asks Mia.
                     //Shouldn't this be Mia, and below? Alexis knows a lot about boating. 
                        -- CHR_TRO_REL
                        -- CHR_MIA_REL
                            "That's a visual cue to help us work out whether we are headed out to or returning from open waters," says Alexis. "Just remember <b>'red right returning'</b>."
                            "Well, that's easy enough to remember," says Mia. 
                            //this doesn't make any sense to *me*. 
                            // OH! After rereading, she's talking about markers outside the boat. I was thinking it was something near the wheel/engine switch, and wondering whether it automatically knew what direction they were in. Make clearer; maybe also have her say 'well that's easy enought to remember.'
                            // why is it capped up? - it's fine, but it breaks from text pattern elsewhere, and it's already bold.
                     * "Why are we going north?"[] asks Julian. 
                        -- CHR_JUL_REL
                        -- CHR_TRO_REL
                        "Right now we're following the channel markers. We'll turn east soon, after we've cleared the channel," says Troy. 
                        //it's not possible to ask all the questions even if you want to?
            // We require the player to ask at least one question
                     *    {loop} [Onward!]
                        -> done
                    - (loop)
            // loop a few times
                     { -> opts | -> opts | -> opts }
                    ** [The visibility is great today!] "I can already see the end of the channel," says Alexis.  
                       -- CHR_ALX_SML
                      
                    
                    - (done)
                 
                        * ["Look, over there," says Mia, pointing.]
                     
                   
                        -> mia_points_ahead
                        

== mia_points_ahead == 
// SOUND ambience on water engine    
    - CHR_MIA_REL
    -   Mia points ahead to a small boat riding low in the water. "That's the man—Mac—we were talking to on the dock."
        
        * ["We're slowly gaining on him," says Alexis.]
            -> overtake_or_reduce
        
        = overtake_or_reduce
        - CHR_ALX_REL
        - CHR_TRO_REL
        "We'll overtake him before we're out of the channel, unless we reduce our speed," says Alexis. 
        
        Troy considers the <i>Lakesong's</i> speed and the distance to the other boat. "I agree." 
        
            * [Troy reduces speed.]
                -- CHR_TRO_REL
                -- CHR_JUL_ANG
                Troy pulls back on the throttle, slowing the <i>Lakesong</i>.
            
                Julian's sigh is melodramatic. "This is going to take all day." 
                "Mac's boat is pretty loaded," says Troy. "I don't want to overtake him and risk—"
                
                    ** [Troy is cut off.] 
                        -> before_tro_can_fin
            * [Troy maintains the same speed.] 
                -- CHR_TRO_REL
                -- "We're not producing any wake, so we should be fine to overtake him even though he's low and loaded."
                
                ** ["We should toot the horn, right?" asks Alexis]
                    
                    *** [Review sound devices requirements.]
                    // link to sound producing requirement SG 
                        ---- SYS_PDF_17
                            -> sound_requirement
                    
                    *** [Continue without a review.]
                        -> sound_requirement
                
                    
            = sound_requirement
            - CHR_ALX_REL
            - CHR_TRO_REL
            -   "We should toot the horn to signal our intent, right?" checks Alexis.       
                    
                    
                    ***"That's right," answers Troy.[] "One toot if we intend to pass on his port side, two toots if we go to his starboard."
                        ---- CHR_TRO_REL
                        ---- CHR_JUL_SML
                
                    "Can I do it?" asks Julian. 
                    
                    "Sure, Julian, you can be our—"
                    
                        **** [Troy is cut off.]
                            -> before_tro_can_fin

== before_tro_can_fin == 
        -   CHR_TRO_SUR
        // SOUND speed boat pass by. you may need to trigger this to occur some number of second after page load so that user can orient and begin reading before the sound cuts in. Play only once. After speed boat pass revert to ambient engine (or than can always be playing underneath speedboat pass)
        -   SYS_SOUND_401
        //actually, you want the sound straight away, as he's cut off in the previous page.
        -   The sound of a loud outboard motor cuts Troy off. A boat is rapidly overtaking the <i>Lakesong</i> on her starboard side. 
        
            Neither the man driving the speeding boat or his passenger, a young woman, are wearing a PFD.
            
                * "That was rude!" exclaims Mia.[]
                    -- CHR_MIA_ANG
                    -- CHR_TRO_ANG
                    "And reckless," adds Troy. 
                    
                        ** [Alexis shakes her head.]
                    -> rude_reckless
                    
                = rude_reckless
                - CHR_TRO_ANG
                - CHR_ALX_ANG
                - "Let's see: no PFDs, poor seamanship, unsafe speed, failure to signal intent to overtake..." lists Alexis, frowning. 
                //what's the sharp lookout bit about? She's assuming that they didn't just see the boat and not care
            
                    * The <i>Lakesong</i> is buffeted[.] by the speedboat's wake. The friends take hold and ride the rocking out.
                    
                        -- CHR_MIA_SUR
            
                        -- "Oh, no, Mac and his small boat!" says Mia, looking ahead.
                        
                            ** The friends watch[.], as the departing speed boat's wake crashes into the smaller boat, rocking it violently.
                            //try to keep speech natural -even if it's slghtly less helpful for the player's viewpoint
                            //don't think the variance adds anything here - took out so  I could easily emphasise the danger of the man's situation
                            -> man_holds_on
                        
        = man_holds_on                    
            * Mac holds on[.], with both hands, keeping his body low and his feet spread. It comes close to capsizing but gradually settles. Fortunately, the cargo was low and evenly distributed. And by keeping at least three points of contact with his boat, the man minimized his risk of being thrown overboard.  
            //don't you think he'd just keep both hands and feet planted? I know this is a teaching moment,but it's a bit unnatural. Maybe here have:
            // The man holds on[.] with both hands, keeping his body low and his feet spread.   Then, after 'distributed', some more meta text: 'Keeping at least three points of contact with a boat helps maximise its stability.' (if it does) 
                ** Troy gives two quick horn toots[.] to signal his intent to overtake Mac on the starboard side. 
                // the size of the smaller boat isn't really relevant, here; could be confusing (think only toot when overtaking smaller boats)
                    --- CHR_TRO_REL
            
                    As the <i>Lakesong</i> pulls alongside the smaller boat, Troy eases the throttle back and calls out.
            
                        *** "Ahoy there!["] You alright?"
                        //do people say 'ahoy there'? if so, leave
                            -> u_ok_man
            
== u_ok_man ==
            - CHR_TRO_SUR
            - CHR_DID_ANG
            
            - (opts)
            *    ["I'm wet."]
                -- CHR_DID_SAD
                  Mac pulls of his hat and gives it a shake. -> angry

            *    (angry) ["I ain't happy."] {"I came really close to capsizing and losing all my supplies," he says, scowling.|"But I didn't go overboard, so could be worse."}
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
            
            
           
    
             
                    * [Ask Mac if he knows the pair in the speed boat.]
                        -- CHR_DID_REL
                    
                        "{~I've been seeing them around the docks since the end of last season. They boat in for supplies|Not really. Seen them buying supplies. They're not real friendly|Don't know their names, but seen them a few times buying supplies.}," says Mac. "Willard, the shopkeep, told me they're from Oceanside." 
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
                 "Maybe they live out on an island same as me," suggests Mac. 
                 //no need for a questionmark
                 -> oceanside

                *    (oceanside) ["Oceanside?"]
                
                    {Alexis takes notice of the mention of Oceanside. "Some people think Oceanside is where the boat thieves are from," she says. Mac shrugs but says nothing more.|"Could be," says Troy, as he nudges the throttle forward to overtake Mac's boat.}
                    //I found this confusing - added 'boating on'  as I was still thinking about supplies, so drinking?
                    // Who is Troy telling this? If the man is a local, maybe Troy should address it to his friends instead?
                    //If you do Oceanside first, then supplies, this follows in an odd order. Alexis sounds likes she's not heard the previous subject change.

                *    {oceanside} [Overtake Mac's boat.] 
                    
                    -> overtake_wave_goodbye

            -     -> opts
            
                              
                       
== overtake_wave_goodbye ==
    -   Troy and the others bid farewell to Mac, and the <i>Lakesong</i> heads on through the channel toward open water, passing various buoys and markers—the 'traffic signals' that guide vessel operators safely along the waterways. 
 
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
        -> proper_lookout
        
        