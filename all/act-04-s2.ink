=== follow_kayaks ===
    -   SYS_QUIZ_17
    -> follow_kayaks_2

=== follow_kayaks_2 ===
    -   SYS_SOUND_427   //cut engine sound
    -    The kayaks slide into the fog and quickly lose sight of the <i>Lakesong</i>. Julian is an experienced rower, and Troy has to work to keep pace. They reach the cove's shoreline and start to follow it, keeping an eye out for anything unusual.

        *  [The minutes pass... 15, 20, then 30 minutes...]
        // completing other water activities here for kayak path
        -- SYS_ACHIEVE_6_5
        After half an hour, they've searched roughly half of the cove, but haven't found anything at all.

            Julian stops paddling, then pivots his kayak about until he is facing back in the direction from which he came.

                ** ["You see something?" asks Troy.]
                    -> jul_stops_paddling

== jul_stops_paddling ==
    -   CHR_JUL_REL
    -   "Could be something, could be nothing," he says.

        - (opts)
        *    [Julian points with his paddle.]
            Troy looks where Julian is pointing. -> no_see

        *    (no_see) ["I don't see anything," says Troy.] {"All I see are those vines," he says.|  "What? The vines?" asks Troy.}
            --   SYS_SCENE_8_25

        *    {no_see} [Julian paddles toward the spot.] -> jul_paddles_vines

        -     -> opts

    = jul_paddles_vines
    -   CHR_JUL_REL
    - Julian paddles toward a section of the shoreline marked by a very dense growth of vines. He can't see where the vines begin in the tree canopy high overhead. They droop down into the water for thirty feet or more in a lush curtain of green.

        * [Troy paddles alongside Julian.]
            -> vines_section

    = vines_section
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   "I didn't realize it until we passed this section," Julian says, "But this is the only part of the cove we've seen that has these vines."

            * ["Hmmm, you're right," says Troy.]
                -> tro_impressed

    =   tro_impressed
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   "I hadn't noticed that," says Troy, surprised by Julian's focus.

        Julian paddles right up and then into the vines, the bow of his kayak slipping through the greenery.

            * [Julian reaches out...]
                -> it_is_netting


==  it_is_netting ==
    -   CHR_JUL_SML
    -   "It's netting!" says Julian, reaching out and grabbing hold of the vines. "With some real plant matter woven in for added realism."

        - (opts)
        *    ["Holy cow," Troy says.]
            --  CHR_TRO_REL
            "Somebody is going to a <i>lot</i> of trouble to hide something!" Troy paddles over to the netting to get a better look. -> camo

        *    (camo) [Troy scans the netting.] {"There must be an opening," he says. | "Just like with the drones disguised as creatures."}

        *    {camo} [Julian eases his kayak forward.] -> jul_eases_forward

        -     -> opts

    = jul_eases_forward
    -   CHR_JUL_SML
    -   "Disguised drones, camouflage..." says Julian. "Somebody thought of everything, but they didn't count on kayaks." Julian lifts the netting and paddles under it.

            * [Troy watches Julian disappear behind the camouflage.]
                -> vine_questions

