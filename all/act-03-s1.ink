/*------------------------

ACT 03 BEGINS
SCENE 01

*/



=== discussion_after_houseboat ===
-   SYS_CHAP_10
// SND mix of low engine, water, birds...
    - As the <i>Lakesong</i> planes the surface of the lake, the friends talk among themselves.

- (opts)

    * [Julian brings up the houseboat.]
        -- CHR_JUL_SML
        -- CHR_ALX_REL
        "That houseboat was pretty sweet," says Julian.

		"Expensive—boats, PWCs, solar panels..." says Alexis. "Did anyone catch if Maura or Ian had <i>jobs?"</i>
			 		** [Troy nods.]
			 		 ---CHR_TRO_REL
			 		 ---CHR_JUL_SML
			 		"I gathered Ian was some sort of commodities trader... working remotely from the houseboat," says Troy.
                     "I wonder if one of the <i>'commodities',"</i> says Julian, making air quotes with his fingers, "is <i>stolen boats?"</i>


    * [Mia mentions the cut-off switch lanyard.]
        -- CHR_MIA_REL
        -- CHR_TRO_REL
        "You're wearing the engine cut-off switch lanyard, right, Troy?"
        "Absolutely, Mia," answers Troy. "Seeing the 'Circle of Death' first-hand makes quite an impression, doesn't it?
                ** ["Sure does," says Mia.]
                "I can't imagine what a propeller strike injury must be like," she says. "I hope Maura and Ian learned their lesson."

    *  [Alexis talks of skiing.]
        -- CHR_MIA_REL

        "Skiing sure was a blast!" says Alexis. "And you were a real natural, Mia."
            ** ["Thanks!" says Mia.]
            ---CHR_MIA_SML
            ---CHR_ALX_SML
            "I didn't realize how much fun that would be," she says. "I could jet-ski all day long."


    *    {loop} [End the discussions.]
            -> done
- (loop)
    // loop a few times before the guard gets bored
    { -> opts | -> opts | }

        * [Troy reaches for the throttle.]

- (done)
    - CHR_TRO_SML

    "Now that we've water-skiied and jet-skiied," says Troy, bringing the <i>Lakesong</i> to a stop. "Let's give each of you a chance to drive the boat. We'll go in alphabetical order... Alexis, come on over."

     * [Alexis takes the wheel wearing a big smile.] Alexis takes her turn. After her, Julian and Mia each spend time at the <i>Lakesong's</i> helm.
     //This seems like it would be a big emotional moment for Mia. I'm surprised you don't go into how she feels about this, or safety or control challenges she would experience in this moment. Or do you think that the player will have already had enough of that with the interaction minigames that will be in chapters 1 and 2?

        ** ["Well-done, everyone!" says Troy smiling.]
            -> well_done_helmsmen

        = well_done_helmsmen
// add to boat achievement here
-   SYS_ACHIEVE_1_3
        - CHR_TRO_SML
        - "You all have the makings of future boat captains."

            * ["Get a look at those clouds!" says Mia.] -> look_clouds

        = look_clouds
        -   CHR_MAI_REL
        -   CHR_TRO_REL
        "Looks like the forecast for afternoon storms was right after all," she says.
        "Sure seems like it," says Troy. "I'd hoped they'd hold off until late afternoon, so we'd get to enjoy the full day."

            -> q_have_go_back

