/*------------------------

ACT 03 
SCENE 03

*/


=== after_dropping_anchor ===
    -   CHR_TRO_REL
    -   After successfully anchoring the the <i>Lakesong</i>,Troy does another quick check for leaks.
    
            * "OK. No sign of leaking[."]," says Troy. "And that's good news."
                -> fog_less_thick_maybe
            
    = fog_less_thick_maybe
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   "More good news," says Alexis. "The fog seems less thick now." 
    -   "Agreed," says Troy. 
    
            * ["Look over there!" says Julian.]
                -> what_see_nothing
            
    = what_see_nothing
    -   CHR_JUL_SUR
    -   CHR_MIA_REL
    -   "What? I don't see anything," says Mia.
        "I don't now either, but I swear I caught a glimpse of shoreline."
        
            * ["Unlikely," says Troy.]
                -> unlikely_far_from_shore
            
    = unlikely_far_from_shore
    -   CHR_TRO_REL
    -
    -   "Our last position before we losing visibility had us pretty far from shore."
    
        "Look! There it is again," says Julian, pointing.
    
            * ["I see it, too," says Mia.]
                -> see_it_too
    = see_it_too
    -   CHR_ALX_REL
    -   CHR_TRO_REL
    -   "Looks like a small beach surrounded by woodland," says Alexis. 
            
        "It has to be in island," says Troy. 
            
            *   "Kalkomey Isle?"[] Julian wonders.
                -> is_ki
                        
    = is_ki
    -   CHR_JUL_SML
    -   CHR_TRO_REL
    -   "Considering there are hundreds of islands scattered around the lake, it's highly unlikely that is Kalkomey Isle," says Troy. 
                        
             - (opts)                
                * [Julian makes a face.]
                -- CHR_JUL_SAD
                "The evidence is clear," says Julian.-> fog
                
                * (fog) ["C'mon, Troy, look..."] {"Going north? Check. Fog? Check. Loss of cell signal? Check."|He looks at Mia and Alexis for support, but neither says a word.}
                
                * {fog} [But Troy isn't convinced.] -> tro_not_convinced
                        
            -   -> opts
    
== tro_not_convinced ==
    -   CHR_ALX_SML
    -   "Anyone up for exploring the island?" asks Alexis. "I mean we aren't going anywhere until this fog lifts?"
        
        The responses to Alexis suggestion are mixed. 
            
        - (opts)
            *   "No flipping way!"[] says Julian. "What if Troy's wrong and that <i>is</i> Kalkomey Isle? Mutant creatures are not on my list of entertainment choices."
                -- CHR_JUL_REL
        
            *   "We do have the paddleboards[."]," says Troy. "And the boat is anchored securely. As long as we didn't venture too far..."
                -- CHR_TRO_REL
            
            *   "Won't it be dark soon?"[] asks Mia.
                "Not for awhile," says Troy. "The fog and overcast make it seem later than it is. Still we would need to keep an eye on the time."
                -- CHR_MIA_REL
                -- CHR_TRO_REL
            *   {loop} [Alexis has heard enough.]
                    -> done
            
        - (loop)
            { -> opts | -> opts | }
             -   CHR_ALX_REL    
            Alexis looks at her friends and holds out her hands.
        - (done)
       
            *  ["So..." says Alexis.]
            -> make_explore_decision
            
    == make_explore_decision == 
    -   CHR_ALX_REL
    -   "Are we going to go explore that island or not?"
            
            * [Do it.]
                -> go_to_island
            * [Don't do it.]
                -> no_go_island
            * [Flip a coin.]
                -> flip_go_island
                        

=== go_to_island === 
VAR explore_island = true
    -   "Yes!" says Alexis. "Let's get those paddleboards in the water and check out the island."
    
    -   As they pull the two paddleboards off the racks, Troy reminds his friends of basic paddleboard safety. 
                        
            * "When you're on a paddleboard[..."], you're still a boater," says Troy. "So you need to follow the same safe practices, including wearing a PFD."
                            
                ** [ Review paddlesports safety information.]
                    // launch paddlesport review here
                    FPO: Paddlesports review will launch here.
                        *** [OK]
                            -> on_paddeboards
                                    
                        
