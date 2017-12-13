// put finale, wrapping mystery here


=== temp_debug_solve_matrix ===
// for debugging the final ending sequences
~ hypo_severity = 3
~ who_saw = MAC
~ where_saw = FOG
~ what_remember = UNKNOWN
~ who_has_memory = NOBODY
~ who_lost_memory = TROY
~ suspect_whom = CLETUS
~ accomplice = CLETUS
//~ on_kayaks_saw = STREAM


hypo severity is {hypo_severity}
who saw is {who_saw}
suspect is {suspect_whom}
accomplice is {accomplice}
what_remember is {what_remember}

    *   [Test]
        -> on_dock_day_03


=== on_dock_day_03 ===
    {

        -   who_has_memory == TROY:
            ~ chr="TRO"
    
        -   who_has_memory == JULIAN:
            ~ chr="JUL"
    }
    -   SYS_QUIZ_09
    -> on_dock_day_03_2
    
    
=== on_dock_day_03_2 ===
-   SYS_CHAP_16
    - Several days later, we join the friends on the <i>Lakesong</i> preparing for another day on the lake by running through their pre-departure safety checklist.
    
        * [Complete pre-departure checklist.]
        -   SYS_ACHIEVE_2_5
            -> hypo_severity_sorter
        // upon taking choice above we'll complete their trip planning achievment then pass along to sorter
        

    = hypo_severity_sorter
        {
            // hypo 3
            - hypo_severity == 3:
                -> hypo_03_chat


            - hypo_severity == 1 || hypo_severity == 2:
                -> hypo_01_02_chat


            - hypo_severity == 0:
                -> hypo_00_chat


            - hypo_severity == -1:
                -> hypo_neg01_chat


        }

        = hypo_03_chat
        -   CHR_MIA_REL
        -   "So both of you still have no memory of what happened?" asks Mia.

                * ["Nothing," says Troy.]

                    {
                        - who_saw == NOBODY && accomplice != suspect_whom:
                            -> no_leads

                        - who_saw != NOBODY && accomplice != suspect_whom:
                        // this is suspect
                            -> no_leads

                        - else:
                           -> no_leads


                    }



        = hypo_01_02_chat
        -   CHR_MIA_REL
        -   "So have either of you had any more of your memory return?" asks Mia.

                {
                    - hypo_severity == 1 && who_has_memory == JULIAN:

                        * [Yeah, a little bit...," says Julian.]
                        -> hypo_01_memory

                    - hypo_severity == 1 && who_has_memory == TROY:

                        * [Yeah, a little bit...," says Troy.]
                        -> hypo_01_memory

                    - else:

                        * [Troy looks at Julian.]
                        -> hypo_02_memory
                }

        -> DONE

        = hypo_00_chat
        -   CHR_ALX_REL
        -   "I take it we're not doing any paddleboarding today," Alexis says looking at the empty racks.

                * ["Nope," says Troy.]
                    -> hypo_00_memory

        = hypo_neg01_chat
        -   CHR_MIA_REL
        -   "It's oddly quiet around here this morning," says Mia. "No sign of Mac, Ian and Maura... not even creepy Cletus."

                * ["Yeah, says Troy."]
                    -> hypo_neg01_memory



== hypo_neg01_memory ==
    -   CHR_MIA_REL
    -   CHR_TRO_REL
    -   "Yeah, it is quiet," says Troy. "I noticed Willard's store was closed today, too."
    -   "At least there haven't been any more robberies," says Mia.

            * [Alexis's phone chimes.]
                -> text_alert

== hypo_00_memory ==
    -   CHR_TRO_SML
    -   CHR_MIA_SML
    -   "Nope," says Troy. "Nothing with paddles for now, if you know what I mean."

        "At least with paddleboards you don't have to worry about monkeys," says Mia, joking.

            * [Julian rolls his eyes.]
                -> joke_want

        = joke_want
        -   CHR_JUL_ANG
        -   CHR_MIA_REL
        -   "You can joke all you want," says Julian. "But there <i>are</i> monkeys on Kalkomey Isle. We both saw them." Troy nods.

            "Well, it supposedly was a research island, so maybe that's how the monkeys got there," she says.

                * [Alexis's phone chimes.]
                -> text_alert


== hypo_01_memory ==
    -   CHR_{chr}_REL

    -   "Yeah, a little bit," says {who_has_memory}. "This morning, in addition to remembering the {what_remember} that I told the police about, I also had a fuzzy memory of <>

                {
                    - julian_tree_looking && not monkey_watching:
                    seeing a crashed drone stuck high in a tree." {who_has_memory} checks the lights.

                        * ["Now that you mention it..."]

                    - julian_tree_looking && monkey_watching:
                    seeing a crashed drone in a tree and—I know this is going to sound crazy—seeing monkeys." {who_has_memory} checks the bilge.

                        * ["Monkeys!?]
                            -> monkeys

                    - monkey_watching:
                    seeing—I know this is going to sound crazy—seeing monkeys."

                        * ["Monkeys!?]
                            -> monkeys

                    - else:
                    paddling in fog," {who_has_memory} says while checking the ignition cutoff lanyard. "But nothing else... well, other than the memory of being cold, terribly cold."

                        * ["Yeah, I remember the cold."]
                            -> remember_cold

                }



        = monkeys
        -   CHR_MIA_SUR
        -   CHR_{chr}_REL
        -   "Monkeys!?" says Mia. "But monkeys don't live in the wild south of the Atlas Mountains."

            "I told you it sounded crazy," says {who_has_memory}.
                 * [Alexis's phone chimes.]
                -> text_alert


        = now_mention_it
        -   CHR_TRO_REL
        -   CHR_JUL_REL
        -   "Now that you mention it," {who_lost_memory} says to {who_has_memory}, "I think I remember seeing something like that, too." {who_lost_memory} is frustrated. "But it's like trying to remember a dream."

            {

                - what_remember == CAVE && who_saw == NOBODY && accomplice != suspect_whom:

                    * ["Ahoy, there!" someone hollers.]
                      -> no_warrant

                - else:

                    * [Alexis's phone chimes.]
                    -> text_alert

            }


        = remember_cold
        -   CHR_TRO_REL
        -   CHR_JUL_REL
        -   "Yeah, I remember the cold, too," says {who_lost_memory}. "I think I'll remember that for the rest of my life."

             {

                - what_remember == CAVE:

                    * ["Ahoy, there!" someone hollers.]
                      -> no_warrant

                - else:

                    * [Alexis's phone chimes.]
                    -> text_alert

            }

== hypo_02_memory ==
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   Troy looks at Julian who shakes his head.
        "Not really," says {who_has_memory}. "I still have just the fuzzy memory of the {what_remember} that I told the police about."

            * ["That's more than I've got."]
                -> more_than_i

        = more_than_i
        -   CHR_TRO_REL
        -   CHR_JUL_REL
        -   "That's more than I've got," says {who_lost_memory}. "Well, other than the memory of being cold, terribly cold." {who_lost_memory} shivers just thinking about it. "I don't think I'll ever forget that."

            {

                - what_remember == CAVE && who_saw == NOBODY && accomplice != suspect_whom:

                    * ["Ahoy, there!" someone hollers.]
                      -> no_warrant

                - else:
                    * [Alexis's phone chimes.]
                    -> text_alert

            }






== text_alert ==
    -   CHR_ALX_REL
    -   Alexis checks her phone.
    -   "It's a breaking news alert," she says. Her eyes go wide and she reads the text headline aloud...

            * ["Laketown police announce..."]




           {

                - hypo_severity == 0 && who_saw == NOBODY && suspect_whom != accomplice:
                    -> announce_capture_willard_only

                - hypo_severity == 0 && who_saw !=NOBODY && accomplice != suspect_whom:
                    -> announce_capture_willard_only

                - hypo_severity == 1 || hypo_severity == 2 && what_remember == STREAM && who_saw == NOBODY && accomplice == suspect_whom:
                     -> announce_capture_willard_only


                - else:
                    -> announce_capture_willard_plus


            }



    = announce_capture_willard_plus
    -   CHR_ALX_REL
         // willard and accomplices
        "Laketown police announce the arrest of Percey Willard<>

            {

                - accomplice == CLETUS:
                 and Cletus Bluin for Laketown boat robberies."
                -> react_announce_capture_willard_plus

                - accomplice == MAURA_AND_IAN:
                , Maura Gallagher, and Ian Murphey for Laketown boat robberies."
                -> react_announce_capture_willard_plus

                - accomplice == MAC:
                 and Owen MacKensie for Laketown boat robberies."
                -> react_announce_capture_willard_plus

            }

        -> DONE

    = announce_capture_willard_only
    -   CHR_ALX_REL
        // willard only
        "Laketown police announce the arrest of Percey Willard for Laketown boat robberies."
        -> react_announce_capture_willard_only





    = react_announce_capture_willard_plus
            {
                - on_kayaks_saw == WILLARD:
                    * The arrest of Mr. Willard comes as no surprise[.], as Troy and Julian had told the police about seeing Willard at the boat chop shop operation in the cave.
                        -> accomplice_suprise_sort

                - else:
                    * The arrest of Mr. Willard is surprising[.], as none of the friends had suspected him.
                        -> accomplice_suprise_sort
            }



        = react_announce_capture_willard_only

            {
                - on_kayaks_saw == WILLARD:
                    * The arrest of Mr. Willard comes as no surprise[.], as Troy and Julian had told the police about seeing Willard at the boat chop shop operation in the cave.
                        -> no_accomplice_suprise

                - else:
                    * The arrest of Mr. Willard is surprising[.], as none of the friends had suspected him.
                        -> no_accomplice_suprise
            }




=== willard_and_accomplice ===
// this is a full solve condition

    -   Several days later, we join the four friends preparing the <i>Lakesong</i> for departure and discussing the breaking news that the boat robbery case was solved. Mr. Willard and {accomplice} were both arrested.

        {
            - on_kayaks_saw == WILLARD:
                * The arrest of Mr. Willard comes as no surprise[.], as Troy and Julian had told the police about seeing Willard at the boat chop shop operation in the cave.
                    -> accomplice_suprise_sort

            - else:
                * The arrest of Mr. Willard is surprising[.], as none of the friends had suspected him.
                    -> accomplice_suprise_sort
        }


== accomplice_suprise_sort ==

            * The arrest of {accomplice}[.]  <>

            {

                - suspect_whom != accomplice:
                is {on_kayaks_saw != WILLARD:also} surprising{on_kayaks_saw == WILLARD:, however}, as they had suspected {suspect_whom}.

                - suspect_whom == accomplice && on_kayaks_saw == WILLARD:
                doesn't surprise them either. After all, they had been suspicious of {suspect_whom}.

                - suspect_whom == accomplice && on_kayaks_saw != WILLARD:
                doesn't suprise them, though, because they had been suspicious of {suspect_whom}.

            }

            -> ahoy_there_holler


== no_accomplice_suprise ==

        {
            - on_kayaks_saw == WILLARD:
                * That no one else was arrested is troublesome[.], as Troy and Julian had told the police about seeing someone else at the boat chop shop operation in the cave.
                    -> ahoy_there_holler


            - else:
                * They wonder if more arrests will come[.], because it seems unlikely that Mr. Willard was working alone.
                    -> ahoy_there_holler

        }



== ahoy_there_holler ==
    * ["Ahoy there!" someone yells from the dock.]

                {
                    - accomplice == MAC:
                    ~ police_finale = GARCIA
                    ~ chr = "MPO"
                        -> det_not_mac

                    - else:
                    ~ chr = "DTM"
                    A man approaches the boat. He looks familiar, and yet...

                        * ["Mac?" says Mia squinting.]
                        ~ police_finale = MAC
                        -> det_mac

                }

== det_not_mac ==
        -   CHR_ALX_SML
        -   CHR_MPO_REL
        -  "It's Captain Garcia!" says Alexis.
        -  "You heard the good news?" he asks, beaming.

            *   "We sure did!" says Troy.
                -> police_summary



== det_mac ==
        -   CHR_DTM_SML
        -   "The one and only!" says the clean-shaved and smartly dressed version of Mac standing before them.

            *  ["Allow me to <i>re</i>introduce myself," he says.]

            "I'm Detective Scott MacLeod," he says. "But you can still just call me Mac."

                {
                    - suspect_whom == MAC:

                        -> thought_detective_suspicious ->
                        -> mac_on_case

                    - else:

                       * "<i>Detective</i> Mac?" says Mia impressed.
     

                            ** ["That's right," he says. "MacKensie was my cover name."]
                            -> mac_on_case


                }

        = mac_on_case
        -   CHR_DTM_REL
        -   "I've been working undercover for nearly a year now trying to solve this case," says Detective Mac. "And thanks to your help, we did!"

            -   (opts)

                *   [Julian does a fist pump.]
                    Julian does a fist pump. "Solving the mystery, now that's what I'm talking about!" he says, imagining the boat reward. -> surprised

                *   (surprised) [Mac grins.] {Mac breaks into a grin watching each of the four process the news. | "Captain Del Castillo... yeah, I like it."}

                * {surprised} [Mac continues...]
                    -> police_summary

            -   -> opts



== police_summary ==
        -   CHR_{chr}_REL
        -   The friends are anxious to hear more. They give {police_finale} their full attention as he continues...

// summary for willard and accomplices capture

        {

            // saw willard
            -   on_kayaks_saw == WILLARD:
                *  ["We found the hidden stream and the cave."]
                    -> found_stream_saw

            // saw stream
            -  else:
                * ["We found the hidden stream that you reported."]
                    -> found_stream_remembered
        }

        = found_stream_saw
        -   CHR_{chr}_REL
        -   "We found the hidden stream and the cave, just as you described, and caught Willard red-handed with the stolen boat," says {police_finale}. "Although, we didn't find anyone else at the cave."

                * ["But we saw another person there," says Julian.]
                    -> saw_one_other

        = saw_one_other
        -   CHR_{chr}_REL
        -   "But we saw another person there," says Julian.
            "Not a face, though." Troy reminds him. "We only saw legs."

                * "Right," says {police_finale} nodding.
                    -> accomplice_resolve

        = found_stream_remembered
        -   CHR_{chr}_REL
        -   "We found the hidden stream that you reported {what_remember == STREAM:remembering, Julian,} and followed it to a cave," says {police_finale}. "There we found the most recent stolen boat and a chop shop operation."

            The friends exchange surprised looks, as {police_finale} focuses on...

            -   (opts)

                *   [The chop shop.]
                "We found the most recently stolen boat as part of a chop shop operation inside the cave," says {police_finale}. -> evidence

                *   (evidence) [The evidence.] {"There was evidence in the cave that led us to Willard."| "Based on the size of the operation, Willard wasn't running the operation solo.}

                *   {evidence} [The accomplice.]
                    -> accomplice_resolve

            -   -> opts


        -> DONE

== accomplice_resolve ==
    -   CHR_{chr}_REL
    -   "We tried to get Willard to tell us who else he was working with," says {police_finale}, pausing as a passing boat roars past. {police_finale} nods to the boat's operator.

            * [The four friends anxiously wait.]
                -> willard_no_say

        = willard_no_say
        -   CHR_{chr}_REL
        - As the sound of the boat engine fades, {police_finale} resumes his story.
        "Willard wouldn't tell us anything about who he was working with," says {police_finale}. <>

            {

            // suspect match
            -  suspect_whom == accomplice:
                "But based on your hunch about {suspect_whom}, well, one thing led to another and we found enough evidence to point to {suspect_whom} as well!" {police_finale} grins.

                    * ["That's great news!" says Troy.]

                        -> accomplice_found



            // no match but not nobody
            - suspect_whom == MAC && accomplice != MAC:
              "Obviously, I couldn't follow your hunch about me." Mac smiles. "So that leaves us empty-handed on an accomplice. Though we are confident Willard will tell us more, eventually."

                    * ["At least you got Mr. Willard," says Alexis.]
                        -> accomplice_not_found


            - suspect_whom != accomplice && suspect_whom != NOBODY:
                "We did follow your hunch about {suspect_whom}, but that came up empty." {police_finale}'s eyes brighten. "But we are hopeful that Willard will eventually tell us more."

                    * ["At least you got Mr. Willard," says Alexis.]
                        -> accomplice_not_found

            // friends had no suspicions
            - else:
                "So we have no leads there, but we believe he'll tell us soon enough." {police_finale} nods to express his confidence.

                     * ["At least you got Mr. Willard," says Alexis.]

                        -> accomplice_not_found

            }


== accomplice_not_found ==
    -   CHR_{chr}_REL
    -   "Indeed, the arrest of Willard is a milestone for the case," says {police_finale}. "Now it's up to the district attorney to convince a jury at the trial. It'll definitely help, though, if we can also arrest whomever else is involved."

            -   (opts)

                *   [Julian wonders.]
                    Julian wonders if not finding all the thieves will affect the reward. -> looks


                *   (looks) [Julian looks at his friends in expectation.] {He looks at his friends in expectation, hoping someone else will bring up the reward.| Surely capturing Willard is a big deal, he imagines.}

                *   {looks} ["And the reward?" he asks.]
                    -> ask_reward

            -   -> opts

            = ask_reward
            -   CHR_{chr}_REL
            -   CHR_JUL_REL
                "And the reward?" asks Julian after realizing nobody else was going to.

                {police_finale}'s expression suggests he'd forgotten about the reward.

                -   (opts2)

                    *   ["Of course, there is a reward," he says.]
                    "Of course, there is a reward in knowing boaters can once again enjoy the water without worrying about their boats being stolen," {police_finale} says. -> water

                    *   (water) [He looks northward out over the water.] {He looks northward out over the water and pauses before saying, "The four of you have no doubt played a role in helping us to bring Willard in," he begins... but trails off.| "Not to mention the reward in seeing justice served..." His words hang in the air.}

                    *   {water} [Julian slumps.]
                        -> slumps

                -   -> opts2

            = slumps
            -   CHR_JUL_SAD
            -   CHR_{chr}_REL
            -   Julian slumps. The way {police_finale} has worded things, make him expects bad news about the reward.

                {police_finale} lets his words hang in the air for a moment and then...

                -   (opts3)

                        *   [... he grins.]
                            "And there is the issue of your trespassing on private property," says {police_finale}. -> eyes

                        *   (eyes) [... his eyes narrow on Julian.] {His eyes narrow on Julian and Julian gulps.|"We'll need to address that for sure."}

                        *   {eyes} ["B-but," stammers Julian.]
                            -> stammers

                -   -> opts3

            = stammers
            -   CHR_JUL_SUR
            -   CHR_{chr}_REL
            -   "B-but," stammers Julian.

                "But..." says {police_finale} holding up his hand. "I've submitted the paperwork for your well-deserved reward."

                     * ["Yeessssss!" says Julian.]

                        The friends are overjoyed with the news and celebrate with a series of hoots, high fives and a couple of horn toots courtesy of Julian.

                        ** [Onward!]
                        -> the_end_partial_solved



== accomplice_found ==
    -   CHR_{chr}_REL
    -   CHR_JUL_SML
    "Great news, indeed," says {police_finale}. "Now it's up to the district attorney to make the case in court to a jury."

                * [Julian grins.]


    -   "Does this mean what I think it means?" asks Julian.

        {police_finale} nods in agreement, and speaks of...

        -   (opts)
            *   [Justice served.]
                "This means Willard and {accomplice} will face justice for their crimes," says {police_finale}, smiling.-> boaters

            *   (boaters) [Laketown boaters.] {"This means boaters can once again enjoy the water without worrying about their boats being stolen."| "And all because of your help."}

            *   {boaters} [Julian forces a smile.]
                -> speaking_of_boats

        -   -> opts

        = speaking_of_boats
        -   CHR_JUL_SML
        -   CHR_{chr}_REL
        -   Julian forces a smile, as he was hoping {police_finale} would mention the reward. "And speaking of boats," says Julian, hinting with raised eyebrows and a nodding head.

                * ["Of course!"]
                    -> reminded_me

        = reminded_me
        -   CHR_{chr}_REL
        -   CHR_JUL_REL
        -   "Of course and thanks for reminding me," says {police_finale}, turning serious. "Make sure to keep your boat well clear of Kalkomey Isle. Not only is that private property, but it's also an active crime scene now."

            *   [Julian's shoulders slump.]
                -> reward

        = reward
        -   CHR_{chr}_REL
        -   CHR_JUL_SML
        -    {police_finale} laughs, as he was having a bit of fun at Julian's expense. "And that goes for the boat you four will get as your reward as well."

                * ["Yeessssss!" says Julian.]

                The friends are overjoyed with the news and celebrate with a series of hoots, high fives and a couple of horn toots courtesy of Julian.

                    ** [Onward!]
                    -> the_end_solved



=== thought_detective_suspicious ===
    -   CHR_DTM_SAD
    -   CHR_ALX_SAD
        "Detective?" says Alexis, her face flushing with embarrassment.

        * ["That's right," he says.]
            -> detective_business

    = detective_business
    -   CHR_DTM_SML
    -   "I heard y'all thought I was suspicious," he says with a good-natured laugh. "No hard feelings. Working undercover, it's my job to get into everyone's business."

        *   [Alexis is relieved.]
            -> alx_relieved

    = alx_relieved
    -   CHR_DTM_SML
    -   CHR_ALX_SML
    -   Alexis is relieved to hear that Mac didn't take their suspicion personally, and in hindsight wonders why they didn't figure it was {accomplice} involved with Willard.

            * [Mac resumes his recap...]

        ->->

    -> DONE



=== no_leads ===
// this is a no solve situation
    -   CHR_TRO_SAD
    -   CHR_JUL_SAD
    -   "Nothing," says Troy.
    -   "Ditto," says Julian. "Well. other than the memory of being cold, terribly cold." Julian shivers thinking about it. "I don't think I'll ever forget that."

            * ["I have this feeling..." says Troy.]
                -> tro_has_feeling

    = tro_has_feeling
    -   CHR_TRO_SUR
    -   CHR_JUL_SAD
    -   "I have this feeling that we saw something out there," says Troy, "but I have no idea what. It haunts me, especially when I see the police still have no leads."

            * ["Mission not accomplished," says Julian.]
                -> all_got_was

== all_got_was ==
    -   CHR_JUL_SAD
    -   "We went in search of thieves and a reward," says Julian, "and all we got was a lousy case of extreme hypothermia."

        -   (opts)

            *   ["You still remember the creatures, though, right?" asks Mia.]
                "How can anyone forget the creatures?" asks Julian, with a snort. -> kayaks

            *   (kayaks)["And the kayaks?" asks Alexis.] {"And we both remember getting in the kayaks, but not the coming out, or anything in between."| "Or 'drones,' I mean," says Julian, making air quotes.}

            *   {kayaks} ["Ahoy, there!" someone hollers.]
                -> no_warrant

        -   -> opts


== no_warrant ==
    -   CHR_MPO_REL
    -   CHR_TRO_REL
    "It's Captain Garcia!" says Alexis.
    "What's the word, Captain?" says Troy.

        * ["Howdy, folks," says the Captain.]
            -> good_bad

    = good_bad
    -   CHR_MPO_REL
    - "Well, I've got good news and bad news," he says.

        -   (opts2)

            *    ["What's the good news?" asks Mia.]
            "The good news is we've haven't had any more robberies," says the Captain, looking hopeful. -> bad

            *   (bad) ["What's the bad news?" asks Julian.] {"The bad news is I couldn't get a warrant."| "Maybe the thieves got scared and left."}

            *   {bad} [No warrant!" says Troy]
                -> afraid_not

        -   -> opts2

    = afraid_not
    -   CHR_MPO_REL
    -   CHR_MIA_REL
    -   "I'm afraid not," says the Captain. {what_remember == CAVE: "We tried searching for the {what_remember} that Troy remembered from the air, but the forest canopy was just too thick."}

        "But what about the photos?" asks Mia. {who_saw != NOBODY: "And what about Alexis and I seeing {who_saw}?"}

        *   [Captain Garcia shakes his head.]
            -> not_enough

    = not_enough
    -   CHR_MPO_REL
    -   "Not enough in the photos, according to the judge, to justify a search on private property," he says. <>

            {

                -  who_saw == suspect_whom && suspect_whom != accomplice:
                "We've been trying to locate {who_saw}, but we've had no luck, so far." Anticipating a reaction, Captain Garcia adds, "And seeing {who_saw} <>
                    {
                        - where_saw == BEACH:
                        on a {where_saw} and later not being able to locate {who_saw} is not enough for a warrant."

                        - where_saw == FOG || where_saw == DISTANCE:
                        on a boat in the {where_saw} and later not being able to locate {who_saw} is not enough for a warrant."

                        - where_saw == BOAT:
                        on a boat and later not being able to locate {who_saw} is not enough for a warrant."

                    }

                - suspect_whom == accomplice:
                "As for your suspicion of {suspect_whom}, well, he is a person of interest at this point." Captain Garcia frowns. "We can't locate him currently."


                - suspect_whom == NOBODY:
                "And with no suspects... well, we've got nothing. "


                - else:
                "And as for your suspicion of {suspect_whom}—well, that came up empty too."

            }





        *   [The Captain looks skyward.]
        -   CHR_MPO_REL
        "I'll leave you to get on with your day," says Captain Garcia. "Looks like it's going to be a real beauty, too."

            ** [Troy starts the <i>Lakesong<i>.]
                -> start_boat

    = start_boat
    -   CHR_MPO_REL 
    -   CHR_MPO_REL
    -   Troy starts the <i>Lakesong</i>. The Captain stops along the dock and hollers back, "No plans to head north, right?"

            *   "Not a chance, Captain![] says Troy. "Not a chance."

                ** The boat slips away from the dock[.] and heads into the channel for open waters.
                -> the_end_unsolved




=== the_end_solved ===
-   SYS_ACHIEVE_7_5
    -  This concludes The Mystery of Kalkomey Isle interactive boating education course.

        * You were successful in solving the mystery[!], and you have successfully completed all of your boat education achievements, which qualifies you to take the final exam.

            ** Congratulations![]
                You'll be given the opportunity to take a Practice Exam or proceed directly the final. Good luck!

                *** [Onward!]
                    FPO: Hand off to final exam course LMS occurs here.

                -> END




=== the_end_partial_solved ===
-   SYS_ACHIEVE_7_5
    -  This concludes The Mystery of Kalkomey Isle interactive boating education course.

        * You were successful in partially solving the mystery[...], and you have successfully completed all of your boat education achievements, which qualifies you to take the final exam.

            ** Congratulations![]
                You'll be given the opportunity to take a Practice Exam or proceed directly the final. Good luck!

                *** [Onward!]
                    FPO: Hand off to final exam course LMS occurs here.

                -> END






=== the_end_unsolved ===
-   This concludes The Mystery of Kalkomey Isle interactive boating education course.

        * Although you didn't solve the mystery[...], you did successfully complete all of your boat education achievements, which qualifies you to take the final exam.

            ** Congratulations![]
        You'll be given the opportunity to take a Practice Exam or proceed directly the final. Good luck!

                *** [Onward!]
                    FPO: Hand off to final exam course LMS occurs here.

                -> END
