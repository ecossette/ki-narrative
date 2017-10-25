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
                // julian says a 'creature' crashed drone, comment on how life creature wouldn't be intact
            
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
    
    -   "Surprisingly accurate, too," says Troy shaking his head. "Can this thing get any weirder? What are monkeys even doing on this island?... We're south of Atlas range, well out of their natural habitat.
        
        "Left over from the research, maybe?" says Julian.
        
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
        
        "How deep do you suppose this is," says Julian in a hushed voice, looking down into the dark water stretching from bank to bank, about four or five kayak lengths in width.
        
                * ["Deep...," says Troy.]
                -> deep_enough
        
        = deep_enough
        -   "Deep enough for a large power boat," says Troy, "but not deep enough to handle the keel of a sailboat is my guess."
        
                * ["Oh, right," says Julian.] 
                -> stream_continues
       
            
        =   stream_continues
        -   "That would explain why no sailboats have been stolen,"  says Julian, catching Troy's point on the depth. The stream is certainly wide enough—at about four of five kayak lengths across—to carry any of the stolen power boats.
        
                * [Julian dips his hand into the stream.]
                
        = hand_dip_stream
        -   "The stream is warmer than I expected," says Julian hanging his arm over the side of his kayak. "I thought the water around here was supposed to be cold?"
        
                * [Troy explains.]
        
        
        = explain_warm_stream
        -   "I believe the water around the island is cold," explains Troy. "That's the snow melt river water flowing down into the lake from the Atlas Mountains, but this stream is flowing from somewhere in the island, so it's warmer."
            
        
                * The guys begin to sweat[.], as they continue paddling deeper into the island following the stream along its many twists, turns, and bends. The fog has cleared—at least this far inland—and occassionally sunlight filters through the canopy of trees, warming the air considerably. 
        
                    ** [The forest is alive with sound.]
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
        "I don't know, but we've paddled aways." says Troy. "We'll need to turn back soon. Mia and Alexis will be looking for us at the rendezvous time."
        
            * [Julian looks upstream.] 
                -> next_bend
            
        
        
        = next_bend    
            "Want to see what's around that next big bend ahead?" suggests Julian."If it turns out to be just more of the same, we'll head back," he says. 
            
                * ["OK. Sounds good," says Troy.]
                    -> around_next_bend
            
        = around_next_bend
        -   Julian leads the way with Troy close behind. The bend looks similar to the others they've paddle through, and they approach it as they have others with the hope of finding something interesting on the other side.  Passing the first few bends earlier, they were nervous, wondering if the thieves would be just around the corner, but so far each bend has only revealed the same thing—more stream going on and on to the next bend. 
        
                * They steer around the bend and find[...] more stream leading to yet another bend 50 yards or so further along. 
                
                    "Well, I guess that's it, then," says Troy, dropping his paddle to being his pivot turn to reverse direction. 
                    
                        ** [CLANG!]
                            -> clang_heard
                        
 == clang_heard ==
    -   A CLANG ripples through the forest and everything goes still.
    
        - (opts)
        *    [Julian looks at Troy wide-eyed.]
            Troy puts his figer to his lips.  -> silent
        
        *    (silent) [Troy is statue still.] {They both know the sound they heard wasn't from monkeys or birds.  While distant, the clang was unmistakably a clang of metal on metal, the sound of human activity.| Listening...}
        
        *    {silent} [Overhead a buzzing...] -> overhead_buzzing
        
        -     -> opts

== overhead_buzzing ==
    - Overhead they hear a buzzing eerily similar to what they heard yesterday, but the tree canopy is too thick for them to see if it's one or more of the disguised drones. They do not hear another clang. 
    
     Troy pulls alongside Julian and says, "I think we should go a little further."
        
        - (opts)
        *    [Julian looks overhead.]
            "I guess it all depends on how you define 'a little' further," he says.  -> slow
        
        *    (slow) [Julian looks up the stream ahead.] {"Remember that we still need to row back to the cove, and you are kind of slow, dude... I'm just saying." | "A clang like we heard can travel really far, so I doubt the thieves are too close. Still... it's risky."}
        
        *    {slow} [Troy paddles forward.] -> tro_so_slow
        
        -     -> opts
        
        
    = tro_so_slow
    -   Troy makes the decision to continue. 
    
        "Since I'm so slow, I better get a head start," says Troy grinning. 
    
        Julian pulls in behind Troy and they paddle forward down the middle of the stream and around the next bend. And then around yet another. And then they hear...
        
                * [The sound of an engine.]
                    -> jul_bolts
                
    =   jul_bolts
        Upon hearing the engine, Julian instinctively goes into fight or flight mode and rapidly pivots his kayak, the muscles on his neck tense in preparation to paddle away in escape. 
        
            *   ["Wait!" says Troy in a whisper-yell.]
                -> think_generator
            
    =   think_generator        
    -   "That's not a boat motor," he says. "I think it's a generator. And it's coming from over there." Troy points into the forest on the left bank. 
    
            * Troy spots a sandy area[.] along the same bank. "C'mon, Jules, let's pull up on to that sand."
    
                ** [Julian looks at Troy in disbelief.]
                    -> jul_disbelief
            
    = jul_disbelief
        {"Wait, you want to go on foot?" says Julian. "Why?"| "We're faster on the water," says Julian, still skeptical.|}
                
                *   "The stream leads straight to the sound , says Troy.[] "So we can't take the kayaks any further safely. I'm afraid we'd be seen on the water." 
                    -> jul_disbelief
                    
                *   "The forest gives us cover," says Troy.[] "We can shortcut through on foot, take a quick peek, and then paddle straight back to the cove." 
                    -> jul_disbelief
                    
                *   -> jul_accepts
                
    = jul_accepts
        *   Julian accepts Troy's reasoning[.], and they both paddle to the the sandy area and climb out of their kayaks. This causes quite a stir among the monkeys who begin vocalizing and stirring around noisely in the tree tops. 
        
            "I hope those monkeys don't give us away," say Julian. 
            
                ** [Troy drags his kayak up into the forest.]
                    -> tro_drags_kayak
                
    = tro_drags_kayak
    -   "That's not the only monkey concern I have," say Troy. "Quick, bring your kayak back here where they can't be seen from the water, and get that rope out of your dry bag."
    
            * Troy fastens both kayaks[.] together with the rope, and then secures the rope to a tree with sturdy knot. 
            
                "There, that should do it!" he says satisfied. 
                
                    ** ["The monkeys?" asks Julian.]
                        -> think_monkey_trouble
    
    =   think_monkey_trouble 
        "You think the monkeys will mess with the kayaks?" says Julian.
        "Better safe than sorry," says Troy. "Monkeys tend to be mischievous creatures."
        
            * [Into the woods...] -> toward_sound
            
    =   toward_sound
    -   Troy and Julian quickly set off into the woods in the direction of the persistant engine sound Troy things is a generator. 
    
        After several minutes of picking their way carefully through the thick underbrush, ahead they see the stream again, doubling back as Troy expected. In addition to the engine sound, they can now hear the sound of power tools and the occassional muffled voice. 
        
                * [The thieves hideaway.]
                    -> thieves_hideaway
        
== thieves_hideaway ==
    -   {They reach the stream bank and peer out from underbrush being careful to remain well-hidden. There is much to see.| Without a doubt, this is the hidewaway, some 50 yards ahead of their hidden position.|} 
    
            
         - (opts)
            *    [A cave!] The stream fronts a large sandstone bluff rising straight up to the equivalent of several building stories in height and out of which is carved a large cave and several smaller ones each with a waterway connecting cave and stream.
            *    [The stolen boat!]
                The boat they saw vanish yesterday sits atop several hull supports in a makeshift drydock inside the largest of several caves.
            *    [Two thieves at work!]
                Two figures are hard at work on the stolen boat hidden in the largest cave. One works on the far side, only his or her legs are visible under the raised hull. The other, a man, on the near side, works with his back to Julian and Troy. 
            // We require the player to ask at least one question
            *    {loop} [Seen enough.] 
                -> done
        - (loop) 
            // loop a few times before the guard gets bored
            { -> opts | -> opts | }
            Julian gets Troys attention and then taps at his write to indicate 'time.'
        - (done)
            * "It's a boat chop shop!" whispers Troy.[]
            -> jul_solved_go
            
== jul_solved_go
    -   "Mystery solved," says Julian, "Now let's get the heck out here!"
    
         - (opts)
        *    [Julian begins inching back.]
            Julian begins inching away from the hideaway along the bank, but Troy stops him.  -> stay
        
        *    (stay) [Troy shakes his head.] {"I want to wait and try to see a face," says Troy. |"Just a few seconds more." }
        
        *    {stay} [The monkeys shriek!] -> monkeys_shriek
        
        -     -> opts
            
        = monkeys_shriek
        -   Suddenly several monkeys begin shrieking somewhere behind Troy and Julian's hiding spot and the thief turns it looks their way. 
        
                * [They recognize the face immediately.]
                    -> it_is_willard
                
        = it_is_willard
            "Mr Willard!" they say in unison.
            
            Then they realize what caused the monkeys to stir. A power boat is heard in the near distance. They see it begin to come around the bend toward the cave.
            
                * [They both lay flat.]
                    -> both_lay_flat
                
        = both_lay_flat
        -   Laying flat on their stomachs on the ground to present the absolute lowest profile, both Julian and Troy break into a cold sweat hoping whomever is the boat won't see them when it passes their position. 
        
                * [The boat approaches...]
                    -> boat_approaches
                
        = boat_approaches
        -   As they lay hidden, the boat approaches and passes. They both let out their breath in relief, and look out from their hiding spot but are unable to get a look at the boat's driver before the boat tucks into one of the smaller caves and out of sight. 
        
                * [Mr. Willard approaches the smaller cave.]
                    -> willard_approach_cave
            
==  willard_approach_cave ==    
        -   Mr. Willard stops at then entrance of the cave and speaks to whomever is inside, but the thieves are too far to be heard. Julian and Troy can only observe.
        
                 - (opts)
                    *    [Mr. Willard crosses his arms.]
                         Mr. Willard crosses then uncrosses his arms before throwing both of them into the air.  -> looks
                    
                    *    (looks) [Mr. Willard turns and looks in their direction.] {Mr. Willard turns and looks in their direction. Julian and Troy freeze, and wonder if they were they spotted.| Something seems to have upset him.}
                    
                    *    {looks} [Return to the kayaks.] -> return_to_kayaks
                
            -     -> opts
        
        = return_to_kayaks   
        -   Julian and Troy inch backwards, quietly and carefully vacating their hiding place overlooking the caves and the thieves' chop shop operation, and trek back to where they left the kayaks. 
        
                * ["What the...?" gasps Julian.]
                    -> kayaks_strewn
                
== kayaks_strewn ==
        -   The kayaks are not as they left them! No longer hidden side by side behind the tree, both are lay flipped over and cast about haphazardly
                
            - (opts)
                * [Julian steps on a dry bag.]
                Julian picks up the dry bag, and sees it was emptied. He scans the forest floor, hoping to salvage something. -> rope
                
                * (rope) [Troy reaches for the rope.] {Reaching for the rope, Troy quickly unties the kayaks.| Julian finds a small piece of discarded wrapper from the granola bar.} 
                
                * {rope} ["The monkeys!" says Troy.]
                    ->the_monkeys
                
            -   -> opts
                
        = the_monkeys
        -   "Yeah," says Julian. "They got my dry bag. Everything's gone."
 
            "You've still got your signals, though, right?" asks Troy. 
            
                * [Julian pats his PFD pockets.]
                    -> signals_yes
            
        = signals_yes
        -   "Yeah, I've got 'em," says Julian. "Do you think the thief that passed in the boat noticed the kayaks?" Julian motions to his kayak that the monkeys flipped out of the hiding spot.
        
                * ["I don't think so," says Troy.] "But let's get the heck out of here before we do get noticed!" says Troy. "We don't know when that boat may go back the other way."
                
                    ** [Paddle back to the cove.]
                        -> paddle_back_cove
                    
=== paddle_back_cove ===
    -   Julian and Troy paddle intensely and without pause back to the vine curtain hiding the stream. They quickly pass under it to find that there is still a lot of patchy fog in the cove just like the day before.  
                    
            * [Troy looks at his watch.]
            "We're about 20 minutes late," says Troy.
            "Do you think they're out there and we just can't see them in the fog?" asks Julian. 
            
                ** ["Doubful," says Troy.]
                    -> doubtful_in_cove
                
== doubtful_in_cove ==
    -   "The plan was for them to leave the cove if we missed the rendezvous time and return again later," says Troy. "And if I know Alexis, she's sticking 100% to the plan."
    
        - (opts)
            * [Julian pulls out the whistle.] 
                Julian looks at Troy with the whistle at the ready. -> survey
            
            * (survey) [Troy surveys the situation.] {Troy doesn't think the Lakesong is close enough to hear a whistle or see a flare, but he wonders if the thieves are.| They both know signalling could get the boat's attention, but it could also get the attention of the thieves.} 
            
            * {survey} [Make a decision.]-> whistle_decision
        
        -   -> opts    
            
        = whistle_decision
        -   "Considering the fog," says Troy, "the whistle has the best chance of getting someone's attention, but whose?"
                
                * [Blow the whistle.]
                    -> blow_whistle
                
                * [Don't blow the whistle.]
                
                
== blow_whistle ==
    -   Julian gives the whistle a good blast and all 120 decibals of sound spread out, broadcasting their location. 
    
        *   [They wait and listen...]
            -> hoping_hear
        
        = hoping_hear
        They listen hoping for a response from the Lakesong's horn to indicate that Mia and Alexis are nearby, but they hear nothing except the natural sounds of the cove. 
        
             -   (opts)
                
                * [Julian wants to signal again.]
                    Julian holds the whistle in expectation of another giving it another blow, but Troy shakes him off.  -> paddle
            
                * (paddle) [Troy begins paddling.] {"Let's hold on another whistle blow for now," says Troy who begins paddling.|"I think our best option is to leave the cove."}
             
                * {paddle} [Julian paddles alongside Troy.] -> best_option_leave_cove

            
            -   -> opts
        
== best_option_leave_cove ==
    -   "But the plan was to meet in the cove," says Julian. "So why are we leaving?"
    -   "If today is like what we saw yesterday, then the cove is one of the last places the fog lingers," says Troy. "If it's clear beyond the cove we may be able to spot the Lakesong ourselves."
    
            *  [Julian agrees.]
                -> jul_agrees_leave
            
        = jul_agrees_leave
        -   "And if we sent off a flare, there's a better chance the girls could see it," says Julian picking up his pace.
        
                * [Paddle out of the cove.]
                    -> out_of_cove
                
== out_of_cove ==
    -   Troy was right about the fog. Shortly after clearing cove they break into much clearer conditions. There is still patchy fog in spots, but visibility is much better. 
    
        "I don't see anything," says Julian scanning the horizon.
            
            *   ["Let me get the binocs," says Troy.]
                -> get_binocs
            
        = get_binocs
        -   "I've got a pair in my dry bag..." he says, reaching for the bag and then getting a surprise. 
        
        -   "What's the matter?" asks Julian, "Did the monkeys get your bag, too?"
        
                * ["I'm taking on water!" says Troy.]
                
== taking_on_water ==
        -   "I'm taking on water!" says Troy.
        -   "So am I!" says Julian.
        
        -       * ["The monkeys!"]
            
        = monkeys_drain    
        -   "The monkeys must have taken the drain plugs!" says Troy. "We better hope we spot the Lakesong soon."
        
            "This water is freezing!" says Julian.
        
                * [They are in a predicamanent.]
                    -> in_predicament
                
== in_predicament ==
        -   As the kayaks become heavier from taking on water, the ride lower causing even more water to enter by way of the exposed drain holes. Soon the kayaks will sink.
        
            Troy needs to make a quick decision:
        
                * Send off the flares immediately.
                
                * Try to find something to plug the drain holes.
        
        
===  send_flares_now ===
    -   "We need to send off the flares now!" says Troy. "Before it's more difficult when we're in the water."
    
        "'When we're in the water'!" exclaims Julian, as Troy's red flare arcs into the sky. Regaining his composure, Julian sends off one of his flares as well.
        
            * ["Look!" says Troy.]
            
=== drifting_from_cove === 
    -   "Look how far back the cove is," says Troy. "We must be drifting in a current." 
    
        Julian doesn't answer as he's preoccupied with staying afloat.
        
        "Make sure your lanyard is attached to your paddle," says Troy, "it'll give us something to hang on to and keep us with the kayaks."
        
            * [Both kayaks capsize!]
            
=== capsized ===
    -   As their kayaks flip over, both Julian and Troy are plunged into the cold waters surrounding the island. Julian gasps from the shock of the cold shock and accidentally inhales water. Troy fights off his own panic by focusing on his breath and reaching for his kayak. Staying with the kayaks will make it easier for someone to find and rescue them. 
    
            * [Julian gags and coughs.]
            
        = jul_gags
        -   "Are you OK, Jules!?" asks Troy as Julian struggles to clear his lungs.
        -   "Yeah, I think so," says Julian, his words short and breathless. "I'll be OK... unless I freeze to death."
        
            * [Troy looks at his watch.]
            
        = tro_check_time
        -   Troy notes the time on his waterproof watch. Unfortunatley, Troy realizes that Julian's 'freezing to death' expression is not an exaggeration. Troy guesses the water temperature 
        
        
        
            
            -> DONE
        
        