== q_have_go_back ==

        - (opts)
                *    ["We have to go back?" asks Julian.]
                    -- CHR_TRO_REL
                     "We don't have to go back right now," he says, "but we do need to monitor the situation." Troy scans the skies around the boat. -> clouds

                *    (clouds) ["But those clouds are really far away," says Mia.] { Troy senses the disapointment as his friends realize the weather could cut their afternoon on the lake short. "The clouds are far away, but things can change quickly out here."|"Accumulating dark clouds, shifting winds, and the sound of distant thunder are some of the things we'll be watching for."}

                *    {clouds} ["We may end up OK," says Alexis.]
                    ->  weather_maybe_ok

        -     -> opts





    = weather_maybe_ok
        - CHR_ALX_REL
        - CHR_TRO_REL

         Alexis is looking at her smartphone. "The radar shows that storm is well to the west of Laketown and moving north."

            * ["If that holds, we'll be fine," says Troy.]
            -> if_holds_fine

    = if_holds_fine
    -   CHR_TRO_REL
        "As long as there are no storms between us and the shore," he says, "we'll be able to get back to the shore and not get stuck in storm while on the lake."

                * [The radio alerts!]
                    -> radio_alerts




    = radio_alerts
        - CHR_ALX_REL
        - CHR_TRO_REL
        -   Suddenly, the radio transmits a high-pitched alert. Almost immediately, they hear their cell phones receive emergency text alerts as well.



                * [<i>"Attention! Attention!</i>" the radio message begins.] -> attention_attention



    = attention_attention
        -   <i>"The National Weather Service has issued a severe thunderstorm warning for western portions of the Evermore Ruent Basin. All small craft in the area should make all immediate and necessary preparations to return to shore."</i>

            * ["Ok, good, that confirms what we saw," says Alexis.] -> confirms_phone



    = confirms_phone
    -   CHR_ALX_SML
    -   CHR_TRO_REL
    -   "That storm is well to the west of us," she says.
    -   "Wait, there's more," says Troy.

            *   [The radio alerts again.]
                -> severe_watch

    = severe_watch
        - CHR_TRO_REL
        - CHR_ALX_REL
         <i>"A severe thunderstorm watch has been issued for Laketown and all areas of the lake west of Brodaht Island. All mariners are advised to make plans to return to shore, as dangerous storms may develop rapidly with little or no warning."</i>

            * [Troy adjusts course.]
                -> shore_safest

 == shore_safest ==
 // add to emergency prep here
 -  SYS_ACHIEVE_5_2
    -- CHR_TRO_REL
    -- CHR_ALX_REL

        "It's time for us to head back to Laketown," says Troy.
        "Agreed," says Alexis. "We have clear skies now, but we don't want to risk getting caught out on the lake during a severe storm."

        - (opts)
                *    ["The shore is safer?" Mia asks Troy.]
                    -- CHR_TRO_REL
                     "Generally, returning to shore is the best course of action, but like anything, it depends," he says. -> avoid

                *    (avoid) ["Can't we stay on the lake and avoid the storm?" asks Julian.] {As an experienced boater, Troy knows there is some gray area. "Shore is the first option, but depending on the conditions, sometimes it may be best to ride a storm out in open water."|"If you're already caught in a storm, wind and waves can make approaching the shore a more dangerous option."}

                *    {avoid} [Head to shore.] -> horizon_clouds

        -     -> opts


    = horizon_clouds
    -   The mood is gloomy as the <i>Lakesong</i> makes steady progress back toward shore. Dark clouds begin to build over the horizon ahead of the boat, matching the mood. Everyone is disapointed with the change in plans.

            * ["Did you feel that?" asks Alexis.]
                -> wind_shift

    = wind_shift
        -   CHR_ALX_REL
        -   CHR_MIA_REL
        -   "I think the wind just shifted," she says.
        -   "Feels cooler, too," says Mia, shivering.

            * [Alexis checks her phone.]
             -   CHR_ALX_REL
              -   CHR_MIA_REL

            "Looks like a storm has popped up just south of Laketown," says Alexis. "That would explain the clouds, as well as the wind and temperature changes we felt."

              ** [The radio alerts.]
                    -> storm_over_laketown

    = storm_over_laketown
    // SND sound of thunder in distance (far) there should be a rumble then nothing for at least 10-15 secs then another
        -   <i>"A large and dangerous thunderstorm has formed to the south Laketown. This storm is currently stationary and is capable of producing golf-ball-sized hail, damaging winds, and frequent lightning."</i>

            *  [Troy faces a dilemma.]
                -> tro_dilemma

    = tro_dilemma
    -   CHR_TRO_REL
    -   "Since the storm is stationary and south of Laketown, we may be able to get back to the marina safely," says Troy. "On the other hand, if that storm starts moving north, we'd run right into it on our present course."
        -> not_easy_decision

