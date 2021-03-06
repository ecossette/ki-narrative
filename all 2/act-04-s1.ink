/*------------------------

ACT 04
SCENE 01

*/

=== day_two_begins ===
    -   SYS_SCENE_1
    -   SYS_CHAP_15
    -   CHR_TRO_REL

    {

        - lightning_strike_occurs:
        Troy arrives at the dock the early the following morning and begins to swap the damaged radio with a new one.
        - else:
        Troy arrives at the dock early the following morning and begins to prepare the boat for another day on the lake—a day that will include a return to Kalkomey Isle.


    }

        * [Suddenly, there is a commotion!]
            -> commotion

    = commotion
    - CHR_TRO_SUR
    "Fire!" he hears someone shout. "There's a fire at the storage shed!"

    Troy sees that a small fire has broken out next to one of the storage sheds on the marina! Since he is closest to the fire, he grabs one of the fire extinguishers from the boat and rushes to the shed.

        * [Put out the fire.]
            - SYS_MINIGAME_30
                **[OK.]
                    -> fire_contained

== fire_contained ==
// need add to emergency procedures achievement here
    -   CHR_TRO_REL
    -   By the time the fire is extinguished, the fire department has arrived. They thank Troy for his quick action and begin investigating the cause of the fire. Troy returns to the <i>Lakesong</i>.



      * ["Ahoy, Troy!"]
        -> ahoy_troy

    = ahoy_troy
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   Troy smiles as Mia, Alexis, and Julian arrive at the <i>Lakesong</i>.
            -> kayaks_racked

    == kayaks_racked ==
    Alexis notices that two kayaks are now in the <i>Lakesong's</i> racks instead of the paddleboards.
     - (opts)
                *    ["So 'Operation Kayak' is a go?" says Alexis.]
                    -- CHR_TRO_REL
                     "Yes, we just need do our pre-departure check and fuel up. Then our plan is in motion," he says. -> smaller

                *    (smaller) ["They're smaller than I'd expected," says Mia.] {Troy looks at the kayaks and a sly grin appears on his face. "The kayaks are small, maneuverable, and quiet. Exactly what we need."|"The kayaks are going to be perfect for investigating that cove."}

                { - lightning_strike_occurs:

                    *    {smaller}  ["Any luck with the radio?" asks Julian.]
                            -> radio_fix_complete
                - else:

                    *   {smaller} ["Are we ready to cast off?" asks Julian.]
                            -> ready_cast_off

                }

        -     -> opts

        = radio_fix_complete
        -   CHR_TRO_REL
        -   "I think so," says Troy, flipping the radio on. "It turns on, but I'm going to need to test voltage, reception, and transmission. And we still need to run through the pre-departure checklist."

            -> same_checks

        = ready_cast_off
        -   CHR_TRO_REL
        -   "Not quite," says Troy. "Remember, we always need to run through the pre-departure checklist before casting off. I've started it, but we need to finish."
            -> same_checks


== same_checks ==
    -   CHR_TRO_REL
     - (opts)
                *    [Troy points to Mia and Julian.]
                    -- CHR_TRO_REL
                     "Can you two do the same checks you did yesterday?" he asks. They both nod. -> bfa

                *    (bfa) ["I've already checked the lights," says Troy.] {Troy calls to Alexis. "Since I've already checked the lights, can you check the backfire flame arrestor instead?"|"I'm going to double-check our kayak supplies, too."}

                *    {bfa} [They begin their respective checks.] -> backfire_review

        -     -> opts



        = backfire_review
        - SYS_PDF_30
        -> check_conditions_day_2


== check_conditions_day_2 ==

    -   With the pre-departure checklist complete, the four friends don their life vests and prepare to cast off.

     * [Check the conditions.]
        -> co_wind_direction_3

