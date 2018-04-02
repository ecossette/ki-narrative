// a5s4


/*
Possible rescue conditions for follow kayaks path:
---------------------------------------------------

have kayaks and got off early flare = hypo moderate / no memory loss / rescue by MA possible
kayak_status = "kept"
flare_early = "yes"
hypo_severity = "mod-0"

have kayaks but did not get off early flare = hypo moderate / at least one has memory loss / rescue by MA possible
kayak_status = "kept"
flare_early = "no"
hypo_severity = "mod-1"



no kayak and got off early flare = hypo moderate / at least one has memory loss / no MA rescue possible
kayak_status = "lost"
flare_early = "yes"
hypo_severity = "mod-2"


no kayak and no early flare = hypo severe / memory loss both / no MA rescue possible.
kayak_status = "lost"
flare_early = "no"
hypo_severity = "extreme"


hypo_severity =
mod-0 = no memory loss
mod-1 = one has memory loss, only remembers (cave/stream) initially, later remembers monkeys, if catch willard, remembers seeing Mr. Willard in cave.
mod-2 = one has memory loss (cave/stream) no additional memory recovery.
extreme = both have memory loss


Possible rescue conditions for follow MA:
------------------------------------------

call for help right away = hypo moderate / no memory loss
wait to call for help = hypo extreme / full memory loss




    */