== not_easy_decision ==

        - (opts)
                *    ["You said before that shore is the first option," says Mia.]
                    -- CHR_TRO_REL
                     "As long as that storm south of Laketown doesn't decide to move north over the lake, making for shore is the best option." he says. -> depends

                *    (depends) ["This feels like an 'it depends,'" says Julian.] {Troy estimates their distance from Laketown. "It really depends on how far we are from Laketown."|"But if that storm moves, we'd need to make sure we are docked and secured before it hits."}

                *    {depends} [Troy pauses a couple beats to think it over.] -> tro_makes_his_choice

        -     -> opts

        // "You said before that shore is the first option," says Mia.
        // "This feels like an 'it depends'" says Julian.






    = tro_makes_his_choice
    -   It's not an easy decision, but Troy decides to...

                * [Continue on the same course toward Laketown.]
                    -> continue_to_laketown

                * [Avoid the storm by turning away from Laketown.]
                    -- CHR_TRO_REL
                    -- CHR_ALX_REL

                    "That storm is sure to move," says Troy. "And until we know what direction it takes, I think our safest course is to avoid it—and Laketown—for now."

                        ** ["I agree," says Alexis.]

                         -> avoid_storm

== continue_to_laketown ==
    - CHR_ALX_REL
    - CHR_TRO_REL

    -   "You think we can beat that storm back to Laketown?" asks Alexis.

        "We're sure going to try," says Troy, increasing the <i>Lakesong's</i> speed. The engine whines in response, and the boat picks up additional speed—creating a large wake.

                * [Onward!]
                    -> choppy

        = choppy