== flip_go_island ==
    -   CHR_TRO_REL
    -   Because they can't decide nor completely agree, they decide to flip a coin.
    
        "OK, so heads we go down the path, and tails we go back to the boat," says Troy. 
        
            * Troy tosses the coin[.] up into the air, and it falls back into the sand to reveal...
            
                
    
                { shuffle:
                   - -> heads
                
                   - -> tails
                }
                
    
    = heads
    -   CHR_ALX_SML
    
        * "Heads it is!" says Alexis.[]
            -- CHR_ALX_SML
            -- CHR_JUL_SAD
        
            "Two out of three?" asks Julian, but Alexis shakes him off.
        
            "Let's go," she says and heads toward the path. Mia, Troy, and a reluctant Julian follow her.
        
                ** [Down the path.]
                    -> enter_the_path
        
    
    
    = tails 
    -  CHR_JUL_SML
    
        * "Tails!" says Julian grinning.[]
            - CHR_ALX_SAD
            "It is what it is," says Alexis with a disappointed shrug. 
        
            * [Mount the paddleboards to return.]
            -> mount_paddle_return_early
        
        
== on_paddeboards ==
    -   Troy and Mia navigate one board, while Alexis and Julian take the other. 
                        
            * They arrive on the small beach[.], and a few things immediately catch their attention as they look around.
        
            - (opts)
                *   [An old dock.]
                    -- CHR_TRO_REL
                    -- CHR_TRO_REL
                    "Hey, this looks like an old dock hidden beneath this overgrowth," says Alexis, peeling back tree limbs.
                    "But, look!" says Troy. "Parts of it are brand new."
                        
                        ** ["Someone must be still using it."]
                
                *   [A hidden rake.] 
                    -- CHR_MIA_REL
                    -- CHR_JUL_REL
                    Mia sees a handle sticking out of the brush. She find it's connected to rake. 
                    "Who would hide a rake out here?" wonders Mia.
                    "Maybe to rake away footprints?" says Julian. 
                        ** ["Eww, that's creepy."]
                
                *   [An old sign.] 
                    -- CHR_TRO_REL
                    -- CHR_MIA_REL
                    Troy finds an sign laying face down, and picks it up. 
                
                    "What's it say, Troy?"
                    "Most of it is washed out," he says. "Looks like part of a logo and the words 'GENETICS' and "FIELD STUDY."
                        ** [Julian's eyes open wide.]
                
                *   {loop} [Enough exploring.]
                    -> done
                    
            - (loop)
                { -> opts | -> opts | }
                Done exploring, the friends gather at the center of the beach.
                
                    * [Troy speaks first.]
                
            - (done)
            - CHR_TRO_SUR
            -   "If this is Kalkomey Isle, it sure doesn't appear to be abandoned," says Troy. "Somebody's certainly been here recently."
            
                As the fog slowly dissipates, more of the island becomes visible.
                
                    * ["Look, there's a path," says Alexis.]
                        -> path_in_woods
                    
            
== path_in_woods ==
    -   CHR_ALX_SML
    -   Alexis point to a narrow footpath leading into the woods and deeper into the island.
    
        "Let's see where the path leads." 
    
            *   [Follow the path. It's still too foggy to boat away from the island.]
                -> follow_the_path
            
            *   [Return to the <i>Lakesong</i> and wait for the fog to clear.]
                -> return_boat_wait
    
    = return_boat_wait 
    -   "I think we're better off returning to the boat," says Troy. "This fog appears to be burning off pretty quickly. We won't have to wait long."
    
            * [Mount the paddleboards to return.]
                -> mount_paddle_return_early
            
                            
    = follow_the_path 
    -   CHR_JUL_SML
    -   Alexis, Mia, and Troy walk toward the start of the path.
        
            * ["Hey, hold up," says Julian.]
                -> jul_hold_up
    = jul_hold_up
    -   CHR_JUL_REL
        "Maybe I should stay behind to, you know, look after the boat?"
        
            * ["The <i>Lakesong</i> will be fine."] 
                -> boat_well_anchored
                
                   
            
   = boat_well_anchored
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   "The boat is well-anchored," says Troy. "Besides I think it's safer if we all stick to together."
        
        * ["Well, since you put it that way, bro."]
                    -> jul_since_that_way
    
     = jul_since_that_way
    -   CHR_JUL_SML
    -   "I mean if the boat is OK and all," says Julian, catching up with his friends as they set off.  
    
            * [Down the path.]
                -> enter_the_path
        

      