=== co_wind_direction_3 ===
    -   The friends check the wind and current and find the following conditions.

        * {co_wind_none} [There is <b>no</b> wind or current.]
            -> no_wind_co3
        * {co_wind_toward} [The wind and current direction is <b>toward</b> the dock.]
            -> wind_toward_dock_co3
        * {co_wind_away} [The wind and current direction is <b>away</b> from the dock.]
            -> wind_away_dock_co3

== no_wind_co3 ==
    ~ co_wind_none = false
    -   SYS_MINIGAME_1_31
        * [OK]
            -> toward_fuel

== wind_toward_dock_co3 ==
    ~ co_wind_toward = false
    -   SYS_MINIGAME_2_31
        * [OK]
            -> toward_fuel

== wind_away_dock_co3 == 
    ~ co_wind_away = false
    -   SYS_MINIGAME_3_31
        * [OK]
            -> toward_fuel

== toward_fuel ==
    //-   SYS_SCENE_4
    -   SYS_SCENE_8_12
    //-   SYS_SCENE_8_13
    -   CHR_TRO_REL
    -   Troy eases the <i>Lakesong</i> clear of the dock and makes way at <i>slow, no wake speed.</i>

        They pass a boat ramp busy with morning activity.

     - (opts)
                *    ["Have you ever launched a boat from a trailer?" asks Julian.]
                    -- CHR_TRO_REL
                     "Oh yeah, lots of times," says Troy. -> bfa

                *    (bfa) ["Is it easier launching or retrieving?" asks Mia. ] { "Like anything, the more you do it, the easier it gets."|"It takes a little practice to get the hang of it."}

                *    {bfa} [Mia watches as a trailer backs into the water.] -> launch_retrieve_review

        -     -> opts


== launch_retrieve_review ==
    *   [Review launching and retrieving a vessel.]
        -- SYS_PDF_31
            ** [OK.]
                -> trailer_activity

    *   [Skip the review and go directly to the activity.]
        -> trailer_activity

== trailer_activity ==
    - SYS_MINIGAME_32
        -> proceed_to_fueling

== proceed_to_fueling ==
    -   SYS_SOUND_827
    -   CHR_TRO_REL
    -   Troy pilots the <i>Lakesong</i> toward the marina's fuel station. As the friends discovered during the pre-departure check, the boat needs to be topped off with fuel before heading out for the day.

            * [The fuel depot.]
                -> fueling_depot

== fueling_depot ==
    -  SYS_SOUND_827
    -  SYS_ACHIEVE_2_4
    -  The <i>Lakesong</i> arrives at the fuel dock and Troy prepares to dock alongside one of the empty pumps.

        * [Dock to at the fuel station.]
            -> next_pump

== next_pump ==
    -   The friends tie up the boat and step onto the dock. At the next pump, they see Cletus filling several large fuel containers on the deck of a boat.

     - (opts)
                *    [ Cletus checks out the <i>Lakesong</i>.]
                    -- CHR_CLT_REL
                     Cletus gives their boat a long stare, from bow to stern and back again.  -> stare

                *    (stare) [Cletus greets them.] {"Didn't get enough yesterday, eh?" he says.|"Those are some nice-looking kayaks you've got there," he says. "Going to do some exploring?"}

                *    {stare} [Troy shrugs.] -> fueling

        -     -> opts

        = fueling
        -   CHR_CLT_REL
        -   CHR_TRO_REL

        - "The only thing better than a day on the lake is another day on the lake," says Troy. "Power, sail, or paddle... it's all good."

            "That so?" says Cletus. "Must be nice to have all day to play." Cletus turns his back and continues to fill the canisters.

        * [Fuel the boat.]
            - SYS_MINIGAME_34
                -> after_fueling

== after_fueling ==
    -   CHR_TRO_REL
    -   After fueling, Troy steers the <i>Lakesong</i> into the channel and heads for open waters. Along the way, they encounter several other boats entering and leaving the channel—including Mac in his small boat and Maura and Ian in one of their speedboats. Everyone is wearing PFDs and practicing good seamanship.

        * [They wave as they pass.]
            -> dog_in_boat