// SND bring storms sounds closer but still distant, still infrequent rumbles
// SND fade out the bird sounds if not already out
        - As the boat continues straight on to Laketown, the water becomes very choppy. Troy has no choice but to back off the throttle and slow down to keep his passengers from being bounced around too severely.

                * [Troy issues a command.]
                    -> sit_centerline

        = sit_centerline
        - CHR_TRO_REL
        -   "Double check that everything is stowed and and secured," he says. "Then the three of you need to sit on the floor of the boat along a centerline. This will make the boat more stable and keep you safer."

                * [It's growing darker.]
                    -> grows_darker



        =   grows_darker
        -   Troy turns on the <i>Lakesong's</i> navigation lights. A few raindrops begin to fall. Steadily the boat presses on toward the ever-darkening shore still out of sight to the south.

                * [Alexis is impatient.]
                    -> press_on

        = press_on
        -   CHR_ALX_SAD
        -   CHR_TRO_REL
        -   "Troy, shouldn't we be seeing Laketown and the shoreline by now?" asks Alexis. "Feels like we've been cruising for quite a while."

                * ["Normally, yes," says Troy.]
                    -> normally_yes

        = normally_yes
        -   CHR_ALX_SAD
        -   CHR_TRO_REL
        -   "But I think Laketown and the entire shore are wrapped in rain," he says.

        -   "You're still feeling good about beating the storm?" asks Alexis. "If the shore is getting rain, seems like that stationary storm isn't stationary anymore." Mia and Julian look on, wide-eyed.

                * [Troy considers the situation.]
                    -> tro_considers_choices

        = tro_considers_choices
        - They should be getting close to Laketown, but the shoreline is still not visible in the current conditions. Alexis is right that the storm may no longer be stationary, but there have been no additional radio weather alerts. Troy again has to make a difficult decision.

        // need to randomize these choices

                + [Press on toward Laketown into the storm.]
                    -> choice_press_on_into_storm

                + [Turn away from the storm toward open water.]
                    -> turn_away_from_storm

                + [Consult the radar on the phone app.]
                    -> consult_radar



        = turn_away_from_storm
        -   CHR_TRO_REL
        -   CHR_ALX_REL
            "I don't think we should risk it," says Troy. "I hear thunder. Although I don't see any nearby lightning strikes, it's just not worth the risk to the boat or ourselves."

            "You don't want to get struck by lightning in a boat," says Alexis.

                * [Troy changes course.]
                    -> avoid_storm



        = consult_radar
        -   CHR_TRO_REL
        -   CHR_ALX_REL
        -   "Alexis, what does the radar on your phone show?"
        -   "Laketown's getting wet but the red area—the severe portion of the storm—is still behind it."
            "What about lightning strikes?" asks Troy.
            "Numerous and frequent in the red area," says Alexis.

                * [Troy shakes his head.]
                    -> tro_worried_lightning



== tro_worried_lightning ==
    -   CHR_TRO_REL
    -   "I'm worried about the possibility of lightning strikes if we continue on toward Laketown," says Troy.<> -> lightning_strike


== lightning_strike ==
        - "A lightning strike could damage our electronics—including the radio and engine controls—as well as the hull, possibly."

            "Not to mention it could possibly damage <i>us!"</i> says Mia.


             * ["Let's turn around already!" says Julian.]
                    -> avoid_storm



=== choice_press_on_into_storm ===
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   "I feel good about making it back to the marina before it gets severe," says Troy with confidence. "Besides we haven't received any more radio alerts."

        "OK," says Alexis. She doesn't sound enthusiastic, but she trusts Troy. "You have more experience on the water than all of us combined."

            * [Onward!]
                -> lightning_choices

=== lightning_choices ===
// SND storm much louder and closer here
        -   CHR_TRO_REL
        -   CHR_ALX_REL
        - {The minutes pass as the <i>Lakesong</i> continues toward Laketown and the growing storm. | The sky ahead is fearfully dark, but so far the rain has held off.| The sound of thunder grows louder.}

                * Alexis checks her phone again.[] "There's a tremendous amount of lightning in the severe area of the storm."
                    -> lightning_choices

                * Troy scans the horizon.[] "I do hear thunder in the distance, but I'm not seeing any lightning bolts," says Troy.
                    -> lightning_choices

                *  []  -> strikes_far

=== strikes_far ===
  //  -   CHR_TRO_REL
    -    "{The lightning is still on the inland side of Laketown, away from us.|We seem far enough away.|As long as we move faster than the storm...}," says Troy.

        *   ["More than ten miles away?" asks Mia.]
        -- CHR_MIA_REL
        -- CHR_TRO_REL

            "I read that lightning can strike up to ten miles outside of a storm," she says.

            -> strikes_far

        *   ["I'm not so sure, says Alexis.]
            -- CHR_ALX_SAD
            -- CHR_TRO_REL
            "Am I the only one who thinks we are cutting it awfully close?" says Alexis.

            -> strikes_far

        *   []  -> come_this_far

=== come_this_far ===
        * ["Yeah, we've come this far, right?" says Julian.]

        --  CHR_JUL_REL
        --  "Besides, we know we'll be safe once we get to shore," Julian adds, as another peal of thunder rolls in the distance.

        ** [Troy pauses to consider what he's heard.]
            -> final_decision_storm

=== final_decision_storm ===
    -   CHR_TRO_REL
    -   "Alexis, I do value your instincts. And Mia is correct in saying that lightning is capable of striking far beyond the center of a storm. But we have to be very close to shore, and it's still the safest option, if we can make it there ahead of the storm."

        Troy makes his decision:

            + [Continue to Laketown.]
                ->stil_continue_to_laketown

            + [Turn away from the storm and Laketown.]
                -> tro_worried_lightning




=== stil_continue_to_laketown ===
// SND Storm even closer
    -   They anxiously search the horizon for signs of shoreline.  Although the thunder is loud and visibility is reduced, the friends are still dry and have not been impacted directly by the storm.

        * [After a while, Troy seems troubled.]
            -> no_red_right_yet

        = no_red_right_yet
        - CHR_TRO_ANG
        "Still no sign of the channel markers," Troy says, frustrated. "We should be seeing 'Red Right Returning' anytime now."

            * [Troy continues to search for the channel markers.]
                -> lightning_strike_occurs



== lightning_strike_occurs ==
VAR is_radio_damaged = true
// SND let's get a single, very loud crack of thunger here
// SND kill engine sound, keep storm going
    -   CHR_MIA_SUR
    -   CHR_JUL_SUR
    - Suddenly, there is an enormous crack of lightning!


    -   Mia, Alexis, and Julian each let out a scream.

        "What in the world?" Alexis says, shaken up.

        "What just happened?" Julian asks, his eyes wide with surprise.

            * "We were struck by lightning!"[] says Troy. "Is everyone all right?"
                -> check_passenger_health

== check_passenger_health ==
    - CHR_TRO_SUR
        {|"We'll check the <i>Lakesong</i> for damage after accounting for ourselves," says Troy.| "Glad the two of you are OK," says Troy, "and I'm fine myself." Troy looks to Mia who hasn't said anything.}
            * [Alexis responds.] "I'm fine, but that radio antenna? Not so good," says Alexis, pointing to the top of the <i>Lakesong.</i> "Look, the fiberglass is completely melted!"
                -> check_passenger_health

            *   Julian responds[.], as lightning flashes and cracks nearby.

                    ** "F-fine now[."], but that scared the crap out of me." Julian shakes his head. "I felt every hair on my body stand on end. But it looks like the boat took the brunt of it."
                    -> check_passenger_health

            * [] -> how_is_mia

== how_is_mia ==
        - CHR_MIA_SAD
        - CHR_TRO_REL
            * ["Mia?"]
                -- CHR_MIA_SAD
                -- CHR_ALX_REL
                Mia doesn't answer. She looks dazed.
                "Mia!" Alexis shouts. "Are you OK?"
                "Sorry, I can barely hear you," replies Mia. "My—my ears are ringing, and my legs and arms feel funny..."

                ** ["Funny how?" asks Alexis.]
             -> funny_how

        = funny_how
        -   CHR_MIA_REL
        -   CHR_ALX_SAD
            "I dunno... sorta weak, I guess," says Mia. "You know that feeling like when your leg is asleep? Like that."

                * ["You may have been hit with 'side-flash'," says Troy.]
                    -> side_flash

                = side_flash
                - CHR_TRO_REL
                - CHR_MIA_SML
                - "The effects usually wear off in less than hour," he says.
                "Okay," says Mia. "I mean, I'm starting to feel better already."

                "Good!" says Troy. "Let's hope we can say the same for the <i>Lakesong.</i> A direct strike can cause considerable damage."

                            *** [Troy checks the radio first.]
                            -> radio_is_toast

        = radio_is_toast
        -   CHR_TRO_REL
        -   "Well, gang, as I expected—the radio is toast," declares Troy. "Let's do a quick check of the rest of the boat. And I mean quick, because it seems that storm is moving toward us now!"

            * [They quickly inspect the boat.]

            // Shuffle: we'll randomize the damage report
            { shuffle:
	            - -> radio_damage_only

	            - -> engine_damage

	            - -> hole_in_boat
            }

== radio_damage_only ==
    - CHR_TRO_REL
    - The <i>Lakesong's</i> engine cut off when the lightning struck. Troy attempts to start the engine, and it turns over on the first try.

        "That's good news!" says Troy. "No damage to the engine's electronic controls."

            * ["No hull damage," reports Alexis.]
                -> no_lights_damage

        = no_lights_damage
        -   CHR_ALX_SML
        -   CHR_TRO_REL
        -   Troy flips on the navigation lights that had gone out with the strike and smiles when they illuminate. The lightning strike didn't damage the boat's electrical systems.

            * ["Looks like we got lucky!" says Troy.]
                -> lucky_how

== lucky_how ==
-   CHR_TRO_SML
     - (opts)
                *    ["It could have been worse?" shouts Mia loudly, her ears still ringing.]
                    -- CHR_TRO_REL
                     "It's not uncommon for a lightning strike to damage the electronics, the engine, and a lightning strike can even put a hole in the boat," he says. -> lucky

                *    (lucky) ["Let's not make a habit of tempting fate," says Alexis.] {Troy looks around the boat. "I wouldn't want to roll the dice like that again, as chances are we'd be a lot worse off than just a busted radio."|"Yes, we really did get lucky this time."}

                *    {lucky} [Alexis looks at Mia and mouths the world 'lucky.'] -> bad_decision

        -     -> opts

        = bad_decision
        -   CHR_TRO_SUR
        -   "I made a bad decision," say Troy. "I thought the storm was stationary, so I figured we could outrace it and get back to shore ahead of it."

            * [Troy puts the boat into forward gear.]
                    -> why_bad_decision

        = why_bad_decision
        "When we couldn't see the shore nor any sign of the channel markers after all that time," continues Troy, "I should have realized we wouldn't get back to shore in time."

            * [The Lakesong moves away from shore.]
            -> avoid_storm

== engine_damage ==
    -   CHR_TRO_ANG
    -   The <i>Lakesong's</i> engine cut off when the lightning struck. Troy attempts to start the engine, but it doesn't turn over. He tries again. Still nothing. Troy curses.

        * ["Uh-oh, that doesn't sound good," says Alexis.]
            -> engine_fried

        = engine_fried
        - CHR_TRO_ANG
        - CHR_ALX_SAD
        -   "No, it's not," says Troy. "It looks like the lightning fried the engine's electronics. I can't get it started!"

                *   "So we are sitting ducks?"[] asks Julian, as the storm closes in on the crippled boat.
                    -> bad_decision


        = bad_decision
        - CHR_JUL_SAD
        - CHR_TRO_SAD
        "Trying to race the storm to shore turned out to be a bad decision," declares Troy. "When we couldn't see the shore nor any sign of the channel markers after all that time, I should have realized we wouldn't get back to shore before the storm."

                * "What are we going to do?"[] asks Mia.
                    -> what_going_do

        = what_going_do
        -   CHR_MIA_SAD
        -   CHR_TRO_SUR
            "The safest thing to do now is to call the marine patrol by phone, drop anchor—so we don't drift—and stand by with VDS to help the marine patrol locate us," says Troy.

                * [Prepare for rescue.]
                After anchoring the boat and calling the marine patrol, the four friends huddle together. The rain comes down hard. The thunder makes it impossible to talk. They are wet, cold, and disappointed, especially Troy. He tried to race the storm, but he should have realized he wouldn't get back to shore in time.

                    ** [Rewind the story and make a different decision.]
                        <i>Previously...</i>
                        Alexis worries they can't outrun the storm. Mia reminds Troy that lightning can strike far from the center of a storm. Julian thinks they may as well press on.

                            *** [Troy decides to change course.]
                                -> tro_worried_lightning



== hole_in_boat ==
    -   CHR_ALX_SUR
    -   CHR_TRO_REL
    -   "There's a hole in the hull, port side!" shouts Alexis. "But it's above the water line, barely."

        "The lightning must have hit the antenna and followed the VHF cable down and out the hull," says Troy.

            * "Are we going to be OK?"[] asks Mia, speaking loudly to overcome the annoying ringing in her ears.
                -> should_be_if_engine

        = should_be_if_engine
        - CHR_MIA_SAD
        - CHR_TRO_REL
        - "We should be, assuming the engine is OK."
            -> engine_damage
