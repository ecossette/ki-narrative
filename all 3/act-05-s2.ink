// act 05 scene 02

=== second_entry_cove_fog ===
    -   CHR_ALX_REL
    -   CHR_MIA_REL

    - In the foggy cove, Mia and Alexis repeat the signal again—but just as before, there is no response from Julian and Troy. 

        * [They wait and repeat the signal several times.]
            --  The cove remains frustratingly still.
            -> no_response_hour_two
    
=== second_entry_cove_clear ===
    -   CHR_ALX_REL
    -   CHR_MIA_REL

    -   Mia and Alexis enter the cove, but there is no sign of the kayaks. Alexis wonders if there is a chance that Julian and Troy are hunkered down somewhere out of sight along the shoreline. 

        * [Alexis signals with the boat's horn.]
            -- "Nothing and more nothing," says Mia frustrated. 
            -> no_response_hour_two

== no_response_hour_two ==
    -   CHR_MIA_SAD
    -   CHR_ALX_SAD

    -   (opts)

        *   [Alexis fidgets and checks her watch.]
        "We're now past the second meeting hour," she says.-> glances

        *   (glances) [Mia and Alexis exchange nervous glances.] {Mia looks at Alexis, her face creased with worry. Alexis feels the same. "We're going to need to make a decision," says Alexis.| "Way late for the first hour and late for the second," Alexis sighs.}

        *   {glances} ["What's to decide?" asks Mia.]
            -> decision_call

    -   -> opts

== decision_call ==
    -   CHR_MIA_SAD
    -   CHR_ALX_SAD
    -   "Well, we have two options, says Alexis. "One, we can call the marine patrol and report them as missing right now. Or we can wait a little longer, maybe take a look outside the cove?"

        -   (opts)

            *   ["Why wait?" Mia questions Alexis.]
                --  CHR_MIA_ANG
                "I don't understand why we'd wait," says Mia, shaking her head.-> plan

            *   (plan) ["The plan was to call."] {"The plan was to call for help if they were overdue, right?"|"They are definitely overdue," says Mia, no doubt in her voice.}

            *   {plan} ["Well... it depends," says Alexis.]
                -> how_overdue

        -   -> opts

== how_overdue ==
    -   CHR_MIA_SAD
    -   CHR_ALX_SAD
    -   "They're an hour overdue from the <i>first</i> meeting time, says Alexis, "But they are only, what, a few minutes overdue from the second meeting time?" Alexis is fidgety and keeps checking her watch.

        -   (opts)

            *   [Mia checks her own watch.]
            "They're more than a 'few' minutes overdue," says Mia.

            *   (arms) [Mia crosses her arms in frustration.] {She crosses her arms in frustration with Alexis—but then has a realization. "You're worried that if you call now and we find them a few minutes later that everyone will think you overreacted?" says Mia.|"I get it—you don't want to be called 'hysterical.'"}

            *   {arms} [Alexis sighs.]
                -> no_panic_rule

        -   -> opts

==  no_panic_rule ==
    -   CHR_MIA_ANG
    -   CHR_ALX_SAD
    -   "Something like that," says Alexis. "I mean, isn't the first rule of an emergency situation 'don't panic'?"

        Mia agrees with the sentiment, but not its application in this case. "But they <i>are</i> overdue," she says.

            * [Alexis again checks the time.]


        {
            - follow_boat:
            -> make_call_decision

            - else:
            -> call_report_overdue

        }


== make_call_decision ==
    -   CHR_ALX_REL
// this decision is only presented to player if they followed the boat and not the kayaks
    -   Alexis again checks the time, and then her face takes on the calm expression that comes with having made a decision. She decides to...

         ** [Call the marine patrol right now.]
            -> call_report_overdue

        ** [Take a look outside the cove first.]
            -> search_more_wait_call


== call_report_overdue ==
    -   CHR_ALX_REL
    -   "You're right, says Alexis{follow_kayaks:, her face reflecting the calmness that comes with having made a decision}. "And we can keep searching for Julian and Troy after we alert the marine police."

        * [Alexis reaches for the radio.]
        -- Alexis reaches for the radio and checks that it's tuned to the emergency channel—number 16.

            ** ["Pan, Pan, Pan," she says.]
                -> pan_pan_call_01 ->

                -> leave_cove_after_pan_call


=== pan_pan_call_01 ===
// this is a tunnel we'll reuse
        -   CHR_ALX_REL

        -   "Pan, Pan, Pan," Alexis says into the transmitter, using the signal (pronounced 'Pahn') for an incident of less gravity than a Mayday signal. (Mayday is reserved for situations where the loss of a vessel or persons is imminent.)

                * ["This is <i>Lakesong, Lakesong, Lakesong</i>."]
                -- Alexis continues the pan-pan distress call. "Whiskey Sierra 2-3-2-3. Midway, south side of Kalkomey Isle bearing north 500 meters.  We have 2 persons in kayaks who are well overdue. <i>Lakesong</i> is a 32-foot cabin cruiser—white hull with a green stripe. Over."

                    ** [They wait for a response.]
                    -> no_response_pan

        = no_response_pan
        -   CHR_ALX_REL
        -   There is no immediate response to the pan-pan call, so Alexis waits 15 seconds—per regulation—then repeats the pan-pan distress call on Channel 16. Again there is no response.

            * [She notes the time.]
            --  CHR_ALX_REL

            {
                -stubbornly_persisted:
                Alexis notes the time, as well as the fact that the last of the fog has cleared out of the cove. Alexis can see it's empty—no sign of the Julian and Troy in the kayaks.

                - search_more_wait_call:
                Alexis notes the time, her face full of concern.

                - else:
               Alexis notes the time and takes a final look around the cove. There is no sign of the Julian and Troy in the kayaks.

            }


                ** [Alexis pushes the throttle forward.]
                - ->->


== leave_cove_after_pan_call ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Alexis pushes the throttle forward and puts the boat on a course to exit the cove.

        "Aren't you going to try the radio again?" asks Mia.

            * ["We will."]
            --  CHR_ALX_REL
            "Per the regs, we need to wait two minutes after our first two calls before trying again," says Alexis. "in the meantime, I want to get us out into open water. The island may be interfering with our radio signal."

                ** [Leave the cove.]
                Once in open water, Alexis repeats the pan-pan distress call at the proper two-minute mark.

                    *** [The radio squawks to life.]
                        -> radio_squawk


        = radio_squawk
        -   CHR_MIA_SUR
        -   CHR_ALX_SUR
        But what they hear is not what they were expecting.

            * ["MAYDAY, MAYDAY, MAYDAY!"]
                -> who_rescues_shuffle


=== who_rescues_shuffle ===
// should we reverse the likelihood of rescue to the likelihood of being accomplice? cletus 10% ian 30% mac 60% ?

        {shuffle:

            - -> cletus_rescues

            - -> mac_rescues
            - -> mac_rescues
            - -> mac_rescues
            - -> mac_rescues
            - -> mac_rescues

            - -> ian_rescues
            - -> ian_rescues
            - -> ian_rescues

        }

=== cletus_rescues ===
    - DEBUG: cletus is the rescuer
    ~ rescuer = CLETUS
    ~ rescue_boat = "Munlock"
    ~ rescue_call_sign = "Romeo Foxtrot 57-80"
    ~ rescue_boat_type = "24 foot Seaark"
    ~ rescue_boat_color = "gray"

    -> rescuer_mayday_call



=== mac_rescues ===
    - DEBUG: mac is the rescuer
    ~ rescuer = MAC
    ~ rescue_boat = "Beachleaf"
    ~ rescue_call_sign = "Delta India 31-40"
    ~ rescue_boat_type = "12 foot all purpose fishing boat"
    ~ rescue_boat_color = "green"
    -> rescuer_mayday_call

=== ian_rescues ===
    - DEBUG: ian is the rescuer
    ~ rescuer = IAN
    ~ rescue_boat = "Shamrockit"
    ~ rescue_call_sign = "AM 22-08"
    ~ rescue_boat_type = "18 foot bowrider"
    ~ rescue_boat_color = "red"
    -> rescuer_mayday_call


=== rescuer_mayday_call ===
    -   CHR_MIA_SUR
    -   CHR_ALX_SUR
    -   Mia and Alexis share surprised looks. It's another boat in distress!

        * "This is {rescue_boat}, {rescue_boat}, {rescue_boat}, {rescue_call_sign}.["] Kalkomey Isle bears 270 degrees magnetic distance one-half mile. I've recovered two males from the water with symptoms of extreme hypothermia. Alive but unresponsive. Request immediate emergency medical assistance. {rescue_boat} is a {rescue_boat_type}, {rescue_boat_color} hull. Over."

            ** ["Oh my God!" says Mia.]
            --  CHR_ALX_REL
            --  CHR_MIA_SUR
            -- "Oh my God!" says Mia. "That's Julian and Troy." Alexis nods, her mouth open, shocked by the news.

                *** [The radio squawks a reply.]
                    -> mp_reply

        = mp_reply
        -   CHR_ALX_REL
        "Marine Patrol copies that {rescue_boat}. Two males recovered presenting symptoms of extreme hypothermia. Immediate help needed. Please switch to working channel 68 for continued transmission. Over."

            * ["Copy that, Marine Police."] "{rescue_boat} switching to working channel 68 for continued transmission. Out."

                ** [Alexis takes a deep breath.]
                    -> switch_to_68

        = switch_to_68
        -   CHR_ALX_REL
        -   Alexis takes a deep breath to collect her wits, then switches the boat's radio to channel 68 to follow the transmission and join it in progress.

            "... correct both are unresponsive and breathing is irregular," says the voice of the rescuer.

                ** "Copy that {rescue_boat}.[] "Medevac chopper en-route. ETA 25 minutes. Over."
                    -> mia_sob

        = mia_sob

            -   (opts)

                * [Mia begins to sob.]
                    Mia begins to sob while Alexis—jaw clenched—instinctively sets a course toward Laketown. -> ok

                * (ok) ["They're g-g-gonna be OK, right?"] {"Right? They're gonna be OK?" asks Mia, but she knows it's a rhetorical question. They have no way of knowing.| Alexis shivers, thinking how cold the water must have been as Julian and Troy waited for rescue.}

                *   {ok} [Review the stages of cold water immersion.]
                        -> cold_water_review_mandatory


            -   -> opts


        = cold_water_review_mandatory
        // launch the cold water immersion review here. this is a mandatory review for the player on this path. when finished send student to =need_report

            -- SYS_PDF_40
            // ** [OK]
                -> need_report

        = need_report
        -   CHR_MIA_SAD
        -   CHR_ALX_REL
        -   Alexis turns the radio back to Channel 16. "We need to tell the marine patrol it's Julian and Troy," she says.

            - (opts2)

            * ["Maybe it's not them?" wonders Mia.]
                "What if it isn't Julian and Troy?" asks Mia, her face brightening with the possibility. "I mean, what about the kayaks?"

            *   (turns) [Alexis turns to Mia.] {Alexis turns to Mia, her own eyes filling with tears.|"They were in kayaks... they didn't mention kayaks..." Mia tries to convince herself.}

            *   {turns} [Alexis grabs the transmitter.]
                -> post_rescue_pan_call

                "Pan-pan-pan...."

            -   -> opts2
        // need a case where Mia and Alexis find them.

              -> DONE


=== post_rescue_pan_call ===
    -   CHR_MIA_SAD
    -   CHR_ALX_REL
    -   Alexis grabs the transmitter, and Mia droops.

        "Pan, Pan, Pan. This is <i>Lakesong</i>, <i>Lakesong</i>, <i>Lakesong</i>."

            * [The marine police respond.]
                -> mp_response


    = mp_response
    -   CHR_ALX_REL
    -   The marine police ask Alexis to switch to Channel 70, where she updates them on the likelihood that Julian and Troy are the rescued victims of the cold water immersion.

            * ["Copy that <i>Lakesong</i>."]
            -   "The medevac chopper is on the way. Advise that you return to Laketown immediately and directly. Over."

                "Copy that," says Alexis. "<i>Lakesong</i> returning to Laketown. <i>Lakesong</i> out."

                    ** [Alexis nudges the throttle forward.]
                        -> return_post_rescue



=== search_more_wait_call ===
-   CHR_ALX_REL
// waiting to call has a influence on the medical condition of the boys once they are rescued, otherwise the narrative flow doesn't change.
~   hypo_severity = 3

    - Alexis takes the boat out of the cove. She and Mia scan up and down the coast of the island, but see nothing. Alexis notes the direction of the current, and follows it east, figuring that Troy and Julian would have gone with the current. A few minutes pass, then a few more but there's no sign of Julian, Troy, or the kayaks.

            * [Alexis reaches for the radio.]

                -> pan_pan_call_01 ->

            -> throttle_more_east

        = throttle_more_east
        -   CHR_ALX_REL
        -   CHR_MIA_REL
        -   Alexis pushes on the throttle, giving them more speed. She thinks it unlikely the kayaks could have gone so far east, but she wants to make sure.

            "Aren't you going to try the radio again?" asks Mia.

            * ["We will."]
            --  CHR_ALX_REL
            --  CHR_MIA_REL
            "Per the regs, we need to wait two minutes after our first two calls before trying again," says Alexis. "In the meantime, we'll continue searching along the current."


                    ** [The radio squawks to life.]
                        -> radio_squawk


        = radio_squawk
        -   CHR_MIA_SUR
        -   CHR_ALX_SUR
        But what they hear is not what they were expecting.

            * ["MAYDAY, MAYDAY, MAYDAY!"]
                -> who_rescues_shuffle
