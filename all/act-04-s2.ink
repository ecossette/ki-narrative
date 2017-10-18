=== follow_kayaks ===
-    The kayaks slide into the fog and quickly lose sight of the Lakesong. Julian is an experienced rower, and Troy has to work to keep pace. They reach the cove's shoreline and proceed to circumnavigate the cove, keeping an eye for anything out of the ordinary. 

        *  [15, 20, 30 minutes pass...]
        After half an hour they've managed to search roughly half of the cove, but haven't found anything at all, despite the fog being much lighter along the isle's shore, giving them good visibility. 
        
            Julian stops paddling, and then pivots his kayak about until he is facing back in the direction from which he came. 
            
                * ["You see something?" asks Troy.]
                    -> jul_stops_paddling
            
== jul_stops_paddling
    -   "May be something, may be nothing," he says.
    
        - (opts)
        *    [Julian points with his paddle.]
            Troy looks where Julian is pointing. -> no_see
        
        *    (no_see) ["I don't see anything," says Troy.] {"All I see are those vines," he says.|  "What? The vines?" asks Troy.}
        
        *    {no_see} [Julian paddles toward the spot.] -> jul_paddles_vines
        
        -     -> opts

    = jul_paddles_vines
    - Julian paddles toward a section of the shoreline marked by a very dense growth of vines. He can't see where the vines begin, somewhere in the tree canopy high overhead. The vines droop down into the water for thirty feet or more in a lush curtain of green. 
    
        * [Troy paddles alongside Julian.]
            -> vines_section
        
    = vines_section
    -   "I didn't realize it until we passed this section," Julian says, "but this is the only part of the cove we've seen that has these vines."
        
            * ["Hmmm, you're right," says Troy.]
                -> tro_impressed
            
    =   tro_impressed
    -   "I hadn't noticed that," says Troy, impressed by Julian's focus and seriousness.
    
        Julian paddles right up and then into the vines, the bow of his kayak slipping through the greenery.
        
            * [Julian reaches out...]
                -> it_is_netting
            
            
==  it_is_netting ==
    -   "It's netting!" says Julian reaching out and grabbing hold of the vines. "Mixed with some real plant matter woven in for added realism."
        
        - (opts)
        *    [Troy paddles backward.]
            "Somebody is going to a lot of trouble to hide something," says Troy, paddling back to get a better look. -> camo
        
        *    (camo) [Troy scans the netting.] {"There must be an opening," he says. | "Just like with the drones disguised as creatures."}
        
        *    {camo} [Julian eases his kayak forward.] -> jul_eases_forward
        
        -     -> opts

    = jul_eases_forward
    -   "Disguised drones, camouflage..." says Julian. "Somebody thought of everything, but they didn't count on kayaks." Julian lifts the netting and paddles under it.
        
            * [Troy watches Julian dissappear behind the camouflage.]
                -> vine_questions

== vine_questions ==
    -   As Julian slips beneath the camouflage and out of view, Troy can't help but wonder what happened to the reluctant Julian from the day before.
        
        - (opts)
        *    [Troy hesitates.] 
            Troy pauses to inspect the net up close. -> call
        
        *    (call) [Troy paddles forward.]{Troy grabs the netting and slowly inches forward to slip under.| As with the disguised drones, he can't help but be impressed with the craftmanship.}
        
        *    {call} ["Get a load of this," says Julian.] -> get_a_load
        
        -     -> opts

    = get_a_load
    -   Troy emerges from beneath the vine curtain expecting to see the cove's shoreline and is suprised when he sees...
    
            * [A monkey sitting on the trunk of fallen tree.] 
            
            * [A dark stream bending into the forest.]
            
== monkey_eyes_him ==
// this probably need to treated as a tunnel
    
    -   "There's a monkey!" says Troy astonished.
        "Correction. <i>Monkeys</i>." says Julian pointing up into the trees as several small hairy bodies skitter through the branches.        

            * The monkey watches Troy[.], and Troy watches the monkey.
                -> monkey_watching

== monkey_watching ==
   
        - (opts)
        *    [The monkey shrieks.] 
            The monkey shrieks and leaps to the next tree. -> ducks
        
        *    (ducks) [The monkey grabs something.]{Troy ducks and a large pine cone splashes into the water behind Troy after just missing his head.| Troy watches as the monkey scurries from tree to tree and vanishes into the forest.}
        
        *    {ducks} [Julian laughs.] -> monkey_arm
        
        -     -> opts


    = monkey_arm
    -   "That monkey has a pretty good arm," he says.
    -   "Surprisingly accurate, too," says Troy. "Can this thing get any weirder? What are monkeys even doing on this island?
        "Left over from the research, I suppose," answers Julian. 
            
            * [Troy and Julian look at stream ahead of them.]
            
        
=== dark_stream ===        
    -   "This stream is wide enough for a boat," says Julian. "I think we found the answer to the vanishing act yesterday."
        "My thoughts exactly," says Troy. "I'm guessing the leads directly to the thieves' hideout."
            
            *   ["So do we follow it or not?" asks Julian.]
                -> follow_or_no
        
=== follow_or_no ===
    -   { "That's the question, isn't it?" says Troy, who begins to think out loud.| Troy then considers the alternative.|} 
    
    *    "If we follow the stream[..."], we could find the thieves hideout but we also run the risk of being seen—or worse—getting caught by the thieves," says Troy. "On the other hand, the more we learn, the better chance we have of getting the reward." -> follow_or_no
    
    *    "If we don't follow the stream[..."], we probably have enough clues now to give to the police and probably get the reward," says Troy. "But we still have well over an hour before the rendezvous time, and the idea of killing time in the cove waiting isn't very appealing." -> follow_or_no 
    
    *    -> decision_stream
    
