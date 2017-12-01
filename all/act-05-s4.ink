// a5s4
// put dock encounter with police here

            
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

Q: SHOULD there be a happy path option, i.e, recover kayaks in cove for following boat path? For now, the answer is NO.



    */
    

=== report_to_police ===
    -   After securing the Lakesong for the day, the four friends go directly to the marine police station located at the marina.
    
            * [Captain Garcia welcomes them.]
                -> police_welcome
            
    
    = police_welcome
    -   After brief reintroductions and an exchange of pleasantries, they tell the Captain everything about their two visits to Kalkomey Isle. Captain Garcia listens intently occasionally muttering a "hmmm" or an "interesting" while taking notes on a small notepad. 
    
        *   "And that's everything," says Troy[.], concluding the recap of events.
    
        Captain Garcia stops writing and puts down his pen. 
          
            
        -   (opts)
            
            *   [He leans back in his chair.] 
                He leans back in his chair. "Flying drones disguised as mutant creatures, disappearing boats..." The friends exchanged worried glances, fearing that Captain Garcia doesn't believe them. "It's not that I don't believe you... it's just that," he trails off. -> dark
            
            *   (dark) [His face grows dark.] {Captain Garcia's face grows dark. "You know Kalkomey Isle is private property?" he says. "You could be fined—or worse—for trespassing."| Captain Garcia is about to say more, but he changes his mind.}
            
            *   {dark} [ "Private property?!" ]
                -> private_property
        
        -   -> opts
    
    
    = private_property
    - "Private property?" says a surprised Troy speaking for the group. "We didn't know!"
    
        "I can understand that, as it's not marked as such on the charts," says the Captain. {no_go_island: "And from what you say, you never did set foot on the island itself.} "Though private property it is."
        
        -   (opts2)
        
            *   [Captain Garcia looks at his notes.]
                Captain Garcia looks at his notes. "Realistically, you've given us the best leads we've had so far, and for that I thank you, but..." -> looks
            
            *   (looks) [Captain Garcia looks at each friend in turn.] {Captain Garcia looks at each friend in turn. "I need you all to promise me you won't go out to Kalkomey Isle—neither on it nor around it—again," he says, his eyes heavy and serious.|"It's just too dangerous out there with or without thieves. Let the police take it from here."}
        
            *   {looks} ["Yes, sir!"]
                -> yes_sir
            
        -   -> opts2
            
    = yes_sir
    -   "Yes, sir," they all say in unison while Alexis adds, "Not a problem, Captain. I'll stick to water skiing." Captain Garcia smiles and stands, giving the signal that it's time for the friends to go.
    
                * ["Just one more thing," he says.]
                    -> suspect_anyone_office
                
=== suspect_anyone_office ===
    -   "Just one more thing before you go," Captain Garcia says. "Is there anyone that maybe you suspect of being involved in the robberies?"
    
        {
            - suspect_whom == NOBODY:
            * [Troy shakes his head.]
                -> no_suspicion
        
            - else:
                -> yes_suspicion
        
        }
        
        
        
    = no_suspicion
    -   "No, sir, we sure don't," says Troy, shaking his head. 
        "Understood," says Captain Garcia, "it's in our hands now. You did the right thing by coming in, but remember what I asked—No more visits to Kalkomey Isle."
        
            * [They agree and depart.]
                -> conclude_day_two
        
        
    = yes_suspicion    
        
        -   (opts)
        
            *   [Troy raises his eyebrows while Julian shrugs.]
                Captain Garcia watches as Troy's faces show indecision and Julian gives an ambivalent shrug. -> away
            
            *   (away) [Alexis glances at Mia who nods.] {Alexis glances at Mia who returns a quick nod.| Captain Garcia's eyes narrow on Alexis.}
            
            *   {away} ["Ms. Baker?" the Captain addresses Alexis.]
                -> ms_baker
                
        -   -> opts
    
    = ms_baker
    "Do you have a suspicion, Ms. Baker?" Captain Garcia arches an eyebrow, as everyone turns their attention to Alexis.
    
        -   (opts2)
    
            *   [Alexis hesitates.]
             Alexis hesitates. "OK, 'suspicion' is probably a bit much," she says.  -> hesitates 
            
            *   (hesitates) [Alexis looks to her friends for support.] {Alexis looks to her friends for support.  "Well, we discussed this on the way in and well...It's more like just, I dunno, a feeling or something."|"I can't really explain it... we don't have anything concrete."} 
            
            *   {hesitates} ["A hunch," says the Captain.]
                    -> hunch
            
        -   -> opts2
            
    = hunch    
    -   "A hunch is what we call it," says the Captain, "And sometimes a hunch can be as much value as months of rational analysis, so you needn't feel embarrassed by having one, Ms. Baker nor the rest of you."
    
        -   (opts3)
            
            *    [Captain Garcia looks at the others.]
                Captain Garcia looks at Troy, Julian, and Mia in turn. "But I can understand your reluctance to get involved any more than you already are." -> notebook
                
            *    (notebook) [Captain Garcia glances at his notebook.] {Captain Garcia glances at the notebook on his desk. "You've already involved yourselves plenty... more than most."|"Of course, since you're already involved..." The Captain smiles reassuringly.} 
            
            *   {notebook} [Alexis agrees.]
                -> hunch_decision
            
        -   -> opts3    
            
== hunch_decision ==
        -   Alexis agrees with the Captain. "OK, since you put it that way," she says. "Our hunch—and it's just a hunch—is that {suspect_whom} is somehow involved."
                
                {
                
                    - suspect_whom == CLETUS:
                    "Cletus Bluin, the dockhand?" says Captain Garcia.
                    
                    - suspect_whom == MAURA_AND_IAN:
                    "Maura Gallagher Ian Murphey, the young couple from Oceanside?" says Captain Garcia.
                    
                    - suspect_whom == MAC:
                    "Mac?... Oh, Mr. MacKensie, the islander?" says Captain Garcia with a doubtful look. "Really?"
                
                }
            
            * [Alexis nods.]
                -> alexis_confirms
            
        = alexis_confirms
        -   Alexis nods and looks to her friends with an expectant face.
            
            "Of course," says Troy chiming in to support Alexis. "That's just a hunch on {suspect_whom}, like you said, Captain."
            
            -   (opts)
                
                *   [The Captain nods.]
                The Captain nods and says, "I understand, completely, it's just a hunch, but I'll be sure to pay a visit to {suspect_whom}." -> arms
                
                *   (arms) [The Captain crosses his arms.] {The Captain crosses his arms, "You all have been very helpful, but we'll take it from here."|"When you've eliminated the impossible, whatever remains, however improbable, must be the truth."}
            
                *   {arms} [The Captain thanks them.]
                        -> captain_thanks
                
            -   -> opts
            
        = captain_thanks
        -   The Captain thanks them and again warns them. "Remember what I said—no more visits to Kalkomey Isle."
        
            * [The friends agree and depart.]
                -> conclude_day_two


=== conclude_day_two ===
    -   Walking along the dock in the setting sun, the four make plans for their next boating outing—an outing that won't include Kalkomey Isle.
    
        "Now all we can do it wait," says Troy. "We'll find out soon enough if what we told Captain Garcia proves helpful in finding the thieves."
        
            * ["And the reward!" says Julian.]
                -> and_reward
            
        = and_reward
        -   "And the reward, too," says Troy in response to Julian's comment. "And speaking of rewards... It's two for one night at Spinozzi's, my treat." The friends signal their approval of Troy's dinner suggestion with a combination of hoots, fist bumps, high fives. 
        
            * [Several days later...]
                -> solve_mystery_matrix
            


=== met_by_police ==
 // set the hypothermia severity conditions and return
 - DEBUG met by police
    -> set_kayak_conditions_for_no_follow ->
    
    - DEBUG: hypothermia severity is {hypo_severity}
   
        * [ DEBUG: MAC IS RESCUE]
            ~ rescuer = MAC 
        * [ DEBUG: CLETUS IS RESCUE]
            ~ rescuer = CLETUS 
        * [ DEBUG: IAN IS RESCUE]
            ~ rescuer = IAN 
    
    
   
    
    - Shortly after securing the boat, they see Captain Garcia of the Marine Patrol walking purposefully toward them.
    
        "Ms. Chen, Ms. Baker," Captain Garcia greets them.
        
            * ["How are they?!"]
                -> police_recap
            
== police_recap ==       
    -   "How are they?!" Alexis and Mia ask excitedly and at the same time.
        
        "Both Mr. Del Castillo and Mr. Kelton are are going to be fine," says the Captain.
        
            * [The news is comforting.]
                -> relieved
        
        = relieved 
        "They're in the hospital recovering, and that's where they'll remain overnight{hypo_severity > 0:, at least}," says Captain Garcia. "They were extremely lucky <>
        
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
        -   "Mr. Bluin?" Mia asks, unsure who that is.
        
            "First name's Cletus," says Captain Garcia. "You'd probably recognize him as his job as a dockhand puts him all around the marina."
            
                 {
            - rescuer == suspect_whom:
            * [Mia and Alexis exchange questioning glances] upon hearing that the rescuer was {rescuer}, whom they had cast suspicion upon. 
                -> recover_condition
            
            - else:
            * [Mia and Alexis are relieved.]
                -> recover_condition
            }
            
        
        = ian_recover
        -   "Mr. Murphey," asks Mia, "Ian Murphey?" She thinks that is what Ian said his last name was.
        
            "That's him," says Captain Garcia. "From Oceanside... right, you helped him and his friend, the young lady, out yesterday."
            
             {
            - rescuer == suspect_whom:
            * [Mia and Alexis exchange questioning glances] upon hearing that the rescuer was {rescuer}, whom they had cast suspicion upon. 
                -> recover_condition
            
            - else:
            * [Mia and Alexis are relieved.]
                -> recover_condition
            }
            
     
        
        = mac_recover
        -   "Mr. MacKensie?" Mia asks. "Oh, is that Mac?"
        
            "Yes, everyone calls him Mac," says the Captain. "He's an islander, real nice fellow."
            
             {
            - rescuer == suspect_whom:
            * [Mia and Alexis exchange questioning glances] upon hearing that the rescuer was {rescuer}, whom they had cast suspicion upon. 
                -> recover_condition
            
            - else:
            * [Mia and Alexis are relieved.]
                -> recover_condition
            }
            
            
            
      
        


== recover_condition ==
    -   The color returns to Mia's face and Alexis lets out a big sigh. They are both relieved to hear that Julian and Troy are OK{rescuer == suspect_whom:, though both are somewhat taken aback that the rescuer is {rescuer} after having been suspicious of him}.
    
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
        -  {rescuer} reports that he just stumbled upon them—there was no emergency signal—nor was there any sign of kayaks," says the Captain. "He found them huddling together to conserve body heat—which was a very smart move by your friends—probably saved their lives. But without a kayak to help get their bodies out of the cold water, they suffered maximum exposure. And that most likely accounts for their memory loss".
        
                * ["Memory loss?"]
                -> memory_loss
        
        = hypo_02_report
        -   "{rescuer} found them after seeing a flare, but there was no sign of the kayaks," says the Captain. "He found them huddling together to conserve body heat—which was very smart, probably saved their lives—without a kayak to help get their bodies out of the cold water, they suffered greater exposure. That probably accounts for their memory loss."
        
                * ["Memory loss?"]
                -> memory_loss
        
        = hypo_01_report
        -   "{rescuer} reports he just stumbled upon them—there was no emergency signal—but they did have one kayak still, so there were able to get much of their bodies out of the water—that quite possibly saved their lives," says the Captain. "As it is, they are both suffering from memory loss related to the trauma."  
        
                * ["Memory loss?"]
                -> memory_loss
         
        
        = hypo_00_report
        -   "{rescuer} found them after seeing a flare, which was fortunate," says the Captain. "Also when he found them they still had a kayak, so they were both able to get much of their bodies out the water. That quite possibly saved their lives. They should be released from the hospital tomorrow and be fine."
        
                *   ["How did they end up in the water?" asks Alexis.]
                    -> how_capsize
        
            -> DONE
        
        

== memory_loss ==
    -   "Memory loss?" says Alexis wide-eyed.
    
        "Affirmitive," says the Captain. <>
        
            {
            
                - hypo_severity ==3:
                "Neither Mr. Del Castillo nor Mr. Kelton have any memory of what happened after setting off in the kayaks and waking up in the hospital. 
                
                - else:
                 {
                    - who_lost_memory == TROY:
                    Mr. Kelton, Troy, has no memory of anything at all and Julian—Mr. Del Castillo—has some memory but not of capsizing.
                    
                    -   who_lost_memory == JULIAN:
                    Mr. Del Castillo, Julian, has no memory of anything at all and Troy—Mr. Kelton—has some memory but not of capsizing.
                    
                }
            
            }
        

            *   [Mia and Alexis are stunned.]
                -> stunned
        
        = stunned
        -   Mia and Alexis are stunned by the news and the immediately begin to talk over each other with follow up questions to the Captain about Julian and Troy's condition.
        
                * [Captain Garcia holds up his hands.]
                    -> my_turn_questions
    
    
    -> DONE


== how_capsize ==
        -   "I mean what happened to the kayaks?" Alexis is puzzled.  
        
        
            -   (opts)
                
                *   [Captain Garcia cocks his head sideways.]
                Captain Garcia cocks his head sideways, "Your two friends had quite a story to tell..." -> looks
                
                *   (looks) [Captain Garcia looks a bit embarrassed.] {Captain Garcia looks a bit embarrassed. "They claim the drain plugs on their kayaks were pulled by, um... by monkeys," he says.|Clearly Captain Garcia is skeptical.}
                
                *   {looks} ["Monkeys?" says Mia.] 
                    -> monkeys_improbable
            
            -   -> opts
        
== monkeys_improbable ==
    -   "Monkeys?" says Mia surprised. "But they don't inhabit this area south of the Atlas range."
    
            -   (opts)
        
                *   [Alexis shoots Mia a look.]
                    Alexis shoots Mia a look. "I assume you're just trying to show your knowledge but, c'mon, you know, Troy." Mia opens her mouth to explain but decides to let it go. -> turns 
                
                *   (turns) [Alexis turns to Captain Garcia.] {Alexis turns to Captain Garcia. "Troy isn't one to make things up," she says.|"And as for monkeys, hasn't anyone ever heard of 'adaptation'?"} 
                
                *   {turns} [Captain Garcia holds up his hands.]
                        -> post_trauma
                        
            -   -> opts
                
        = post_trauma        
        -   "Look, I'm not ruling out the possibility of monkeys on Kalkomey Isle," he says,  "but you should also know that after a traumatic event it's quite normal for people to, er... become confused."
        
            "What else did Julian and Troy say?" asks Mia. "Did—"
            
                * [Captain Garcia cuts her off.]
                    -> my_turn_questions
                
== my_turn_questions ==
    -   "How about I get to take a turn at asking the questions," says Captain Garcia in his 'police voice'. Both girls nod. "Let's start by you telling me what you were doing out there at Kalkomey Isle."
    
            *   [The girls tell their story.]
                -> girls_recap_to_captain
    

=== girls_recap_to_captain ===       
    -   Mia and Alexis tell the Captain everything about their two visits to Kalkomey Isle. Captain Garcia listens intently occasionally muttering a "hmmm" or an "interesting" while taking notes on a small notepad. 
    
            *   ["And that's everything," says Alexis.]
                -> end_story
    
        = end_story
        -   "And that's everything," says Alexis, concluding the recap of events.
        
        Captain Garcia stops writing and looks at the girls. 
          
            
        -   (opts)
            
            *   [He flips through his notes.] 
                He flips though his notes. "Flying drones disguised as mutant creatures, disappearing boats..." The friends exchanged worried glances, fearing that Captain Garcia doesn't believe them. "It's not that I don't believe you... it's just that," he trails off. -> dark
            
            *   (dark) [His face grows dark.] {Captain Garcia's face grows dark. "You know Kalkomey Isle is private property?" he says. "You could be fined—or worse—for trespassing."| Captain Garcia is about to say more, but he changes his mind.}
            
            *   {dark} [ "Private property?!" ]
                -> private_property
        
        -   -> opts            
                    
       = private_property
        - "Private property?" says Alexis surprised. "We didn't know!"
    
        "I can understand that, as it's not marked as such on the charts," says the Captain. {no_go_island: "And from what you say, the two of you never did set foot on the island itself.} "Though private property it is. And that means I need to get a warrant to follow up what you {hypo_severity < 3: and the two young men} have told me." 
        
        
        -   (opts2)
        
            *   [Captain Garcia looks at his notes.]
                Captain Garcia looks at his notes. "Realistically, you've given us the best leads we've had so far, and for that I thank you, but..." -> looks
            
            *   (looks) [Captain Garcia's goes serious.] {Captain Garcia makes a serious expression and looks at each girl in turn. "I need you both to promise me you won't go out to Kalkomey Isle—neither on it nor around it—again," he says, his eyes heavy and serious.|"It's just too dangerous out there with or without thieves. Let the police take it from here."}
        
            *   {looks} ["Yes, sir!"]
                -> yes_sir
            
        -   -> opts2
            
    = yes_sir
    -   "Yes, sir," they both say in unison while Alexis adds, "Not a problem, Captain. I'll stick to water skiing... in <i>warm</i> water." Captain Garcia smiles.
    
                * ["I have one more question," he says.]
                    -> suspect_anyone_dock

=== suspect_anyone_dock ===
    -   "I know you're anxious to go visit your friends in the hospital," Captain Garcia says. "But I have one more question for you—Is there anyone that maybe you suspect of being involved in the robberies?"
    
        {
            - suspect_whom == NOBODY:
            * [Both girls shake their heads.]
                -> no_suspicion
        
            - else:
                -> yes_suspicion
        
        }
        
        
        
    = no_suspicion
    -   "No, sir, we sure don't," says Alexis.
        "Understood," says Captain Garcia, "it's in our hands now. You did the right thing by coming in, but remember what I asked—No more visits to Kalkomey Isle."
        
            * [They agree and depart.]
                -> conclude_day_two
        
        
    = yes_suspicion    
    
        -   (opts2)
    
            *   [Alexis hesitates.]
             Alexis hesitates. "OK, 'suspicion' is probably a bit much," she says.  -> hesitates 
            
            *   (hesitates) [Alexis looks to Mia for support.] {Alexis looks at Mia for support. "Well, we discussed this on the way in and well...It's more like just, I dunno, a feeling or something."|"We can't really explain it... we don't have anything concrete."} 
            
            *   {hesitates} ["A hunch," says the Captain.]
                    -> hunch
            
        -   -> opts2
            
    = hunch    
    -   "A hunch is what we call it," says the Captain, "And sometimes a hunch can be as much value as months of rational analysis, so you needn't feel embarrassed or guilty by having one, either of you."           

            * ["Well, since you put it that way," says Alexis.] 
                -> hunch_is
    
    
    =  hunch_is
    "Well, since you put it that way..." says Alexis who shares a quick glance with Mia before continuing. "Our hunch—and it's just a hunch—is that {suspect_whom} is somehow involved."
    
            {
                - suspect_whom == rescuer:
                    * [Captain Garcia is taken aback.]
                
                - else:
                    -> no_suspect_rescuer_match
                
            
            }
    
     
    = suspect_rescuer_match
    -   Captain Garcia is taken aback. "Wait, you suspect {suspect_whom}, the same man who rescued your friends? Are you sure?"
    
        -   (opts2)
        
            *   ["No, we're not sure," says Mia.]
                Mia speaks up. "No we're not sure, not sure at all. It's just a hunch, remember?" she says.-> blush
            
            *    (blush) [Alexis blushes at the Captain's push back.] {Alexis blushes as the Captain's push back and doesn't say anything.| "I'll admit the rescue does complicate things."}
    
            *   {blush} ["Got it," says the Captain.]
    
        -   -> opts2
    
    
    = no_suspect_rescuer_match
    
                {
                
                    - suspect_whom == CLETUS:
                    "Cletus Bluin, the dockhand?" says Captain Garcia.
                    
                    - suspect_whom == MAURA_AND_IAN:
                    "Maura Gallagher Ian Murphey, the young couple from Oceanside?" says Captain Garcia.
                    
                    - suspect_whom == MAC:
                    "Mac?... Oh, Mr. MacKensie, the islander?" says Captain Garcia with a doubtful look. "Really?"
                
                }
            
            * [Alexis nods.]
                -> alexis_confirms
            
        = alexis_confirms
        -   Alexis nods and looks to Mia with an expectant face.
            
            "Of course," says Mia chiming in to support Alexis. "That's just a hunch on {suspect_whom}, like you said, Captain."
            
            -   (opts)
                
                *   [The Captain nods.]
                The Captain nods and says, "I understand, completely, it's just a hunch, but I'll be sure to pay a visit to {suspect_whom}." -> arms
                
                *   (arms) [The Captain pockets his notebook.] {The Captain pockets his notebook. "You all have been very helpful, but we'll take it from here."|"When you've eliminated the impossible, whatever remains, however improbable, must be the truth."}
            
                *   {arms} [The Captain thanks them.]
                        -> captain_thanks
                
            -   -> opts
            
        = captain_thanks
        -   The Captain thanks them and again warns them. "Remember what I said—no more visits to Kalkomey Isle."
        
            * [Mia and Alexis agree.]
                -> captain_departs
    
=== captain_departs ===
    -   After the Captain departs, Mia and Alexis double-check that the boat is secure then set off toward the hospital as twilight envelopes the town.
    
         
        
        -   (opts)
            
            *   ["Now all we can do it wait," says Alexis.]
                { 
                    - hypo_severity == 3:
                    "So true," says Mia. "I still can't believe that neither Julian nor Troy can remember anything." -> ugh
                    
                    - else:
                   "So true," says Mia. "We still don't know what Julian and Troy told Captain Garcia." -> ugh
                }
        
            *   (ugh) ["Ugh," says Mia.] {Mia groans. "Ugh, I completely forgot to show Captain Garcia the photos... but I can email them."| "Like you said, all we can do now is wait and see."}
        
            *   {ugh} ["Easy enough," says Alexis.]
                    -> several_days_later
            
        -   -> opts
        
    = several_days_later
    -   The two girls hurry off to the hospital where they find Julian and Troy a bit groggy but in good spirits{hypo_severity != 0: despite the memory loss}.
        
            * [Several days later...] 
            -> solve_mystery_matrix
    
    




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


    
=== set_kayak_conditions_for_no_follow ===
    /*  setting the conditions for degree of hypothermia Julian and Troy experience if the player followed Mia and Alexis on the boat, as they won't know what happened and we need to know hypothermia severity to resolve the mystery. 
    
        will need to advise Mia and Alexis of the severity. the police can do this at the dock along with a guess of what happened in the case where the boys' memory has been effected. can also have boys tell in the case where there is memory.
    */
    
    // NEED AN if here to account for hypo severity already set for 3 based on waiting. === search_more_wait_call
    
    
    {
        - search_more_wait_call:
        ~ hypo_severity = 3
            ->->
            
        - else:
    
        {shuffle:
    
        -   ~ hypo_severity = 0
            ->-> 
        -   ~ hypo_severity = 1
            ->->
        -   ~ hypo_severity = 2
        -   ->->
        -   ~ hypo_severity = 3
        -   ->->
    
        }
    }
    
        
-> DONE 
   



=== hypothermia_condition_decision_tree ===
// this knot is for the condition where the player followed the kayaks
    -   hypothermia decision tree
    
    // NOTE: if we traveled with the girls, the game will not have set any kayak or flare conditions for the guys. do we need random? maybe we set the conditions with random and the hold them for a report from the police. 
    
    {
        - kayak_status > 0 && flare_early > 0:
            -> hypo_00
            
        - kayak_status > 0 && flare_early < 1:
            -> hypo_01
        
        - kayak_status < 1 && flare_early > 0:
            -> hypo_02
            
        - kayak_status < 1 && flare_early < 1:
            -> hypo_03
        
        - else:
        DEBUG: This else condition should never occur.
    
    }
    
   -> DONE
    
    
== hypo_00 ==
    -    temp 
    ~ hypo_severity = 0
        DEBUG:
            kept a kayak 
            got flare off early 
            hypo condition is {hypo_severity}
        
        -> DONE
   
== hypo_01 ==
    -    temp 
    ~ hypo_severity = 1
        DEBUG:
            kept a kayak 
            did not flare early
            hypo condition is {hypo_severity}
        
        // we need to randomize for who remembered what
        {shuffle:
        
            -
            ~ who_lost_memory = TROY
            ~ what_remember = STREAM
            
            - 
            ~ who_lost_memory = JULIAN
            ~ what_remember = CAVE
        
        }
        
        Who lost memory is {who_lost_memory}
        
        
        
        
        -> DONE
   
== hypo_02 ==
    -    temp 
    ~ hypo_severity = 2
        DEBUG:
            lost kayaks 
            got flare off early 
            hypo condition is {hypo_severity}
            
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
        
        Who lost memory is {who_lost_memory}
        
        -> DONE
   
== hypo_03 ==
    -    temp
    ~ hypo_severity = 3
    DEBUG:
            lost kayaks 
            did not get flare off early 
            hypo condition is {hypo_severity}
        -> DONE
   







        