== vine_questions ==
    -   CHR_TRO_SUR
    -   As Julian slips beneath the camouflage and out of view, Troy wonders what happened to the reluctant Julian from the day before. Maybe Julian just loves kayaking?

        - (opts)
        *    [Troy checks out the net.]
            -- CHR_TRO_REL
            Troy pauses to inspect the net up close. -> call

        *    (call) [Troy paddles forward.]{Troy grabs the netting and slowly inches forward to slip under.| He can't help but be impressed with the craftsmanship.}

        *    {call} ["Get a load of this," says Julian.] -> get_a_load

        -     -> opts

    = get_a_load
    -   SYS_SCENE_7
    -   SYS_ACHIEVE_7_3
    -   CHR_TRO_SUR
    -   Troy emerges from beneath the vine curtain and is surprised when he sees...

            * [A pair of eyes staring back at him.]
                // go to monkey tunnel
                ~ saw_monkey = 1
                -> monkey_eyes_him ->

                    **  [Troy and Julian look at the stream ahead of them.]
                        -> dark_stream

            * [ Julian looking up into a tree.]
                // julian says a 'creature' crashed drone, comment on how live creature wouldn't be intact
                -> julian_tree_looking

            * [A dark stream bending into the forest.]
                -> dark_stream
                // both above eventually get back to stream


=== julian_tree_looking ==
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   Troy follows Julian's eyes and discovers what caught his attention.
        "It's one of the creatures," says Julian. "But no worries. It's dead."

            *   ["That drone must have crashed," says Troy.]
                --   CHR_JUL_REL
                --   CHR_TRO_REL
                Troy catches Julian's skeptical face. "C'mon, Jules, this pretty much proves the drone theory."

                ** ["Really?" says Julian.]
                    -> no_props

        = no_props
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        "I don't see any propellers, do you?" says Julian.
        "Maybe they broke off when it crashed," says Troy. "When's the last time you saw a bird crash into a tree? If it were a dead animal, it would have decayed or been eaten."

            * ["Well, I'm just glad it's dead," says Julian.]
            Julian turns his attention to the stream.
                -> dark_stream

=== monkey_eyes_him ===
// this probably need to treated as a tunnel
    -   CHR_TRO_SUR
    -   CHR_JUL_SML
    -   SYS_SOUND_701
    -   "That's a monkey!" says Troy. A monkey perched on a fallen log is just staring right at him!
        "Correction. <i>Monkeys</i>," says Julian pointing, up into the trees. Several small, hairy bodies skitter through the high branches.

        - (opts)
        *    [The monkey shrieks.]
            The monkey shrieks and leaps to the next tree. -> ducks

        *    (ducks) [The monkey grabs something.]{Troy ducks and a large pinecone splashes into the water behind Troy after just missing his head.| Troy watches as the monkey scurries from one tree to the next along the bank.}
        -    SYS_SOUND_702

        *    {ducks} [Julian laughs.] -> any_weirder

        -     -> opts

    = any_weirder
    -   CHR_TRO_SUR
    -   CHR_JUL_REL
    -   "Can this get any weirder?" says Troy, shaking his head. "What are monkeys even doing on this island? We're south of the Atlas range, well out of their natural habitat."

        "Left over from the research, maybe?" says Julian.

        // return from where tunnel was called
        ->->




=== dark_stream ===
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   "This stream is wide enough for a boat," says Julian. "I think we found the answer to the vanishing act yesterday."
        "My thoughts exactly," says Troy. "I'm guessing this leads directly to the thieves' hideout."

            *   ["So do we follow it or not?" asks Julian.]
                -> follow_or_no

=== follow_or_no ===
~ on_kayaks_saw = STREAM
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   { "That's the question, isn't it?" says Troy thinking out loud.| Troy then considers the alternative.|}

    *    "If we follow the stream[..."], we could find the thieves' hideout, but we could be seen or caught," says Troy. "But the more we learn, the better chance we have of getting the reward!" -> follow_or_no

    *    "If we don't follow the stream[..."], we have enough clues to give to the police and <i>probably</i> get the reward," says Troy. "But there's well over an hour before the rendezvous, and killing time in the cove isn't very appealing." -> follow_or_no

    *    -> decision_stream