== decision_stream ==
    *  [Troy asks for Julian's opinion.]
        -> jul_opinion_stream
       
    *  [Troy decides without Julian's input.] 
        -> final_decision_stream

== jul_opinion_stream ==
    -   "I won't lie. The idea of running into the thieves scares the crap out of me," says Julian. "But these kayaks are really quiet and stealthy... I imagine we would hear the thieves long before they'd hear us."
        -> final_decision_stream
    


== final_decision_stream ==
    {
        - final_decision_stream: Troy agres with both of Julian's points and refactors all the pros and cons before deciding to...
        
        - else: Troy doesn't ask for Julian's opinion, deciding to make the decistion himself. Julian can agree or disagree after hearing Troy's decision to...

    }

        * [ Turn back to the cove without following the stream.]
            "Considering what we already know, we now have enough to take to the police," says Troy. "There is no point in taking the risk of paddling down the stream."
                
                ** ["That works for me," says Julian.] 
                    -> no_go_stream
        
        * [ Follow the stream and try to learn more.]
            "I think the reward outweighs the risk," says Troy. "Let's at least paddle up to kill some time until we can rendezvous with the girls."
            
                
                ** [Off we go, then," says Julian.] 
                    -> go_stream
                
                
        
=== no_go_stream ===
    -   Julian is relieved but also a little disspointed. He assumed Troy would want to explore the stream for sure. 
    
        They paddle back under the camouflage and take the kayaks to the other side of the cove, putting distance between themselves and the vine curtain hiding the stream in case the thieves enter or exit through it. The fog persists and they both hope Mia and Alexis will be on time. 
        
            * [Follow Mia and Alexis in the boat.]
                -> follow_boat

=== go_stream ===
    -  Julian isn't suprised by Troy's decision. He knew Troy wouldn't be able to resist exploring the stream. Still, now that the decision is made, he's a little apprehensive. What if they do run into the thieves? 
    
            * [Enter the stream.]
            
        = enter_stream
        "How deep do you suppose this is," says Julian in a hushed voice while looking down into the dark water.
        
        "Deep enough for a large power boat," says Troy, "but not deep enough to handle the keel of a sailboat is my guess."
        
        "Ah, right," says Julian. "That would explain why no sailboats have been stolen."
        
            * [The stream continues.]
            
        =   stream_continues
        -   The guys begin to sweat as they continue paddling deeper into the island following the stream as it twists and turns. The fog has cleared—at least this far inland—and occassionaly sunlight filters through the canopy of trees, warming the air considerably. 
        
                [The forest is alive with sound.]
                -> forest_alive_sound
                    
                
        =   forest_alive_sound
            The sound of birds, insects, frogs, and various animals{monkey_eyes_him:, including the monkeys they saw earlier,} surrounds the kayakers, making their own paddling nearly silent. 
            
            "Nobody is going to hear us, that's for sure," says Julian. "It's loud in here."
            
            {
                - monkey_eyes_him:
                "Those monkeys are especially loud," says Troy. "And if feels like they're following us."
                
                - else:
                "I swear I keep hearing monkey calls," says Troy, "but that's not possible."
                
                "Really?" says Julian
                
                
            
            }
            
            
        
        




