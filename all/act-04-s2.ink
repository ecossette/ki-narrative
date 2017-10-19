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
    
            * [A pair of eyes staring back at him.] 
                // go to monkey tunnel
                
                -> monkey_watching ->
                
                    **  [Troy and Julian look at stream ahead of them.]
            
            * [ Julian looking up into a tree.]
                // julian says a 'creature' crashed drone
            
            * [A dark stream bending into the forest.]
                // both above eventually get back to stream
            
=== monkey_eyes_him ===
// this probably need to treated as a tunnel
    
    -   "That's a monkey!" says Troy astonished to find a monkey sitting on a fallen log looking at him.
        "Correction. <i>Monkeys</i>." says Julian pointing up into the trees as several small hairy bodies skitter through the high branches.        

            * The monkey watches Troy[.], and Troy watches the monkey.
                -> monkey_watching

== monkey_watching ==
   
        - (opts)
        *    [The monkey shrieks.] 
            The monkey shrieks and leaps to the next tree. -> ducks
        
        *    (ducks) [The monkey grabs something.]{Troy ducks and a large pine cone splashes into the water behind Troy after just missing his head.| Troy watches as the monkey scurries from one tree to the next along the bank.}
        
        *    {ducks} [Julian laughs.] -> monkey_arm
        
        -     -> opts


    = monkey_arm
    -   "That monkey has a pretty good arm," he says, watching the monkey take off along the tree tops. 
    -   "Surprisingly accurate, too," says Troy. "Can this thing get any weirder? What are monkeys even doing on this island?
        "Left over from the research, I suppose," answers Julian.
        
        // return from where tunnel was called
        ->->
            
            
            
        
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
    -  Julian isn't suprised by Troy's decision. He knew Troy wouldn't be able to resist exploring the stream. Still, now that the decision is made, Julian is a little apprehensive. What if they do run into the thieves? 
    
            * [Paddle into the stream.]
                -> enter_stream
            
        = enter_stream
        The two kayaks move effortlessly through the stream's waters, and pass through several bends as the waterway winds into the island.
        
        "How deep do you suppose this is," says Julian in a hushed voice, looking down into the dark water.
        
        "Deep enough for a large power boat," says Troy, "but not deep enough to handle the keel of a sailboat is my guess."
        
            * ["Oh, right," says Julian.] 
                -> stream_continues
       
            
        =   stream_continues
        -   "That would explain why no sailboats have been stolen,"  says Julian, catching Troy's point on the depth.  
        
        -   The guys begin to sweat as they continue paddling deeper into the island following the stream as it twists and turns. The fog has cleared—at least this far inland—and occassionally sunlight filters through the canopy of trees, warming the air considerably. 
        
                * [The forest is alive with sound.]
                    -> forest_alive_sound
                    
                
        =   forest_alive_sound
            The sound of birds, insects, frogs, and various animals{monkey_eyes_him:, including the monkeys they saw earlier,} surrounds the kayakers, making their own paddling nearly silent. 
            
            "Nobody is going to hear us, that's for sure," says Julian. "It's loud in here."
            
            {
                - monkey_eyes_him:
                "Those monkeys are especially loud," says Troy. "And if feels like they're following us."
                
                - else:
                    * ["I swear I keep hearing monkeys," says Troy.] 
                        -> swear_hear_monkey
                
                
                
                
            
            }
            
        = swear_hear_monkey
        "But that's impossible," he says. "There are no wild monkeys south of the Atlas Mountains."
         
            * "Really?" says Julian.[] "Then how do you explain that?" says Julian pointing to stream bank ahead. 
            
                ** [Troy looks.]
                -> monkey_eyes_him ->
                
                 ***  [Troy and Julian look at stream ahead of them.]
                    -> how_far_stream_goes
         
         
== how_far_stream_goes ==
    -   "How far do you think it goes?" wonders Julian.
        "I don't know, but we'll need to turn back soon," says Troy. "Mia and Alexis will be looking for us at the rendezvous time."
        
            * ["Lets see what's around the next big bend." suggests Julian.] 
                -> next_bend
            
        = next_bend    
            "If it turns out to be just more of the same, we'll head back," he says. 
            
                * ["OK. Sounds good," says Troy.]
                    -> around_next_bend
            
        = around_next_bend
        -   Julian leads the way with Troy close behind. The bend looks similar to the others they've paddle through, and they approach as they have others with the hope of finding something interesting on the other side.  Passing the first few bends they were nervous, wondering if the thieves would be just around the corner, but so far each bend has only revealed the same thing—more stream going on and on to the next bend. 
        
                * They steer around the bend and find[...] more stream leading to yet another bend 50 yards to so further along. 
                
                    "Well, I guess that's it, then," says Troy, dropping his paddle to being his pivot turn to reverse direction. 
                    
                        ** [CLANG!]
                            -> clang_heard
                        
 == clang_heard ==
        
        - (opts)
        *    [Julian looks at Troy wide-eyed.]
            Troy puts his figer to his lips.  -> silent
        
        *    (silent) [Nobody moves a muscle.] {They both know the sound they heard wasn't from monkeys or birds.  While distant, the clang was unmistakably a clang of metal on metal, the sound of human activity.| Listening...}
        
        *    {silent} [Overhead a buzzing...] -> overhead_buzzing
        
        -     -> opts

== overhead_buzzing ==
    - Overhead they hear a buzzing eerily similar to what they heard yesterday, but the tree canopy is too thick for them to see if it's one or more of the disguised drones. They do not hear another clang. 
    
     Troy pulls alongside Julian and says, "I think we should go a little further."
        
        - (opts)
        *    [Julian continues to look overhead.]
            "I guess it all depends on how you define 'a little' further," he says.  -> slow
        
        *    (slow) [Julian looks at the stream ahead.] {"Remember that we still need to row back to the cove, and you are kind of slow, dude... I'm just saying." | "A clang like we heard can travel really far, so I doubt the thieves are too close."}
        
        *    {slow} [Troy paddles forward.] -> tro_so_slow
        
        -     -> opts
        
        
    = tro_so_slow
    - "Since I'm so slow, I better get a head start," says Troy grinning. 
    
        Julian pulls in behind Troy and they paddle forward down the middle of the stream and around the next bend. And then around yet another. And then they hear...
        
                * [The sound of an engine.]
                
    =   jul_bolts
        Upon hearing the engine, Julian instinctively goes into fight or flight mode and pivots his kayak, the muscles on his neck tense in preparation to paddle away quickly to escape. 
        
            *   ["Wait!" says Troy trying to whisper-yell.]
            
    =   think_generator        
    -   "That's not a boat motor," he says. "I think it's a generator. And it's coming from over there." Troy points into the forest on the left bank. Also on the same bank, Troy spots a sandy area. "C'mon, let's pull up on to that sand."
    
            * [Julian looks at Troy in disbelief.]
            
    = jul_disbelief
        {"Wait, you want to go on foot?" says Julian.| Julian is still skeptical. "We're faster on the water," he says."|}
                
                    The stream leads to the sound. So we can't take the kayaks any further safely and see what is going on. 
                    
                    The forest gives us cover. We can shortcut through on foot, take a quick peek, and then paddle straight back to the cove. 
                    
                    
                
                
        
                
        
                
        
                
            
            
            
            -> DONE
        
        