== decision_stream ==
    *  [Troy asks for Julian's opinion.]
        -> jul_opinion_stream

    *  [Troy decides without Julian's input.]
        -> final_decision_stream

== jul_opinion_stream ==
    -   CHR_JUL_REL
    -   "I won't lie. The idea of running into the thieves scares the crap out of me," says Julian. "But these kayaks are really quiet and stealthy... I bet we would hear the thieves long before they'd hear us."
        -> final_decision_stream



== final_decision_stream ==
    {
        - final_decision_stream: Troy agrees with both of Julian's points. But he considers the pros and cons, and decides to...

        - else: Troy doesn't ask for Julian's opinion, choosing to make the decision himself. Troy decides to...

    }

        * [ Turn back to the cove without following the stream.]
            --  CHR_TRO_REL
            "Considering what we already know, we now have enough to take to the police," says Troy. "There's no point in paddling down the stream. It's just too risky."

                ** ["That works for me," says Julian.]
                    -> no_go_stream

        * [ Follow the stream and try to learn more.]
        --  CHR_TRO_REL
            "I think the reward outweighs the risk," says Troy. "Let's at least paddle up to kill some time until we can rendezvous with the girls."


                ** [Off we go, then," says Julian.]
                    -> go_stream



=== no_go_stream ===
    -   CHR_JUL_REL
    -   Julian is relieved, but also a little disappointed. <>

        {
            - no_go_stream: He assumed Troy would want to go a little further upstream, for sure!

             * They paddle all the way back[.] to the camouflaged entry point to the stream <>

            - else: He assumed Troy would want to explore the stream, for sure!
            They paddle back under the camouflage <>

        }

    -   and take the kayaks to the other side of the cove, putting distance between themselves and the vine curtain in case the thieves enter or exit through it. The fog persists{turn_back_before_cave:, though it's more patchy than before} and they both hope Mia and Alexis will be on time.

        {

             - turn_back_before_cave:
                SYS_SCENE_8_28
                * [Wait for Mia and Alexis]
                    -> wait_for_mia_alexis

                // need to join the above to Mia and Alexis in <i>Lakesong</i> as they begin their return to the cove. will have the girls hear a boat just as they are about to toot the horn signal.

            - else:
                SYS_SCENE_8_28
                * [Follow Mia and Alexis in the boat.]
                -> leave_kayak_path_early

        }


=== go_stream ===
    -   CHR_JUL_REL
    -  Julian isn't surprised by Troy's decision. He knew Troy wouldn't be able to resist exploring the stream. Now, though, Julian is a little apprehensive. What if they run into the thieves?

            * [Paddle into the stream.]
                -> enter_stream

        = enter_stream
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   SYS_SOUND_703
        The two kayaks move effortlessly along the stream. They pass through several bends as the waterway winds into the island.

        "How deep do you suppose this is?" asks Julian in a hushed voice. He looks down into the dark water stretching from bank to bank, about four or five kayak lengths in width.

                * ["Deep," says Troy.]
                -> deep_enough


        = deep_enough
        -   CHR_TRO_REL
        -   CHR_JUL_REL
        -   "Deep enough for a large power boat," says Troy, "but not deep enough to handle the keel of a sailboat, is my guess."

        -   "Right! That would explain why no sailboats have been stolen," says Julian.

                * [Julian dips his hand into the stream.]
                    -> hand_dip_stream

        = hand_dip_stream
        -   CHR_JUL_REL
        -   "The stream is warmer than I expected," says Julian hanging his arm over the side of his kayak. "I thought the water around here was supposed to be cold?"

                * ["Interesting..." says Troy.]
                -- CHR_TRO_REL
                -- "That explains why the cove is especially foggy."
        
                    ** [They paddle on.]
                        -> explain_warm_stream
        
        
        = explain_warm_stream
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   They begin to sweat as they paddle deeper into the island. The fog has cleared—at least this far inland—and some warmth and sunlight filters through the canopy of trees.

                    ** [The forest is alive with sound.]
                        -> forest_alive_sound


        =   forest_alive_sound
        -   CHR_JUL_REL
        -   CHR_TRO_REL
            The sound of birds, insects, frogs, and various animals{monkey_eyes_him:, including the monkeys they saw earlier,} surrounds the kayakers, making their own paddling nearly silent.

            "Nobody is going to hear us, that's for sure," says Julian. "It's loud in here."

            {
                - monkey_eyes_him:
                "Those monkeys are especially loud," says Troy. "And it feels like they're following us."
                    * ["How far do you think it goes?"]
                        -> how_far_stream_goes

                - else:
                    * ["I swear I keep hearing monkeys," says Troy.]
                        -> swear_hear_monkey


            }

        = swear_hear_monkey
        -   CHR_TRO_SUR
        "But that's impossible," he says. "There are no wild monkeys south of the Atlas Mountains."

            * "Really?" says Julian.[] "Then how do you explain that?" says Julian pointing to the stream bank ahead.

                ** [Troy looks.]
                -> monkey_eyes_him ->

                 ***  [Troy and Julian look at stream ahead of them.]
                    -> how_far_stream_goes


== how_far_stream_goes ==
    -   SYS_SCENE_7_01
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   "How far do you think it goes?" wonders Julian.
        "I don't know," says Troy. "We'll need to turn back soon. Mia and Alexis will be looking for us at the rendezvous time."

            * [Julian looks upstream.]
                -> next_bend



        = next_bend
        -   CHR_JUL_REL
        -   CHR_TRO_REL
            "Want to see what's around that next big bend ahead?" suggests Julian. "If it turns out to be just more of the same, we'll head back."

                * ["OK. Sounds good," says Troy.]
                    -> around_next_bend

                * ["No, let's turn back," says Troy.]
                    -> turn_back_before_cave






        = around_next_bend
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   Julian leads the way with Troy close behind. The bend looks similar to the others they've paddled through, but they remain alert. /*and they approach it as they have others—hopeful and alert. When they began this trip up the stream, they were nervous, wondering if the thieves would be just around the corner. So far each bend has only revealed the same thing—more stream going on and on to the next turn.*/


            -   (opts)

                * [Julian keeps an eye on the stream ahead.]
                --   CHR_JUL_REL
                --   CHR_TRO_REL
                So far each successive bend in the stream had led to nothing of interest, just more and more stream. -> scans


                * (scans) [Troy scans the the banks on each side.] {Although they'd seen no sign of the thieves, they are both still on edge.| Still both Julian and Troy believed that the theives had to be somewhere out here.}

                * {scans} [They steer around the bend...]
                    -> steer_bend


            -   -> opts

        = steer_bend
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   They steer around the bend... and see more of the same. Just another length of stream leading to yet another bend like every other one they've paddled through.

            "Well, I guess that's it, then," sighs Troy. But suddenly—

                * [CLANG!]
                    -> clang_heard


  === turn_back_before_cave ===
    -   -> no_go_stream

 == clang_heard ==
    -   CHR_JUL_SUR
    -   CHR_TRO_SUR
    -   A loud CLANG ripples through the forest—and everything goes still.
    -   SYS_SOUND_704

        - (opts)
        *    [Julian looks at Troy wide-eyed.]
        --  CHR_JUL_SUR
        --  CHR_TRO_REL
            Troy puts his finger to his lips.  -> silent

        *    (silent) [Troy is statue-still.] {They both know the sound they heard wasn't from monkeys or birds.  While distant, the clang was unmistakably a clang of metal on metal, the sound of human activity.| Listening...}

        *    {silent} [Overhead, a buzzing...] -> overhead_buzzing

        -     -> opts

== overhead_buzzing ==
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   SYS_SOUND_705
    - Overhead they hear a buzzing eerily similar to what they heard yesterday, but the tree canopy is too thick for them to see if it's the disguised drones.

     Troy pulls alongside Julian and says, "I think we should go a little further."

        - (opts)
        *    [Julian looks overhead.]
            "I guess it all depends on how you define 'a little' further," he says.  -> slow

        *    (slow) [Julian looks up the stream ahead.] {"Remember, we still need to row back to the cove... and you are kind of slow, dude. I'm just saying." | "A clang like we heard can travel really far, so I doubt the thieves are too close. Still... it's risky."}

        *    {slow} [Troy paddles forward.] -> tro_so_slow

        -     -> opts


    = tro_so_slow
    -   CHR_TRO_SML
    -   "Since I'm so slow, I better get a head-start," says Troy, grinning.

        Julian pulls in behind Troy. They paddle forward down the middle of the stream and around the next bend, then around yet another. And then they hear...


                * [The sound of an engine.]
                    -> jul_bolts

    =   jul_bolts
    -   CHR_JUL_SUR
    -   SYS_SOUND_707
        Upon hearing the engine, Julian instinctively goes into fight or flight mode and rapidly pivots his kayak, the muscles on his neck tense.

            *   ["Wait!" says Troy in a whisper-yell.]
                -> think_generator

    =   think_generator
    -   CHR_TRO_REL
    -   "That's not a boat motor," he says. "I think it's a generator. And it's coming from over there." Troy points into the forest on the left bank.

            * [Troy spots a sandy area.] 
                -> sandy_area
            
    = sandy_area
    -   CHR_TRO_SUR
    -   CHR_JUL_SUR
    -   "C'mon, Jules, let's pull up on to that sand," says Troy pointing to a sandy area along the same bank.      
            
        - (opts3)
        
         *   ["Seriously?" says Julian.]
        Julian looks back along the stream. -> forward
        
        *   (forward) [Troy paddles forward.]{"I mean we're faster on water... what if..." But Troy paddles on, unfazed by Julian's reluctance.| Troy gives Julian a quick, determined nod, his eyes fixed ahead.}
        
        *   {forward} [Beach the kayaks.]
            -> beach_kayaks
    
        -   -> opts3


    = beach_kayaks
    -   SYS_SCENE_7_03
    -   SYS_SOUND_709
    -   CHR_JUL_REL
    -   They both paddle to the sandy area and climb out of their kayaks. As they approach, the monkeys begin vocalizing and stirring around noisily in the treetops.

            "I hope those monkeys don't give us away," says Julian.

                ** [Troy drags his kayak up into the forest.]
                    -> tro_drags_kayak

    = tro_drags_kayak
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   "That's not the thing they make me worried about," says Troy. "Quick, bring your kayak back here where they can't be seen from the water, and get the long tether leash out of your dry bag."

            * Troy fastens both kayaks[.] together with one leash, and uses the second tether to loop around the tree. The carabiners on each end of the tethers make Troy's work quick and easy.

                "There, that should do it!" he says, satisfied.

                    ** ["What's this for?" asks Julian.]
                        -> think_monkey_trouble

    =   think_monkey_trouble
    -   CHR_JUL_REL
    -   CHR_TRO_REL
        "Do you think the monkeys will mess with the kayaks?" says Julian.
        "Better safe than sorry," says Troy. "Monkeys tend to be mischievous creatures."

            * [Into the woods...] -> toward_sound

    =   toward_sound
    -   SYS_SCENE_5_05
    -   SYS_SOUND_505   //generator
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   Troy and Julian set off in the direction of the persistent engine sound Troy thinks is a generator.

        * [They pick their way carefully through the thick underbrush.]
        --   CHR_JUL_REL
        --   CHR_TRO_REL
        --   SYS_SOUND_506  //murmur and drill

        After several minutes, ahead they see the stream doubling back again. In addition to the engine sound, they can now hear the sound of power tools... and the occasional muffled voice.

                ** [Peer through the underbrush.]
                    -> thieves_hideaway

== thieves_hideaway ==
    -   SYS_SCENE_8_34  //load static cave with stream
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   {They reach the stream bank and peer out from underbrush, being careful to remain well-hidden. There is much to see.| Without a doubt, this is the hideaway, some 50 yards ahead of their hidden position.|}


         - (opts)
            *    [A cave!] The stream fronts a large sandstone bluff rising straight up several stories high. There's a large cave in the cliff face, as well as several smaller ones, each with a waterway connecting cave and stream.
            *    [The stolen boat!]
                The boat they saw vanish yesterday sits atop several hull supports in a makeshift dry-dock inside the largest of several caves.
            *    [Two thieves at work!]
                Two figures are hard at work on the stolen boat hidden in the largest cave. One works on the far side, with only their legs visible under the raised hull. A man on the near side works with his back to Julian and Troy.
            // We require the player to ask at least one question
            *    {loop} [Seen enough.]
                -> done
        - (loop)
            // loop a few times before the guard gets bored
            { -> opts | -> opts | }
            Julian gets Troy's attention, then taps at his wrist to indicate 'time.'
        - (done)
        -   CHR_JUL_REL
        -   CHR_TRO_SUR

            "It's a boat chop shop!" whispers Troy.
            * [Mystery solved," says Julian.]
            -> jul_solved_go

== jul_solved_go
    -   CHR_JUL_SML
    -   "Mystery solved," says Julian, "Now let's get the heck out of here!"

         - (opts)
        *    [Julian begins inching back.]
            -- CHR_JUL_REL
            Julian begins inching away from the hideaway along the bank, but Troy stops him.  -> stay

        *    (stay) [Troy shakes his head.] {"I want to wait and try to see a face," says Troy. |"Just a few seconds more." }

        *    {stay} [The monkeys shriek!] -> monkeys_shriek

        -     -> opts

        = monkeys_shriek
        -   CHR_JUL_SUR
        -   CHR_TRO_SUR
        -   SYS_SOUND_828 //monkey shriek
        -   Suddenly several monkeys begin shrieking somewhere behind Troy and Julian's hiding spot. The thief turns and looks their way.

                * [They recognize the face immediately.]
                    -> it_is_willard

        = it_is_willard
        ~ on_kayaks_saw = WILLARD
        -   CHR_WLD_REL
        -   SYS_SOUND_829 //bring in power boat sound low volume
            "Mr. Willard!" they say in unison.

            Then they realize what caused the monkeys to stir. They hear the sound of a power boat in the near distance. They see it begin to come around the bend toward the cave.

                * [They both lay flat.]
                    -> both_lay_flat

        = both_lay_flat
        -   CHR_JUL_SUR
        -   CHR_TRO_SUR
        -   SYS_SOUND_830 //increase power boat volume
        -   Laying flat on the ground to present the absolute lowest profile, both Julian and Troy break into a cold sweat. They hope whoever is in the boat won't see them when it passes their position.

                * [The boat approaches...]
                    -> boat_approaches

        = boat_approaches
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   SYS_SOUND_831 //fade out the the power boat sound
        -   As they lay hidden, the boat approaches... and passes them. Looking out from their hiding spot, neither is able to get a look at the boat's driver before it disappears into one of the smaller caves.

                * [Mr. Willard follows it.]
                    -> willard_approach_cave

==  willard_approach_cave ==
        -   CHR_WLD_CUR
        -   Mr. Willard stops at the entrance of the cave and speaks to whoever is inside, but the thieves are too far to be heard. Julian and Troy can only observe.

                 - (opts)
                    *    [Mr. Willard crosses his arms.]
                    --  CHR_WLD_ANG
                         Mr. Willard crosses, then uncrosses his arms before throwing both of them into the air.  -> looks

                    *    (looks) [Mr. Willard turns and looks in their direction.] {Mr. Willard turns and looks in their direction. Julian and Troy freeze, and wonder if they were they spotted.| Something seems to have upset him.}

                    *    {looks} [Return to the kayaks.] -> return_to_kayaks

            -     -> opts

        = return_to_kayaks
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   SYS_SCENE_7_05
        -   Julian and Troy inch backward, quietly and carefully vacating their hiding place, and trek back to where they left the kayaks.

                * ["What the...?" gasps Julian.]
                    -> kayaks_strewn

== kayaks_strewn ==
        -   CHR_JUL_SUR
        -   CHR_TRO_SUR
        -   The kayaks are not as they left them! No longer hidden side by side behind the tree, both are flipped over and cast about haphazardly.

            - (opts)
                * [Julian steps on a dry bag.]
                Julian picks up the dry bag and sees it was emptied. He scans the forest floor, hoping to salvage something. -> rope

                * (rope) [Troy reaches for the rope.] {After reaching for the rope, Troy quickly unties the kayaks.| Julian finds a small piece of discarded wrapper from the granola bar.}

                * {rope} ["The monkeys!" says Troy.]
                    ->the_monkeys

            -   -> opts

        = the_monkeys
        -   CHR_JUL_SAD
        -   CHR_TRO_REL
        -   "Yeah," says Julian. "They got my dry bag. Everything's gone."

            "You've still got your signals, though, right?" asks Troy.

                * [Julian pats his PFD pockets.]
                    -> signals_yes

        = signals_yes
        -   CHR_JUL_REL
        -   "Yeah, I've got 'em," says Julian. "Do you think the thief that passed in the boat noticed the kayaks?"

        "I don't think so," says Troy. "But let's get the heck out of here before we <i>do</i> get noticed!"

                    * [Paddle back to the cove.]
                        -> paddle_back_cove

=== paddle_back_cove ===
    -   SYS_SCENE_7_04
    -   SYS_SOUND_712
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   Julian and Troy paddle straight back to the vine curtain hiding the stream. They quickly pass under it to find that there is still a lot of patchy fog in the cove, just like the day before.


        -   (opts)

            * [Troy looks at his watch.]
            "We're about 20 minutes late," says Troy.-> move


            *  (move)  [Move away from the vine curtain.]
                --  SYS_SCENE_8_28
                --  {They paddle away from the entrance to the stream and stay close to the cove's shoreline to eliminate any chance of colliding with a boat in the fog.|"I think we missed them."}

            *   {move} [Julian sighs.] -> sigh

        -   -> opts

        = sigh
        -   CHR_JUL_SAD
        - "Maybe the <i>Lakesong</i> is out there and we just can't see it in the fog?" asks Julian.

            * ["At 20 minutes late?" says Troy.]
                -> doubtful_in_cove



== doubtful_in_cove ==
    //-   SYS_SCENE_4_17
    -   CHR_TRO_REL
    -   "Doubtful," says Troy. "If we missed the rendezvous, the plan was for Mia and Alexis to leave and return again later. If I know Alexis, she's sticking to the plan."

        - (opts)
            * [Julian pulls out the whistle.]
                Julian looks at Troy with the whistle at the ready. "Considering the fog," says Troy, "a whistle, not a flare, has the best chance of getting someone's attention. But whose—the good guys, or the bad guys?"

                ** [Blow the whistle.]
                    -> blow_whistle

                ** [Don't blow the whistle.]
                    -> no_blow_whistle


== blow_whistle ==
    -   CHR_JUL_REL
    -   Julian gives the whistle a good blast, and all 120 decibels of sound spread out, broadcasting their location.

        *   [They wait and listen...]
            -> hoping_hear

        = hoping_hear
        They listen hoping for a response from the <i>Lakesong's</i> horn to indicate that Mia and Alexis are nearby, but they hear nothing except the natural sounds of the cove.

             -   (opts)

                * [Julian wants to signal again.]
                    Julian holds the whistle ready to give it another blow, but Troy shakes him off.  -> paddle

                * (paddle) [Troy begins paddling.] {"Let's hold on another whistle blow for now," says Troy. He begins paddling.|"I think our best option is to leave the cove."}

                * {paddle} [Julian paddles alongside Troy.] -> best_option_leave_cove


            -   -> opts

== no_blow_whistle ==
    -   CHR_TRO_REL
    -   "Let's wait on the whistle, for now," says Troy. "I don't want to risk the thieves hearing it. I think our best option is to get out of the cove."

            * [Troy begins paddling.]
            -> best_option_leave_cove


== best_option_leave_cove ==
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   "But the plan was to meet in the cove," says Julian. "So why are we leaving?"
    -   "If today is like what we saw yesterday, then the cove is where the fog lingers, making it one of the last places to clear," says Troy. "If it's clear beyond the cove, we may be able to spot the <i>Lakesong</i> ourselves."

            *  [Julian agrees.]
                -> jul_agrees_leave

        = jul_agrees_leave
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   "And if we sent off a flare," says Julian, "there's a better chance the girls could see it out in the clear."
            "Exactly," says Troy. "Plus, we put some distance between us and the entrance to the hidden stream."

                * [Paddle out of the cove.]
                    -> out_of_cove

== out_of_cove ==
    -   SYS_SCENE_4_30
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   Troy was right about the fog. Shortly after leaving the cove, they break into clearer conditions. There is still patchy fog in spots, but visibility is much improved.

        "I don't see anything," says Julian scanning the horizon.

            *   ["Let me get the binocs," says Troy.]
                -> get_binocs

        = get_binocs
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   "I've got a pair in my dry bag..." he says, reaching for where he left it.

            - (opts)

                * [Troy feels around.]
                --  CHR_TRO_SUR
                    Troy feels around inside his kayak's hull and gets a surprise. -> water

                * (water) [Troy looks troubled.] {"That's weird... " he says.| "The bag is soaked."}


                * {water} ["What?" says Julian.] -> inside

            - -> opts

        = inside
        -   CHR_TRO_SAD
        -   Troy looks inside his kayak and his face drops.

                * ["I'm taking on water!" says Troy.]
                    -> taking_on_water

== taking_on_water ==
        -   CHR_TRO_SAD
        -   CHR_JUL_SAD
        -   "I'm taking on water!" says Troy.
        -   "So am I!" says Julian looking at his own kayak in disbelief. "What's going on?"

              * ["The monkeys!"]
                -> monkeys_drain

        = monkeys_drain
        -   CHR_TRO_SUR
        -   CHR_JUL_SAD
        -   "The monkeys must have taken the drain plugs!" says Troy. "Now we really need to hope we spot the <i>Lakesong</i> soon."

            "This water is freezing!" says Julian.

                * [The two kayakers are in a predicament.]
                    -> in_predicament

== in_predicament ==
        -   As the kayaks become heavier from taking on water, they ride lower, causing even more water to enter through the exposed drain holes. Soon, the kayaks will sink!

            Troy needs to make a quick decision:

                * [Send off the flares immediately.]
                    -> send_flares_now


                * [Try to plug the drain holes.]
                    -> try_plug


===  send_flares_now ===
// sending flares now leads to less severe hypothermia condition later
~ flare_early = 1
    -   CHR_TRO_REL
    -   CHR_JUL_SUR
    -   "We need to send off the flares now!" says Troy. "Before it's more difficult when we're in the water."

        <i>"When we're in the water?"</i> exclaims Julian, as Troy's red flare arcs high into the sky before descending back into the lake. Regaining his composure, Julian sends off one of his flares as well.

            * ["Look!" says Troy.]
                -> drifting_from_cove


=== try_plug ===
// waiting to signal leads to greater chance of severe hypothermia
~ flare_early = 0
    -   CHR_TRO_REL
    -   "Maybe we can find something to plug the hole?" says Troy.
    -   "OK," says Julian. "My empty dry bag might work." He grabs his dry bag.

        - (opts)

            *   [Julian makes a face.]
                -- CHR_JUL_SAD
                Julian frowns as it the realization hits home. "I can't reach the hole," he says. ->reach
                 //Julian reaches his arm out stretching toward the seven o'clock position...

            *   (reach)  [Julian rolls the bag.]{Julian rolls the bag into a tight cylinder and then reaches his arm out, stretching toward the seven o'clock position. But his arm isn't long enough.|"The bag might work, but I'd need to get out of the kayak to jam it in."}

            *   {reach} ["I've got more bad news," says Troy.] -> drifting_from_cove

        - -> opts



=== drifting_from_cove ===
    -   CHR_TRO_REL
    -   "Look how far back the cove is," says Troy. "We must be drifting in a current."

        Julian doesn't answer. He's become preoccupied with staying afloat.

            *  ["Check your lanyard," says Troy.]
                -> check_lanyard

        = check_lanyard
        -   CHR_TRO_REL
        -   "Make sure the tether is attached to your paddle," says Troy, "it'll give us something to hang on to and keep us with the kayaks if we dump."

            Julian double-checks his leash just before...

            * [Both kayaks capsize!]
                -> capsized

=== capsized ===
    -   As their kayaks flip over, both Julian and Troy plunge into the cold water. Julian gasps from the shock and accidentally inhales water.

    Troy fights off his own panic and reaches for his kayak. Staying with the kayaks will make it easier for someone to find and rescue them.

            * [Julian gags and coughs.]
                -> jul_gags

        = jul_gags
        -   CHR_TRO_SAD
        -   CHR_JUL_SAD
        -   "Are you OK, Jules!?" asks Troy.
        -   "Yeah, I think so," says Julian, his words short and breathless. "I'll be OK... unless I freeze to death."

            * [Troy looks at his watch.]
                -> tro_check_time

        = tro_check_time
        -   CHR_TRO_SAD
        -   Troy notes the time on his waterproof watch. Unfortunately, Troy realizes that Julian's 'freezing to death' expression is not an exaggeration. Troy guesses the water temperature is around fifty degrees—give or take—which doesn't give them much time before bad things start to happen.


            * [Review the stages of cold water immersion.]
                -- SYS_PDF_33
                    -> awaiting_rescue

            * [Skip the review and continue.]
                -> awaiting_rescue


=== awaiting_rescue ===
    -   CHR_TRO_SAD
    -   After just a few minutes, Troy is already sensing a loss of dexterity as he prepares to send off a{send_flares_now:nother} flare. Removing the flare from his PFD pocket is difficult, and launching it even more so.

    * [Troy launches the flare.]
        -> second_flare


    = second_flare
    -   CHR_TRO_SAD
    Troy is disappointed that the flare didn't go as high as he wanted. His loss of manual dexterity affected his aim. He's not sure it went high enough for anyone to see. <>

        {

            - send_flares_now: Troy is glad he and Julian launched the first set of flares before they capsized.

            - try_plug: Troy realizes in hindsight that he and Julian should have sent off flares earlier instead of wasting time trying to plug the holes.

        }

        * [They continue to drift.]
            -> tro_remains_hopeful

    = tro_remains_hopeful
    -   CHR_TRO_SAD
    -   CHR_JUL_SAD
    -    Troy glances at the shoreline. He's alarmed at how far from the cove they've drifted. Will Mia and Alexis find them this far away?

        "How long... do you... think until... we're... rescued?" asks Julian, having trouble catching his breath.

        * ["Not long."]
            -> not_long_until

    = not_long_until
    -   CHR_TOR_REL
    -   CHR_JUL_SAD
    -   "Not long," says Troy, trying to lift Julian's spirits. Troy knows Julian's difficulty speaking is due to fatigue and shock.


        -   (opts)

            *   ["Hope s-soon... 'cause..."]
            -- CHR_JUL_SAD
            "Hope s-soon... 'cause..." says Julian breathlessly.-> clings

            *   (clings) [Julian clings to his oar.] {Julian clings to the paddle attached by leash to his kayak. "...it's getting... difficult... to hang on," he says.|"... I...I c-c-can't... hold..."}

            *   {clings} [Julian loses his grip.]
                -> loses_kayak

        -   -> opts

== loses_kayak ==
    -   CHR_TRO_ANG
    -   Julian loses his grip, and his paddle and kayak begin drifting away.

        -   (opts)

            *   [Troy's right hand grips his own leash.]
                -- CHR_TRO_SAD
                Troy keeps a tight grip on his own leash with his right hand. -> reaches

            *   (reaches) [Troy reaches out.] {With his left hand, Troy reaches and grabs Julian by his PFD, pulling him close.| He didn't attach it to his paddle because he planned to attach it to his PFD.}

            *   {reaches} [Troy wants to attach the leash.]
                -> lanyard_attach

        -   -> opts



== lanyard_attach ==
    -   Troy knows he should attach the tether leash to his PFD. Staying with the remaining kayak helps their chances of being seen and will help them get more of their bodies out of the water—if they can somehow gather the strength to lift themselves on top of the remaining overturned kayak.

        -   (opts)

            *   [Troy considers letting go of Julian.]
            --  CHR_TRO_SAD
            Troy considers letting go of Julian—just for a second—so that he can try two hands with the leash. But he can't risk losing Julian, whose condition is even worse. -> struggle

            *   (struggle) [Troy struggles with the leash.] {Troy struggles to attach the leash with one hand. He's lost up to 80% of his dexterity and strength since hitting the water.| He'll just need to find a way to do it Troy tells himself.}


            *   {struggle} [Troy's chances are modest.]
                -> lanyard_struggle

        -   -> opts


    = lanyard_struggle
    -   CHR_TRO_SAD
    -   Troy's chances to attach the tether leash to his PFD are modest at best. In his present condition—with his considerable loss of dexterity and strength—he only has a fifty-fifty chance of success—no different than the flip of a coin.

            *   [Reveal Troy's fate.]
                -> tro_fate

    = tro_fate

        { shuffle:

            - -> keep_remaining_kayak

            - -> lose_remaining_kayak


        }


=== lose_remaining_kayak ===
~  kayak_status = 0
    -   CHR_TRO_SAD
    -   Troy is unable to attach the leash to his PFD and in his final effort he loses hold of the leash and the kayak is lost.

            * [Focus on survival.]
            -> focus_survival



=== keep_remaining_kayak ===
~ kayak_status = 1
    -   CHR_TRO_SML
    -   Troy is able to attach the leash!

        Now Troy can turn his attention to the most important thing:

        * [Slowing their heat loss.]
        -> focus_survival




== focus_survival ==
    -   Troy realizes their primary focus now is on survival—and their survival hinges on slowing their heat loss.


        {
            - keep_remaining_kayak:
            With a free hand to work with, Troy helps lift Julian up onto the overturned kayak, getting at least some of Julian's body out of the water. Troy does the same, willing himself onto the overturned kayak with the last of his strength.
        }

         *   [Troy pulls Julian closer to him.]
                -> huddle_together


        = huddle_together
        -   CHR_TRO_SAD
        -   CHR_JUL_SAD
        -   "Huddling... conserve... heat," says Troy, who is also finding it difficult to speak. Julian's eyes are open but he says nothing, his arms falling loosely like a doll's <>

            {
             - keep_remaining_kayak: over the kayak.

             - lose_remaining_kayak: over Troy's shoulders.

            }

                * ["H-h-hang... in there... Jules."]
                -- "H-h-hang... in there... Jules," Troys says, realizing that Julian could lose consciousness soon. <>

            {
             - keep_remaining_kayak: Having the kayak helps, <>

             - lose_remaining_kayak: Huddling will help, <>

            }

            but the survival clock is ticking. They need to be rescued soon. As Troy struggles to stay awake, he thinks...

                ** [Mia and Alexis are out there, somewhere...]
                // this will link up with Mia and Alexis searching for them after not finding them at first rendezvous hour.
                    -> join_mia_alx_second_attempt