== dog_in_boat ==
    -   CHR_MIA_SML
    -   They pass a small, flat-bottomed boat off their starboard side. "Look, there are two dogs in that boat," says Mia. "And one's a puppy!'

     - (opts)
                *    [ "Those are retrievers," says Troy. ]
                    -- CHR_TRO_REL
                     "That's a duck-hunting boat, and the puppy is learning how to behave on the water," he says.  -> dog

                *    (dog) [Troy gives the horn two quick toots.]
                    -- SYS_SOUND_444
                    {Troy's passing signal startles the puppy. "The dogs need to get accustomed to being in a boat the same as you or me."|"Anglers and hunters are boaters, too, as are their four-legged passengers."}

                *    {dog} [They exchange "Ahoys" and waves.] -> pass_duck_boat

        -     -> opts

== pass_duck_boat ==
    -   CHR_TRO_REL
    -   Troy slows down a bit as he passes the smaller boat, in order to create as little wake as possible. Flat-bottomed vessels are especially vulnerable to capsizing or swamping.

            * [Review the material on <i>Hunting and Fishing from a Boat</i>.]
                -- SYS_PDF_32
                   -> arrive_ki

            * [Continue on without reviewing.] -> arrive_ki

=== arrive_ki ===
// add to other water activities badge here
    -   SYS_SCENE_4_16
    -   The journey north toward Kalkomey Isle is a long one, but all four agree that the time is passing more quickly than expected. The warm and sunny weather helps too at least until...

            * [They hit the fog.] -> infamous_fog

== infamous_fog ==
    -   SYS_ACHIEVE_6_4
    -   Just as the four friends discovered the day before, the stories of thick fog in this part of the lake are true enough.

        - (opts)
                *    [ Troy turns on the lights and slows the boat.]
                    -- CHR_TRO_REL
                     The fully illuminated <i>Lakesong</i> slows. "Let's keep a sharp lookout in this fog," Troy says.  -> lookout

                *    (lookout) ["The cove should be straight ahead," says Troy.] {"I spent some time studying the charts last night, and the sandbars are all to the west, near the beach, but still..."|"We know there's more than sandbars out here."}

                *    {lookout} [They continue into the fog.] -> fog_talk

        -     -> opts

 === fog_talk ===
    -   CHR_TRO_REL
    -   SYS_SOUND_440
    -   Troy gives the first prolonged blast from the horn, as the <i>Lakesong</i> continues straight ahead into the fog. A few times, the boat shudders briefly as it meets some cross currents.

    -   "I think that cross current is where the cold water is flowing in," says Troy.

        * ["How cold is it?" asks Mia.]
            -> how_cold

            = how_cold
            -   CHR_TRO_REL
            -   CHR_MIA_REL
            -   "I dunno," says Troy. "Maybe fifty degrees? I sure wouldn't want to find out first-hand."

                * [Review <i>Cold Water Immersion and Hypothermia</i>.]
                // launch the sg for cold water immersion and hypo
                    -- SYS_PDF_33
                    -> another_prolonged



            = another_prolonged
            //  add to emergency prep badge

            -   Troy gives another prolonged blast on the horn.
            -   SYS_SCENE_8_14

            - (opts)
                    *    [ Four pairs of eyes scan the area ahead.]
                        -- CHR_TRO_REL
                         Troy has the throttle just a bit over idle, keeping their speed to a minimum in the reduced visibility. All the boat's navigation lights are on.  -> birds

                    *    (birds) ["The fog isn't as bad as yesterday," says Alexis.] {"Looks like we've got about 100 yards of visibility, give or take," says Troy. "Enough for us to launch without being seen."|"The fog should burn off later," he says, "making it easier to find each other."}

                    *    {birds} [The sound of birds...] -> bird_sounds
            -     -> opts

== bird_sounds ==
    -   SYS_SCENE_4_10
    -   SYS_SOUND_445
    -   CHR_TRO_SML
    -   The sound of birds signal their arrival at the island.
        "There's the cove!" says Troy. "That's where we'll launch the kayaks." Troy gives another prolonged blast from the horn, keeping to the rule of signaling once every two minutes during reduced visibility.

            * [ Review the plan.]
                -> review_plan

== review_plan ==
    -   SYS_CHAP_16
    -   SYS_SCENE_8_15
    -   CHR_TRO_REL
    -   "Let's go over the plan one more time," says Troy.

        - (opts)
            *    [The kayaks.]
                -- CHR_TRO_REL
                -- CHR_ALX_REL
                "Troy and Julian will head out in the kayaks to investigate the cove," says Alexis. "You'll spend up to two hours looking for clues about what happened to the boat we saw disappear yesterday."
            *    [The <i>Lakesong</i>.]
                --  CHR_TRO_REL
                --  CHR_JUL_REL
                "Mia and Alexis will stay with the <i>Lakesong</i>," says Julian. "They'll wait away from the island for the fog to clear—if it clears—and return for us in two hours, unless we signal for pickup sooner."
            *    [The rendezvous.]
                --  CHR_TRO_REL
                --  CHR_MIA_REL
                "We'll return to the cove in two hours—or sooner, if we see a signal—to meet Troy and Julian and recover the kayaks," says Mia.
            // We require the player to ask at least one question
            *    {loop} [Got it!]
                -> done
        - (loop)
            // loop a few times
            { -> opts | -> opts | }
            Troy nods and looks at his watch.
        - (done)
        -  CHR_TRO_REL
        -  CHR_JUL_REL
            "Good, we are all clear on the plan, so let's get started," he says reaching for two dry float bags and tossing one to Julian. "I've prepared a few supplies for the two of us to take on the kayaks."

                * [Julian opens his bag to see what's inside.]
                    -> jul_opens

                * [Julian catches the bag but doesn't look inside.]
                    -> before_set_off


        = jul_opens
        -   CHR_JUL_REL
        -   Inside the dry float bag Troy prepared, Julian finds the following items: a waterproof flashlight, waterproof red signal flares, a signal mirror, a whistle, a rope, a knife, a bottle of water, a granola bar, and a two tether leashes, one short and one long.

                * ["Before we set off..."]
                    -> before_set_off

        = jul_no_opens
        -   CHR_JUL_REL
        -   Julian hefts the bag, but doesn't open it. "That's a lot of stuff," he says.

                * [Troy nods.]
                    -> before_set_off


        = before_set_off
        -   CHR_TRO_REL
        -   CHR_JUL_REL
        "Before we set off, take all the signal devices—the flares, mirror, and whistle—out of your bag and put them in your PFD pockets, says Troy.

            * ["And you've got the walkie-talkie?" asks Julian.]
                -> no_two_way

== no_two_way ==
// add to emergency prep
    -   SYS_ACHIEVE_5_5
    -   CHR_TRO_REL
    -   "Unfortunately, no," says Troy. "I couldn't get my old two-way radio set to work. I stopped by Willard's store this morning to get a new one, but he said they were sold out."

        At this news, Alexis frowns. She and Mia give Troy looks of concern.



         - (opts)
                *    ["The walkie-talkies were part of the plan," says Alexis.]
                    -- CHR_TRO_REL
                    --  CHR_ALX_SAD
                     Troy anticipated their concerns—a two-way radio was part of the original plan. But he is prepared to smooth the situation over. -> signals

                *    (signals) [Julian begins stashing signals into his life vest's pockets.] {"Don't worry. We have the other signals," says Troy, nodding toward Julian, who is looking for a good spot to clip the safety whistle. "Even if we can't find each other right away, locating us—even in fog—shouldn't be a problem."| "Plus the fog is going to clear," he says. "I'm sure of it." }

                *    {signals} ["I hope the fog doesn't clear," says Julian.] -> hope_for_fog
        -     -> opts

        = hope_for_fog
        -   CHR_JUL_REL
        -   CHR_ALX_REL
        -   "The fog is our cover," he says. "It'll hide us from people—and creatures." Julian scans the foggy sky overhead nervously.

        -   "Based on the photo Mia enlarged," says Alexis, "I'm convinced that they really are just drones."

            * [ "Creatures, drones, thieves... same diff," says Julian.]
                -> all_reason_for_cover

== all_reason_for_cover ==
    -   CHR_JUL_REL
    {"And all the more reason for cover," adds Julian.| "Being spotted makes me nervous," says Julian.|}

    *    [Mia agrees.]
        --  CHR_JUL_REL
        --  CHR_MIA_REL

            "Julian's right about that," she says. "The fog would provide great cover."

        -> all_reason_for_cover
    *    [Alexis disagrees.]
        --  CHR_JUL_REL
        --  CHR_ALX_REL
        "But fog will make it much harder to find and recover you and the kayaks," says Alexis. "And after we hit the sandbar yesterday with <i>Troy</i> at the helm, the idea of me piloting the boat in the fog while looking for the kayaks makes me nervous."
        -> all_reason_for_cover

    *    -> fog_or_no

== fog_or_no ==
    -   CHR_TRO_REL
    * "For or no fog, we'll be good," says Troy.[] "The plan accounts for both possibilities..."

        - (opts)
            *    "If the fog sticks around[..."], we'll stay in the cove and wait." says Troy. "When you enter the cove in the boat, use the horn to give the signal. Remember the signal?"
                --    CHR_TRO_REL
                    ** [Alexis mimics the signal.]
                    --- CHR_TRO_REL
                    --- SYS_SOUND_807
                        "Right, good, give two short toots of the horn, count to 3, and give one long toot," says Troy.  "When we hear your signal, we'll blow the whistle. Give two quick toots to acknowledge it. If you don't hear us, repeat your signal and we'll send a flare."

            *    ["If the fog clears..."]
                --    CHR_TRO_REL
                "Or, I should say, <i>when</i> the fog clears, keep the boat away from the island until the two-hour mark, then come in and pick us up," says Troy. "Since it may be easier for us to see you, we'll start by using the signal mirror and whistle to get your attention on the boat. If that doesn't work, we'll shoot off a flare."

            *    ["If the <i>Lakesong</i> is spotted..."]
                --    CHR_TRO_REL
                "You're unlikely to be seen in the fog, but when things clear, you'll be visible—and so will everything else," says Troy. "You'll be able to see boats or drones coming from a distance. Evade contact, then circle back for us when you can."

            // We require the player to ask at least one question
            *    {loop} [Alexis cuts Troy off.]
                -> done
        - (loop)
            // loop
            { -> opts | -> opts | }
            Alexis takes a deep breath.
        - (done)
            -- CHR_ALX_WRD
            "OK, OK, I've got it," says Alexis. "But I'm still going to be nervous driving the boat."

                * ["You got this, Alexis," says Troy.]
                    -> got_this_alexis

        =   got_this_alexis
        -   CHR_TRO_REL
            "Stay slow in the fog and keep a good lookout," says Troy. "And we know that the cove and the approach to it are free of sandbars, so no worries there."

                * [Julian and Troy enter the kayaks.]
                    -> continue_adventure


=== continue_adventure ===
// add trip planning badge
        -   SYS_ACHIEVE_3_4
        -   CHR_TRO_REL
        -   CHR_JUL_REL
        -   "See you in two hours, give-or-take," says Troy. He and Julian push off from the boat and begin paddling toward the shoreline.

            "Good luck!" Mia and Alexis call. Alexis starts the <i>Lakesong's</i> engine and prepares to depart the cove.

            Continue the adventure by...

                    * Following Julian and Troy in the kayaks.
                        -> follow_kayaks
                        // this will continue in a4s2

                    * Following Mia and Alexis in the boat.
                        -> follow_boat
                        // this will continue in a4s3