=== report_to_police ===
// complete boat achievment
-   SYS_SCENE_8_20
-   SYS_ACHIEVE_1_5
    -   After securing the <i>Lakesong</i> for the day, the four friends go directly to the marine police station located at the marina.

            * [Captain Garcia welcomes them.]
                -> police_welcome


    = police_welcome
    -   SYS_SCENE_8_21
    -   CHR_MPO_REL
    -   They tell the captain everything about their two visits to Kalkomey Isle. Captain Garcia listens intently, occasionally muttering "hmmm" or "interesting." He takes notes on a small notepad.

        *   ["And that's everything," says Troy.]
            -> that_everything

    
    = that_everything
    -   CHR_TRO_REL
    -   CHR_MPO_REL
    -   Troy looks at the Captain anxiously. "What do you think, Captain?" he asks.

        Captain Garcia stops writing and puts down his pen.


        -   (opts)

            *   ["Let's see if I've got this right," he says.]
                --  CHR_MPO_REL
                "Flying drones disguised as mutant creatures, disappearing boats...?" says the Captain.  -> lean

            *   (lean) [He looks closely at each of the four.] {"Well, that's quite a story you've got there," he says.| "Of course, you're not the first ones to come back with some wild tales from that area."}

            *   {lean} [The friends exchange worried glances.]
                -> private_property

        -   -> opts


   = private_property
    -   CHR_TRO_SUR
    -   CHR_MPO_REL
    -   Captain Garcia looks closely at each of the four. "I need you to tell me the truth," he says.
    
        -   (opts2)    
            
            *   [Troy starts to speak.]
            --  CHR_TRO_SAD
            Troy starts to speak but the Captain holds up his hand. "Hold on a second," the Captain says. -> nothing
            
            *   (nothing) [Troy and the others say nothing.] {The friends wait in silence for the for the Captain to continue.|"It's not that I don't believe you, but there's just one thing..."} 
            
            
            *   {nothing} ["This Kalkomey Isle..." says the Captain.]
                -> ki_private
            
        -   -> opts2 
           
    = ki_private
    -   CHR_MPO_REL
    -   CHR_TRO_SUR
    -   "Did you know the island is private property?"
    -   "Private property?" exclaims Troy. "No, we didn't know!"
            
           "I can understand that, as it's not marked as such on the charts," says the Captain. "Though private property it is. <>
           
            {
                
                - no_go_island: From what you say, though, you never did set foot on the island itself, so you're in the clear there."
                
                - else: By going on the island, you could be fined—or worse—for trespassing."
            
            }
           
            
                *   [Captain Garcia looks again at his notes.]
                    -> truth_is
    
    
    = truth_is
    -   CHR_MPO_REL
    -   "Realistically, you've given us the best leads we've had so far," says the Captain. "You've been very helpful, but this is where it ends."
    
        *   [The Captain's serious tone is noted.]
            -> no_more_ki
        
    = no_more_ki
    -   CHR_MPO_REL
    -   "I need you all to promise me you won't go out to Kalkomey Isle—neither on it nor around it—again," he says, his eyes stern and unblinking. "It's just too dangerous out there with or without thieves. Let the police take it from here."
    
            *   ["Yes, sir!"]
                -> yes_sir

    = yes_sir
    -   CHR_ALX_REL
    -   "Yes, sir," they all say. Alexis adds, "Not a problem, Captain. I'll stick to water-skiing." Captain Garcia smiles and stands, giving the signal that it's time for the friends to go.

                * ["Just one more thing," he says.]
                    -> suspect_anyone_office


=== suspect_anyone_office ===
    -   CHR_MPO_REL
    -   "Just one more thing before you go," Captain Garcia says. "Is there anyone that maybe you suspect of being involved in the robberies?"

        {
            - suspect_whom == NOBODY:
            * [Troy shakes his head.]
                -> no_suspicion

            - else:
                -> yes_suspicion

        }



    = no_suspicion
    -   CHR_TRO_REL
    -   CHR_MPO_REL
    -   "No, sir, we sure don't," says Troy, shaking his head.
        "Understood," says Captain Garcia. "It's in our hands now. You did the right thing by coming in, but remember what I said: no more visits to Kalkomey Isle."

            * [They agree and depart.]
                -> conclude_day_two


    = yes_suspicion
    -   CHR_ALX_REL
    -   CHR_TRO_REL

        -   (opts)

            *   [Troy raises his eyebrows while Julian shrugs.]
                -- CHR_TRO_SUR
                Captain Garcia watches as Troy's faces show indecision and Julian gives an ambivalent shrug. -> away

            *   (away) [Alexis glances at Mia, who nods.] {Alexis glances at Mia, who returns a quick nod.| Captain Garcia's eyes narrow on Alexis.}

            *   {away} ["Ms. Baker?" the Captain addresses Alexis.]
                -> ms_baker

        -   -> opts

    = ms_baker
    -   CHR_MPO_REL
    -   CHR_ALX_REL
    "Do you have a suspicion, Ms. Baker?" Captain Garcia arches an eyebrow, as everyone turns their attention to Alexis.

        -   (opts2)

            *   [Alexis hesitates.]
                -- CHR_ALX_REL
                Alexis hesitates. "OK, 'suspicion' is probably a bit much," she says.  -> hesitates

            *   (hesitates) [Alexis looks to her friends for support.] {Alexis looks to her friends for support. "We discussed this on the way in, and, well... it's more like, just, I dunno, a feeling or something."|"I can't really explain it... we don't have anything concrete."}

            *   {hesitates} ["A hunch," says the Captain.]
                    -> hunch

        -   -> opts2

    = hunch
    -   CHR_MPO_REL
    -   CHR_ALX_REL
    -   "A hunch is what we call it," says the Captain, "And sometimes a hunch can be as much value as months of rational analysis, so you needn't feel embarrassed by having one, Ms. Baker. That goes for the rest of you, too."

        -   (opts3)

            *    [Captain Garcia looks at the others.]
                -- CHR_MPO_REL
                Captain Garcia looks at Troy, Julian, and Mia in turn. "But I can understand your reluctance to get involved any more than you already are." -> notebook

            *    (notebook) [Captain Garcia glances at his notebook.] {Captain Garcia glances at the notebook on his desk. "You've already involved yourselves plenty... more than most."|"Of course, since you're already involved..." The Captain smiles reassuringly.}

            *   {notebook} [Alexis agrees.]
                -> hunch_decision

        -   -> opts3

== hunch_decision ==
    -   CHR_MPO_REL
    -   CHR_ALX_REL
    -   Alexis agrees with the Captain. "OK, since you put it that way," she says. "Our hunch—and it's just a hunch—is that {suspect_whom} is somehow involved."

                {

                    - suspect_whom == CLETUS:
                    "Cletus Bluin, the dockhand?" asks Captain Garcia.

                    - suspect_whom == MAURA_AND_IAN:
                    "Maura Gallagher and Ian Murphey, the young couple from Oceanside?" asks Captain Garcia.

                    - suspect_whom == MAC:
                    "Mac...? Oh, Mr. MacKensie, the islander?" asks Captain Garcia with a doubtful look. "Really?"

                }

            * [Alexis nods.]
                -> alexis_confirms

        = alexis_confirms
        -   CHR_ALX_REL
        -   Alexis nods and looks to her friends expectantly.

            "Of course," says Troy, chiming in to support Alexis. "That's just a hunch about {suspect_whom}, like you said, Captain."

            -   (opts)

                *   [The Captain nods.]
                --  CHR_MPO_REL
                The Captain nods and says, "I understand it's just a hunch, but I'll be sure to pay a visit to {suspect_whom}." -> arms

                *   (arms) [The Captain crosses his arms.] {The Captain crosses his arms, "You all have been very helpful, but we'll take it from here."|"When you've eliminated the impossible, whatever remains, however improbable, must be the truth."}

                *   {arms} [The Captain thanks them.]
                        -> captain_thanks

            -   -> opts

        = captain_thanks
        -   CHR_MPO_REL
        -   The Captain thanks them and again warns them. "Remember what I said: no more visits to Kalkomey Isle."

            * [The friends agree and depart.]
                -> conclude_day_two


=== conclude_day_two ===
-   SYS_ACHIEVE_7_4
    -   CHR_TRO_REL
    -   Walking along the dock in the setting sun, the four make plans for their next boating outing—an outing that won't include Kalkomey Isle.

        "Now all we can do is wait," says Troy. "We'll find out soon enough if what we told Captain Garcia proves helpful in finding the thieves."

            * ["And the reward!" says Julian.]
                -> and_reward

        = and_reward
        -   CHR_TRO_SML
        -   "And speaking of rewards," says Troy, "It's two-for-one night at Spinozzi's. My treat!" Mia, Alexis, and Julian agree it's a great idea and they happily make their way down the dock while discussing their favorite pizza toppings.

            * [Several days later...]
                -> on_dock_day_03



=== met_by_police ==
 // set the hypothermia severity conditions and return
 // tunnel sent to depends on if we followed kayaks or followed boat
 // if we followed kayaks we participated in what happened.
 // we need SHUFFLE condition if followed boat.
 // in BOTH cases we need to shuffle memory loss conditions.

    {

        - join_mia_alx_second_attempt:
            -> hypothermia_condition_decision_tree ->

        - follow_boat_2:
            -> set_kayak_conditions_for_no_follow ->

        - else:
            -> set_kayak_conditions_for_no_follow ->
            //DEBUG: This condition should not be possible.
    }





/*- DEBUG met by police


    - DEBUG: hypothermia severity is {hypo_severity}

        * [ DEBUG: MAC IS RESCUE]
            ~ rescuer = MAC
        * [ DEBUG: CLETUS IS RESCUE]
            ~ rescuer = CLETUS
        * [ DEBUG: IAN IS RESCUE]
            ~ rescuer = IAN
*/
    -   SYS_SCENE_1
    -   CHR_MPO_REL
   /* DEBUG: hypo severity is {hypo_severity}
    DEBUG: kayak status is {kayak_status}
    DEBUG: flare status is {flare_early}
    DEBUG:
        {
            - follow_boat_2:
            follow boat 2 turn is flagged.
            - join_mia_alx_second_attempt:
            join mia alx second attempt is flagged.
            - else:
            neither is flagged
        }
    */

    -   Shortly after securing the boat, they see Captain Garcia of the Marine Patrol walking purposefully toward them.

        "Ms. Chen, Ms. Baker," Captain Garcia greets them.

            * ["How are they?!"]
                -> police_recap

== police_recap ==
    -   CHR_MIA_SAD
    -   CHR_ALX_SAD
    -   "How are they?!" Alexis and Mia ask.

        "Both Mr. Del Castillo and Mr. Kelton are going to be fine," says the Captain.

            * [The news is comforting.]
                -> relieved

        = relieved
        -   CHR_MPO_REL
        -   "They're in the hospital recovering, and that's where they'll remain overnight{hypo_severity > 0:, at least}," says Captain Garcia. "They were extremely lucky <>

            {
                - rescuer == CLETUS:
                Mr. Bluin was there to recover them when he did."
                    * ["Mr. Bluin?"] -> cletus_recover

                - rescuer == IAN:
                Mr. Murphey was there to recover them when he did."
                    * ["Mr. Murphey?"] -> ian_recover

                - rescuer == MAC:
                 Mr. MacKensie was there to recover them when he did."
                    * ["Mr. MacKensie?"] -> mac_recover
            }

       -> DONE

        = cletus_recover
        -   CHR_MIA_REL
        -   CHR_MPO_REL
        -   "Mr. Bluin?" Mia asks, unsure who that is.

            "First name's Cletus," says Captain Garcia. "You'd probably recognize him, since his job as a dockhand puts him all around the marina."

                 {
            - rescuer == suspect_whom:
            * [Mia and Alexis exchange questioning glances] upon hearing that the rescuer was {rescuer}, whom they'd agreed seemed suspicious.
                -> recover_condition

            - else:
            * [Mia and Alexis are relieved.]
                -> recover_condition
            }


        = ian_recover
        -   CHR_MIA_REL
        -   CHR_MPO_REL
        -   "Mr. Murphey?" asks Mia, trying to remember what Ian said his last name was. "Ian Murphey?"

            "That's him," says Captain Garcia. "From Oceanside. Right... you helped him and his friend out yesterday. The young lady?"

             {
            - rescuer == suspect_whom:
            * [Mia and Alexis exchange questioning glances] upon hearing that the rescuer was {rescuer}, whom they'd agreed seemed suspicious.
                -> recover_condition

            - else:
            * [Mia and Alexis are relieved.]
                -> recover_condition
            }



        = mac_recover
        -   CHR_MIA_REL
        -   CHR_MPO_REL
        -   "Mr. MacKensie?" Mia asks. "Oh, is that Mac?"

            "Yes, everyone calls him Mac," says the Captain. "He's an islander, real nice fellow."

             {
            - rescuer == suspect_whom:
            * [Mia and Alexis exchange questioning glances] upon hearing that the rescuer was {rescuer}, whom they'd agreed seemed suspicious.
                -> recover_condition

            - else:
            * [Mia and Alexis are relieved.]
                -> recover_condition
            }







== recover_condition ==
    -   CHR_MIA_SML
    -   CHR_ALX_SML
    -   The color returns to Mia's face, and Alexis lets out a big sigh. They are both relieved to hear that Julian and Troy are OK{rescuer == suspect_whom:, though both are somewhat taken aback that the rescuer is {rescuer} after having been suspicious of him}.

            * [Captain Garcia continues...]

        {
            - hypo_severity == 3:
                -> hypo_03_report

            - hypo_severity == 2:
                -> hypo_02_report

            - hypo_severity == 1:
                -> hypo_01_report

            - hypo_severity == 0:
                -> hypo_00_report
            - else:
            DEBUG: This condition should not be possible.
                -> DONE

        }



        = hypo_03_report
        -   CHR_MPO_REL
        -  {rescuer} reports that he just stumbled upon them. There was no emergency signal, nor was there any sign of kayaks," says the Captain. "He found them huddling together to conserve body heat—which probably saved their lives."
        * ["They could have died?" blurts Mia.] "Yes," says Captain Garcia. "Without a kayak to help get their bodies out of the cold water, they suffered maximum exposure. And that most likely accounts for their memory loss".

                ** ["Memory loss?"]
                -> memory_loss

        = hypo_02_report
        -   CHR_MPO_REL
        -   "{rescuer} found them after seeing a flare, but there was no sign of the kayaks," says the Captain. "He found them huddling together to conserve body heat—very smart. Probably saved their lives."
        
        * ["They could have died?" blurts Mia.] "Yes," says Captain Carcia. "Without a kayak to help get their bodies out of the cold water, they suffered greater exposure. That probably accounts for their memory loss."

                ** ["Memory loss?"]
                -> memory_loss

        = hypo_01_report
        -   CHR_MPO_REL
        -   "{rescuer} reports he just stumbled upon them—there was no emergency signal. But they did have one kayak still, so there were able to get much of their bodies out of the water. That may have saved their lives," says the Captain. "They are both suffering from memory loss related to the trauma."

                * ["Memory loss?"]
                -> memory_loss


        = hypo_00_report
        -   CHR_MPO_REL
        -   "{rescuer} found them after seeing a flare, which was fortunate," says the Captain. "When he found them they still had a kayak, so they were both able to get much of their bodies out the water. That may have saved their lives. They should be released from the hospital tomorrow and be fine."

                *   ["How did they end up in the water?" asks Alexis.]
                    -> how_capsize

            -> DONE



== memory_loss ==
    -   CHR_ALX_SUR
    -   CHR_MPO_REL
    -   "Memory loss?" asks Alexis, wide-eyed.

        "Affirmitive," says the Captain. <>

            {

                - hypo_severity == 3:
                "Neither Mr. Del Castillo nor Mr. Kelton have any memory of what happened after setting off in the kayaks and waking up in the hospital.""

                - else:
                 {
                    - who_lost_memory == TROY:
                    "Mr. Kelton—Troy—has no memory of anything at all, and Julian—Mr. Del Castillo—has some memory, but not of capsizing.""

                    -   who_lost_memory == JULIAN:
                    "Mr. Del Castillo—Julian—has no memory of anything at all, and Troy—Mr. Kelton—has some memory, but not of capsizing.""

                }

            }


            *   [Mia and Alexis are stunned.]
                -> stunned

        = stunned
        -   CHR_MIA_SAD
        -   CHR_ALX_SAD
        -   Mia and Alexis are stunned by the news. They immediately begin to talk over each other with follow-up questions to the Captain about Julian and Troy's condition.

                * [Captain Garcia holds up his hands.]
                    -> my_turn_questions


    -> DONE


== how_capsize ==
        -   CHR_ALX_SAD
        -   "I mean what happened to the kayaks?" Alexis is puzzled.


            -   (opts)

                *   [Captain Garcia cocks his head sideways.]
                -- CHR_MPO_REL
                Captain Garcia cocks his head sideways. "Your two friends had quite a story to tell..." -> looks

                *   (looks) [Captain Garcia looks a bit embarrassed.] {Captain Garcia looks a bit embarrassed. "They claim the drain plugs on their kayaks were pulled by, um... by monkeys," he says.|Clearly Captain Garcia is skeptical.}

                *   {looks} ["Monkeys?" says Mia.]
                    -> monkeys_improbable

            -   -> opts

== monkeys_improbable ==
    -   CHR_MIA_SUR
    -   "Monkeys?" says Mia, surprised. "But they don't inhabit this area south of the Atlas range."

            -   (opts)

                *   [Alexis shoots Mia a look.]
                    --  CHR_ALX_REL
                    --  CHR_MIA_REL
                    Alexis shoots Mia a look. "I assume you're just trying to show your knowledge but, c'mon, you know Troy." Mia opens her mouth to explain but decides to let it go. -> turns

                *   (turns) [Alexis turns to Captain Garcia.] {Alexis turns to Captain Garcia. "Troy isn't one to make things up," she says.|"And as for monkeys, hasn't anyone ever heard of 'adaptation'?"}

                *   {turns} [Captain Garcia holds up his hands.]
                        -> post_trauma

            -   -> opts

        = post_trauma
        -   CHR_MPO_REL
        -   CHR_MIA_REL
        -   "Look, I'm not ruling out the possibility of monkeys on Kalkomey Isle," he says. "But after a traumatic event, it's quite normal for people to, er... become confused."

            "What else did Julian and Troy say?" asks Mia. "Did—"

                * [Captain Garcia cuts her off.]
                    -> my_turn_questions

== my_turn_questions ==
    -   CHR_MPO_REL
    -   "How about I get to take a turn at asking the questions?" asks Captain Garcia—in his police voice. Both girls nod. "Let's start by you telling me what you were doing out there at Kalkomey Isle."

            *   [The girls tell their story.]
                -> girls_recap_to_captain


=== girls_recap_to_captain ===
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Mia and Alexis tell the Captain everything about their two visits to Kalkomey Isle. Captain Garcia listens intently, occasionally muttering "hmmm" or "interesting" and taking notes on a small notepad.

            *   ["And that's everything," says Alexis.]
                -> end_story

        = end_story
        -   CHR_ALX_REL
        -   CHR_MPO_REL
        -   "And that's everything," says Alexis, concluding the recap of events.

        Captain Garcia stops writing and looks at the girls.


        -   (opts)

            *   [He flips through his notes.]
                --  CHR_MPO_REL
                He flips though his notes. "Flying drones disguised as mutant creatures, disappearing boats...?" The girls exchange worried glances, fearing that Captain Garcia doesn't believe them. "It's not that I don't believe you, it's just that..." he trails off. -> dark

            *   (dark) [His face grows dark.] {Captain Garcia's face grows dark. "You know Kalkomey Isle is private property?" he says. "You could be fined—or worse—for trespassing."| Captain Garcia is about to say more, but he changes his mind.}

            *   {dark} [ "Private property?!" ]
                -> private_property

        -   -> opts

        = private_property
        -    CHR_AXL_SUR
        -    CHR_MPO_REL
        - "Private property?" says Alexis, surprised. "We didn't know!"

        "I can understand that, as it's not marked on the charts," says the Captain. "Setting foot on {no_go_island: "And from what you say, the two of you never did set foot on the island itself.} "Though private property it is. And that means I need to get a warrant to follow up on what you {hypo_severity < 3: and the two young men} have told me."


        
        {
        
            - no_go_island: The girls are both glad they didn't explore the beach.
            
            
            - else: The girls wonder if this means they are in trouble for exploring the island. 
        
        
        }
        
        
            *   ["And since it's private property..."]
                -> since_private
            
        
        = since_private
        -   CHR_MPO_REL
        -   "And since it's private property, that means I need to get a warrant to follow up on what you {hypo_severity < 3: and the two young men} have told me."
        
        -   (opts2)

            *   [Captain Garcia looks at his notes.]
                --  CHR_MPO_REL
                Captain Garcia looks at his notes. "Realistically, you've given us the best leads we've had so far, and for that I thank you, but..." he says then pauses. -> looks

            *   (looks) [Captain Garcia's goes serious.] {Captain Garcia makes a serious expression and looks at each girl in turn. "I need you both to promise me you won't go out to Kalkomey Isle—neither on it nor around it—again," he says, his eyes heavy and serious.|"It's just too dangerous out there with or without thieves. Let the police take it from here."}

            *   {looks} ["Yes, sir!"]
                -> yes_sir

        -   -> opts2

    = yes_sir
    -   CHR_MIA_REL
    -   CHR_ALX_REL
    -   "Yes, sir," they both say. Alexis adds, "Not a problem, Captain. I'll stick to water-skiing... in <i>warm</i> water." Captain Garcia smiles.

                * ["I have one more question," he says.]
                    -> suspect_anyone_dock

=== suspect_anyone_dock ===
    -   CHR_MPO_REL
    -   "I know you're anxious to go visit your friends in the hospital," Captain Garcia says. "But I have one more question for you: is there anyone that maybe you suspect of being involved in the robberies?"

        {
            - suspect_whom == NOBODY:
            * [Both girls shake their heads.]
                -> no_suspicion

            - else:
                -> yes_suspicion

        }



    = no_suspicion
    -   CHR_MPO_REL
    -   CHR_ALX_REL
    -   "No, sir, we sure don't," says Alexis.
        "Understood," says Captain Garcia, "it's in our hands now. You did the right thing by coming in, but remember what I said: no more visits to Kalkomey Isle."

            * [They agree and depart.]
                -> conclude_day_two


    = yes_suspicion
    -   CHR_MPO_REL
    -   CHR_ALX_RE
        -   (opts2)

            *   [Alexis hesitates.]
             Alexis hesitates. "OK, 'suspicion' is probably a bit much," she says.  -> hesitates

            *   (hesitates) [Alexis looks to Mia for support.] {Alexis looks at Mia for support. "We discussed this on the way in, and well... it's more like, just, I dunno, a feeling or something."|"We can't really explain it... we don't have anything concrete."}

            *   {hesitates} ["A hunch," says the Captain.]
                    -> hunch

        -   -> opts2

    = hunch
    -   CHR_MPO_REL
    -   "A hunch is what we call it," says the Captain, "and sometimes a hunch can be as much value as months of rational analysis, so you needn't feel embarrassed or guilty by having one."

            * ["Well, since you put it that way," says Alexis.]
                -> hunch_is


    =  hunch_is
    -   CHR_ALX_REL
    "Well, since you put it that way," says Alexis. She shares a quick glance with Mia before continuing. "Our hunch—and it's just a hunch—is that {suspect_whom} is somehow involved."

            {
                - suspect_whom == rescuer:
                    * [Captain Garcia is taken aback.]
                        -> suspect_rescuer_match

                - else:
                    -> no_suspect_rescuer_match


            }


    = suspect_rescuer_match
    -   CHR_MPO_REL
    -   Captain Garcia is taken aback. "Wait, you suspect {suspect_whom}, the same man who rescued your friends? Are you sure?"

        -   (opts2)

            *   ["No, we're not sure," says Mia.]
                Mia speaks up. "No we're not sure, not sure at all. It's just a hunch, remember?" she says.-> blush

            *    (blush) [Alexis blushes at the Captain's push-back.] {Alexis blushes as the Captain's push back and doesn't say anything.| "I'll admit the rescue does complicate things."}

            *   {blush} ["Got it," says the Captain.]
                -> captain_departs

        -   -> opts2


    = no_suspect_rescuer_match

                {

                    - suspect_whom == CLETUS:
                    "Cletus Bluin, the dockhand?" says Captain Garcia.

                    - suspect_whom == MAURA_AND_IAN:
                    "Maura Gallagher and Ian Murphey, the young couple from Oceanside?" says Captain Garcia.

                    - suspect_whom == MAC:
                    "Mac...? Oh, Mr. MacKensie, the islander?" says Captain Garcia with a doubtful look. "Really?"

                }

            * [Alexis nods.]
                -> alexis_confirms

        = alexis_confirms
        -   CHR_ALX_REL
        -   CHR_MIA_REL
        -   Alexis nods and looks to Mia expectantly.

            "Of course," says Mia chiming in to support Alexis. "That's just a hunch about {suspect_whom}, like you said, Captain."

            -   (opts)

                *   [The Captain nods.]
                --    CHR_MPO_REL
                The Captain nods and says, "I understand, completely, it's just a hunch, but I'll be sure to pay a visit to {suspect_whom}." -> arms

                *   (arms) [The Captain pockets his notebook.] {The Captain pockets his notebook. "You all have been very helpful, but we'll take it from here."|"When you've eliminated the impossible, whatever remains, however improbable, must be the truth."}

                *   {arms} [The Captain thanks them.]
                        -> captain_thanks

            -   -> opts

        = captain_thanks
        -   SYS_ACHIEVE_7_4
        -   CHR_MPO_REL
        -   The Captain thanks them and again warns them. "Remember what I said: no more visits to Kalkomey Isle."

            * [Mia and Alexis agree.]
                -> captain_departs

=== captain_departs ===
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   After the Captain departs, Mia and Alexis begin a maintenance check on the boat.

            * [Review the <i>Vessel Maintenance</i> material.]
             // study guide inserts
             -- SYS_PDF_42
                -> check_is_good





    = check_is_good
    -   "Everything looks good," says Alexis. "So we're done."


        -   (opts)

            *   ["Now all we can do is wait," says Mia.]
                {
                    - hypo_severity == 3:
                    "So true," says Alexis. "I still can't believe that neither Julian nor Troy can remember anything." -> ugh

                    - else:
                   "So true," says Alexis. "We still don't know what Julian and Troy told Captain Garcia." -> ugh
                }

            *   (ugh) ["Ugh," says Mia.] {Mia groans. "Ugh, I completely forgot to show Captain Garcia the photos... but I can email them."| "Like you said, all we can do now is wait and see."}

            *   {ugh} ["Easy enough," says Alexis.]
                    -> several_days_later

        -   -> opts

    = several_days_later
    -   CHR_ALX_REL
    -   "Easy enough," says Alexis, and the two girls hasten the pace and secure the boat for the night.

            * [Several days later...]
            -> on_dock_day_03



/* for debug only
=== temp_set_path_followed ===
    - DEBUG: Set the path followed.

        * [Followed kayaks]

            DEBUG: What did Julian and Troy see?

                * Vine Curtain and stream

                * Everything (curtain, stream, cave, Willard)

        * [ Followed boats ]

            DEBUG: What did they Mia and Alexis see?

                * Cletus in fog
                    ~ who_saw = CLETUS
                    ~ where_saw = FOG
                    -> temp_who_rescued

                * Mac in fog
                    ~ who_saw = MAC
                    ~ where_saw = FOG
                    -> temp_who_rescued

                * Ian in Fog
                    ~ who_saw = IAN
                    ~ where_saw = FOG
                    -> temp_who_rescued

                * Cletus on beach
                    ~ who_saw = CLETUS
                    ~ where_saw = BEACH
                    -> temp_who_rescued

                * Mac on beach
                    ~ who_saw = CLETUS
                    ~ where_saw = BEACH
                    -> temp_who_rescued

                * Maura on beach
                    ~ who_saw = CLETUS
                    ~ where_saw = BEACH
                    -> temp_who_rescued

                * Cletus in distance
                    ~ who_saw = CLETUS
                    ~ where_saw = DISTANCE
                    -> temp_who_rescued

                * Mac in distance
                    ~ who_saw = CLETUS
                    ~ where_saw = DISTANCE
                    -> temp_who_rescued

                * Ian in distance
                    ~ who_saw = CLETUS
                    ~ where_saw = DISTANCE
                    -> temp_who_rescued

                * Nothing
                    ~ who_saw = NOBODY
                    ~ where_saw = NOWHERE
                    -> temp_who_rescued




=== temp_who_rescued ====
    DEBUG: who rescued?

        * Cletus rescued
            ~ rescuer = CLETUS
            -> temp_var_set_hypothermia_tree

        * Mac rescued
            ~ rescuer = MAC
            -> temp_var_set_hypothermia_tree

        * Ian rescued
            ~ rescuer = IAN
            -> temp_var_set_hypothermia_tree





=== temp_var_set_hypothermia_tree ===
    DEBUG: Let's set the conditions.

        * Hypo condition 0 []
        ~ kayak_status = 1
        ~ flare_early = 1

        -> hypothermia_condition_decision_tree

        * Hypo condition 1 []
        ~ kayak_status = 1
        ~ flare_early = 0

        -> hypothermia_condition_decision_tree

        * Hypo condition 2 []
        ~ kayak_status = 0
        ~ flare_early = 1

        -> hypothermia_condition_decision_tree

        * Hypo condition 3 []
        ~ kayak_status = 0
        ~ flare_early = 0

        -> hypothermia_condition_decision_tree

*/


=== set_kayak_conditions_for_no_follow ===
// tunnel
    /*  setting the conditions for degree of hypothermia Julian and Troy experience if the player followed Mia and Alexis on the boat, as they won't know what happened and we need to know hypothermia severity to resolve the mystery.

        will need to advise Mia and Alexis of the severity. the police can do this at the dock along with a guess of what happened in the case where the boys' memory has been effected. can also have boys tell in the case where there is memory.
    */



    {
        - search_more_wait_call:
        ~ hypo_severity = 3


        - else:

        {shuffle:

        -   ~ hypo_severity = 0




        -   ~ hypo_severity = 1


            {shuffle:

                -
                ~ who_lost_memory = TROY
                ~ what_remember = STREAM

                -
                ~ who_lost_memory = JULIAN
                ~ what_remember = CAVE


            }



        -   ~ hypo_severity = 2

           {shuffle:

                -
                ~ who_lost_memory = TROY
                ~ what_remember = STREAM

                -
                ~ who_lost_memory = JULIAN
                ~ what_remember = CAVE


            }



        -   ~ hypo_severity = 3


        }
    }


    ->->



=== hypothermia_condition_decision_tree ===
// tunnel
// this knot is for the condition where the player followed the kayaks

    // NOTE: if we traveled with the girls, the game will not have set any kayak or flare conditions for the guys. do we need random? maybe we set the conditions with random and the hold them for a report from the police.

    {
        - kayak_status > 0 && flare_early > 0:
            ~ hypo_severity = 0


        - kayak_status > 0 && flare_early < 1:
            ~ hypo_severity = 1

            {shuffle:

                -
                ~ who_lost_memory = TROY
                ~ what_remember = STREAM

                -
                ~ who_lost_memory = JULIAN
                ~ what_remember = CAVE


            }


        - kayak_status < 1 && flare_early > 0:
            ~ hypo_severity = 2

            {shuffle:

                -
                ~ who_lost_memory = TROY
                ~ what_remember = STREAM

                -
                ~ who_lost_memory = JULIAN
                ~ what_remember = CAVE


            }


        - kayak_status < 1 && flare_early < 1:
            ~ hypo_severity = 3


        - else:
        DEBUG: This else condition should never occur.

    }

   ->->




// this below is no longer used? 1/14/2017

== hypo_00 ==

    ~ hypo_severity = 0

        /* DEBUG:
            kept a kayak
            got flare off early
            hypo condition is {hypo_severity}
        */


        ->->

== hypo_01 ==

    ~ hypo_severity = 1

        /* DEBUG:
            kept a kayak
            did not flare early
            hypo condition is {hypo_severity}
        */


        // we need to randomize for who remembered what

        {shuffle:

            -
            ~ who_lost_memory = TROY
            ~ what_remember = STREAM

            -
            ~ who_lost_memory = JULIAN
            ~ what_remember = CAVE

        }

        //Who lost memory is {who_lost_memory}




        ->->

== hypo_02 ==
    ~ hypo_severity = 2

        /*DEBUG:
            lost kayaks
            got flare off early
            hypo condition is {hypo_severity}
        */

         // we need to randomize for who remembered what

        {shuffle:

            -
            ~ who_lost_memory = TROY
            ~ who_has_memory = JULIAN
            ~ what_remember = STREAM

            -
            ~ who_lost_memory = JULIAN
            ~ who_has_memory = TROY
            ~ what_remember = CAVE

        }

        //Who lost memory is {who_lost_memory}

        ->->

== hypo_03 ==
    -    temp
    ~ hypo_severity = 3
    DEBUG:
            lost kayaks
            did not get flare off early
            hypo condition is {hypo_severity}
        -> DONE
