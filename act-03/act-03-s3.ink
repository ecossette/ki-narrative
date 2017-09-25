/*------------------------

ACT 03 
SCENE 03

*/


=== after_dropping_anchor ===
    -   CHR_TRO_REL
    -   After successfully anchoring the the <i>Lakesong</i>, Troy does another quick check for leaks.
    
            * ["OK. No sign of leaking," says Troy.]
                -> fog_less_thick_maybe
            
    = fog_less_thick_maybe
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   "That's good news," he says. "Taking on water is the most likely problem after running aground."
    -   "More good news," says Alexis. "The fog seems less thick now." 
    -   "Agreed," says Troy. "It's still thick, but I can see twice as far as when we first entered the fog." 
    
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
    -   CHR_JUL_SUR
    -   "Our last position before losing visibility had us pretty far from shore," he says.
    
        "Look! There it is again," says Julian, pointing.
    
            * ["I see it, too," says Mia.]
                -> see_it_too
    = see_it_too
    -   CHR_MIA_REL
    -   CHR_TRO_REL
    -   "Looks like a small beach surrounded by woodland," says Mia.. 
            
        "It has to be in island," says Troy. 
            
            *   ["Kalkomey Isle?" Julian wonders.]
                -> is_ki
                        
    = is_ki
    -   CHR_JUL_SML
    -   CHR_TRO_REL
    -   "Doubtful," says Troy. "There are hundreds islands scattered around the lake." 
                        
             - (opts)                
                * [Julian is certain.]
                -- CHR_JUL_SAD
                "The evidence is clear," says Julian.-> fog
                
                * (fog) ["C'mon, Troy, look..."] {"Going north? Check. Fog? Check. Loss of cell signal? Check."|He looks at Mia and Alexis for support, but neither says a word.}
                
                * {fog} [Troy isn't convinced.] -> tro_not_convinced
                        
            -   -> opts
    
== tro_not_convinced ==
    -   CHR_ALX_SML
    -   "Whatever island it is, let's go explore it!" says Alexis. "I mean we aren't going anywhere until this fog lifts anyway. What do you think?"
            
        - (opts)
            *   ["No flipping way!" says Julian.]
                -- CHR_JUL_REL
                "What if Troy's wrong and that <i>is</i> Kalkomey Isle? Mutant creatures are not on my list of entertainment preferences."
                
        
            *   ["We do have the paddleboards," says Troy.]
                -- CHR_TRO_REL
                "And the boat is anchored securely. As long as we didn't venture too far..."
                
            
            *   ["Won't it be dark soon?" asks Mia.]
                -- CHR_MIA_REL
                -- CHR_TRO_REL
                "Not for awhile," says Troy. "The fog and overcast make it seem later than it is. Still we would need to keep an eye on the time."
                
            *   {loop} [Alexis has heard enough.]
                    -> done
            
        - (loop)
            { -> opts | -> opts | }
               
            Alexis looks at her friends with a mischievous smile.
        - (done)
        -   CHR_ALX_SML 
           "So...." says Alexis. "Are we going to go explore that island or not?" she asks.
           // -> make_explore_decision
            
   // == make_explore_decision == 
    //-   CHR_ALX_REL
    //-   
            
            * [Paddleboard to the island.]
                -> go_to_island
            * [Don't paddleboard to the the island.]
                -> no_go_island
            * [Flip a coin to decide.]
                -> flip_go_island
                        

=== go_to_island === 
VAR explore_island = true
    -   CHR_ALX_SML
    -   "Yes!" says Alexis. "Let's get those paddleboards off the racks and into the water."
         
            * [Launch the paddleboards.]
            -> paddleboard_safety
    
                        
            

== paddleboard_safety == 
    -   CHR_TRO_REL
    -   Before setting off, Troy reminds his friends of basic paddleboard safety. 
       
        "When you're on a paddleboard, you're still a boater," says Troy. "So you need to follow the same safe practices, including wearing a PFD."
                            
                ** [ Review paddlesports safety information.]
                    // launch paddlesport review here
                    FPO: Paddlesports review will launch here.
                        *** [OK]
                            -> on_paddeboards
                                    
                        
== flip_go_island ==
    -   CHR_TRO_REL
    -   Because they can't decide nor completely agree, they decide to flip a coin.
    
        "OK, so heads we go explore the island, and tails we stay here on the boat until the fog clears," says Troy. 
        
            * [Troy tosses the coin.] 

    
                { shuffle:
                   - -> heads
                
                   - -> tails
                }
                
    
    = heads
    -   CHR_ALX_SML
 
        * "Heads it is!" says Alexis.[]
            -- CHR_ALX_SML
            -- CHR_JUL_SAD
        
            "Two out of three?" asks Julian, but Alexis shakes him off. "Let's get these paddleboards off the racks"
            
                ** [Launch the paddleboards.]
                -> paddleboard_safety
            
        
        
    
    
    = tails 
    -  CHR_JUL_SML
    
        * "Tails!" says Julian grinning.[]
            - CHR_ALX_SAD
            "It is what it is," says Alexis with a disappointed shrug. 
        
            * [Begin waiting.]
            -> no_go_island
        
        
== on_paddeboards ==
    -   Troy and Mia navigate one board, while Alexis and Julian take the other. 
                        
            * They arrive on the small beach[.], and a few things immediately catch their attention as they look around.
        
           
            - (opts)
             {|From what they are finding, it is clear they are not the only ones to have visited the island.| But it is not clear how recently the island has seen other visitors.}
                *   [Explore object 1: An old dock.]
                    -- CHR_ALX_REL
                    -- CHR_TRO_REL
                    "Hey, this looks like an old dock hidden beneath this overgrowth," says Alexis, peeling back tree limbs.
                    "But, look!" says Troy. "Parts of it are brand new."
                        
                        ** ["Someone must be still using it," says Alexis]
                
                *   [Explore object 2: A hidden rake.] 
                    -- CHR_MIA_REL
                    -- CHR_JUL_REL
                    Mia sees a handle sticking out of the brush. She find it's connected to rake. 
                    "Who would hide a rake out here?" wonders Mia.
                    "Maybe to rake away footprints?" says Julian. 
                        ** ["Eww, that's creepy," says Mia.]
                
                *   [Explore object 3: An old sign.] 
                    -- CHR_TRO_REL
                    -- CHR_MIA_REL
                    Troy finds an sign laying face down, and picks it up. 
                
                    "What's it say, Troy?" asks Mia.
                    "Most of it is washed out," he says. "Looks like part of a logo and the words 'GENETICS' and "FIELD STUDY."
                        ** [Julian's eyes open wide.]
                
                *   {loop} [Enough exploring.]
                    -> done
                    
            - (loop)
                { -> opts | -> opts | }
                Done exploring, the friends gather at the center of the beach.
                
                
            - (done)
            - CHR_TRO_SUR
            -   "If this is Kalkomey Isle, it sure doesn't appear to be abandoned," says Troy. "Somebody's certainly been here before."
            
                As the fog slowly dissipates, more of the island becomes visible.
                
                    * ["Look, there's a path," says Alexis.]
                        -> path_in_woods
                    
            
== path_in_woods ==
    -   CHR_ALX_SML
    -   Alexis point to a narrow footpath leading into the woods and deeper into the island.
    
        "Let's see where the path leads!" she says 
    
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
        

      