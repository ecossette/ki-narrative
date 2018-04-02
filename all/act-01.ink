VAR parts = 0


/*--------------------------------------------------------------------------------

	Scene 1 (Intro)

--------------------------------------------------------------------------------*/

-> intro




=== intro ===
-   SYS_CHAP_01
-   Late spring. The Laketown Docks.
    *   [- next -]

-  Troy, Alexis, Julian and Mia meet for a day of boating at the SSW edge of the Evermore Ruent Basin, a large, freshwater lake.

    *   [- next -]

-   The lake is large, covering some 22,000 square miles. Though generally placid, it has both waves and strong currents, and often suffers from sudden gusts of wind. Navigating it is a task for an experienced, safety-conscious boater.

    *   [- next -] -> Group_Intro
=== Group_Intro===
-   CHR_MIA_REL
- {!These friends' boating experience ranges from high to low. Mia is newest to boating. As the group travels down to the dock where the boat is moored,} {Mia quizzes the others on their experience.|Mia quizzes the others on their experience.|Finally Mia speaks to:|Mia, reassured, explains how she feels to the others.}
// The boating experience among our group of four friends ranges from high to low.
    *   [Troy] -> intro_troy
    *   [Alexis] -> intro_alexis
    *   [Julian] -> intro_julian
    *   [] -> intro_mia

=== intro_troy ===
    -   CHR_TRO_DEF
    -   Troy is the most experienced.
    -   "You don't need to worry. I grew up on the shores of Strar Lake. My brother Vincent and I spent as much time on the water as we could. I know what I'm doing!"
    Mia laughs at Troy's defensive tone.
        *   [- next -] -> Group_Intro

=== intro_alexis ===
    -   CHR_ALX_DEF
    -   Alexis has a moderate level of experience.
    -   "I got my boating education certificate a few years ago. I had to, so I could drive my uncle's boat when we visited his lake cabin. So I've got the certificate <i>and</i> experience."
        *   [- next -] -> Group_Intro
=== intro_julian ===
    -   CHR_JUL_ARO
    -   Julian has some boating experience.
    -   "I started the boat education course but haven't finished it. Still, I'm sure I know what I'm doing. I've been out on the water hundreds of times!"
            *   [Hmmm...] ->believe_julian_q

== believe_julian_q ==
   -   Should Mia believe Julian has been on the lake "hundreds of times"?
       *   [Yes.]
            **  You're a trusting soul![] But -> julian_exaggerate
       *   [No.]
            **  You are sharp! [] -> julian_exaggerate

== julian_exaggerate ==
    <>  Julian does tend to exaggerate, and Troy knows this. He turns to Julian and raises his eyebrows in mock skepticism.
        -> julian_ok_exaggerate

== julian_ok_exaggerate
    -   CHR_JUL_GRN
    -   "OK, OK, so I've been boating just a handful of times. But I'm a really quick learner!"
        *   [- next -] -> Group_Intro

=== intro_mia ===
    -   CHR_MIA_DEF
    -   "I've never been on a boat before," she says. "I skimmed a boating safety study guide last night, but I'm still a little worried."

    -   Does Mia have anything to be nervous about?
        *   No[.], her previous study will help, and she's with more experienced boaters. But she needs to stay alert, to communicate with her friends in case she has noticed something they have not, and to pay attention to the most experienced boater, Troy.
            -> intro_study_guide
        *   Yes[.], it would be better if she'd completed an official boating safety course before boating.
            -> intro_study_guide
        *   Maybe[.], but if she stays alert, wears a personal flotation device (PFD), and follows the guidance of her friends, Mia should be fine.
            -> intro_study_guide

=== intro_study_guide ===
    -   CHR_MIA_DEF
    *   [Onward!]<i>The Boat Ed Course Study Guide</i> is available for you to help Troy, Alexis, Julian, and Mia at any point during the adventure.

        **   [Tell me more.] To access the Study Guide, just touch the gear icon in the top right corner and then choose "Study Guide."
            *** [OK, got it.]
                    -> intro_the_lakesong
        **   [OK, got it.]
                -> intro_the_lakesong

=== intro_the_lakesong ===
    - SYS_SCENE_1
    -   SYS_CHAP_02
    -   Troy leads the way down the dock and stops in front of an impressive boat.
        *   ["Here she is!"]
            -> lakesong_look

=== lakesong_look ===
    -   CHR_TRO_SML
    -   "This is the <i>Lakesong</i>, our ticket to paradise!"
        *   [Julian is impressed.]    ->  julian_reaction


== julian_reaction ==
// unlocking achievement 1, the boat
-   SYS_ACHIEVE_1_1
    -   CHR_JUL_SML
    -   "Wow! She's a real beauty!" Julian exclaims, giving Troy a thumbs up. "And she's <i>yours</i>?"
    "I wish," responds Troy. "She's my brother's. But mine for the day."
        *   [Alexis grins.] -> alx_reacts


== alx_reacts ==
    -   CHR_ALX_SML
    -   "She's fantastic!" Alexis eyes the vessel from <b>bow to stern</b>.
        "This is one of the _____________ boats here!"
            * [longest] -> longest
            * [widest] -> widest

== longest ==
    -   CHR_ALX_REL
    -   Right! The length of a vessel is measured from the bow to the stern.
        * [Why is this important to know?] It is important to know the length of a boat because its length determines what equipment a vessel must have to comply with the law.

            ** [The group is ready to board.]
            -> want_review_pob

== want_review_pob ==
    -   CHR_CLR //character clear
    -   Before the friends board the boat, let's confirm that you understand the common terms and definitions associated with the parts of a boat.

        You have two options:

            * [Review the material.]
                -> parts_of_a_boat_review
            * [Go directly to the activity.]
                -> pob_mini



== widest ==
    -   CHR_ALX_SAD
    -   Oops, no. <i>Bow to stern</i> are the parts of a boat used to measure <b>length</b>, not a vessel's width, or beam. The beam of a ship is its width at the widest point.
        -> want_review_pob




=== parts_of_a_boat_review ===
// launch the study guide POB review, upon exit send student to segue screen where we'll confirm that review is complete and student will launch POB minigame
- SYS_PDF_01
    -> pob_post_review


=== pob_post_review ==
    -   Great! Now that you've reviewed the parts of the boat, let's see what you know.
        * [Launch activity.] -> pob_mini

=== pob_mini ===
// launch POB minigame here. upon success move student to start of s2 === aboard_first_time ===
    -   SYS_MINIGAME_01
    -> aboard_first_time


/*--------------------------------------------------------------------------------

	Scene 2

--------------------------------------------------------------------------------*/
=== aboard_first_time ===
    -   CHR_ALX_SML
    -   CHR_MIA_SML
    -   The four friends climb aboard.
    -   "Wow, it feels larger than it looks," Alexis says.
    -   "It sure does," Mia adds. "How many people can the <i>Lakesong</i> hold?"

        * [She turns to Troy.] -> well_tro_begins

== well_tro_begins ==
    -   CHR_TRO_REL
    -   "Well—"
    Troy is cut off by Julian.
        * ["Hold up, I know."] ->julian_knows

== julian_knows ==
    -   CHR_TRO_REL
    -   CHR_JUL_SML
    -   "I remember this one from my course," Julian's clearly pleased to have the answer.
    -   Troy nods. "OK, Julian, please enlighten us."
        *   [Julian continues.] -> julian_continues

== julian_continues ==
    -   CHR_JUL_PRD
    -   "To see how many people a boat can hold," Julian continues smugly, "you just have to look at the capacity plate."
    -   Is Julian correct?
        * [Yes.] -> yes_but
        * [No.] -> selected_no
        * [Yes, but...] -> yes_but

== yes_but ==
    -   CHR_TRO_HLP
    -   CHR_JUL_PUZ
    -   "Mmm... you <i>are</i> right," Troy replies, "but there's just one problem."
        *   [Julian gestures for Troy to continue.] -> tro_expl_20ft

== selected_no ==
    -   CHR_JUL_GRN
    -   Julian <i>is</i> correct about the capacity plate, but there's a complication with regard to the <i>Lakesong</i>.
            *   [Troy explains.] -> tro_expl_20ft

=== tro_expl_20ft ===
    -   CHR_TRO_HLP
    -   CHR_JUL_REL
    -   "Capacity plates are only required on boats 20 feet or less in length," Troy explains, "and the <i>Lakesong</i> is over 30 feet."
        *   [Julian nods.] -> jul_nods_cp

=== jul_nods_cp ===
    -   CHR_JUL_REL
    -   "Oh, yeah... uh, <i>of course</i> I knew that!" Julian insists. He's not convincing.
    //I'm not sure about the above line, but didn't want another Julian nods.
    -   Let's take a quick look at capacity plates.

            * [OK.] -> cp_pdf_info

=== cp_pdf_info ===
//  Here we'll launch into the study guide to the Capacity Plate info. Upon exit return student to === ls_no_cp ===
    -   SYS_PDF_02
        -> ls_no_cp

=== ls_no_cp ===
    -   CHR_ALX_REL
    -   CHR_TRO_REL
    -   "So the <i>Lakesong</i> doesn't have a capacity plate?" asks Alexis.
    -   "No, it does not," replies Troy.
        *   [Mia looks concerned.] -> mia_concern_cp

=== mia_concern_cp ===
    -   CHR_MIA_WRD
    -   CHR_TRO_HLP
    -   "Then how do you know how many people it can safely carry? Do you use the formula I read about: boat length times width, divided by 15?" asks Mia.
    -   Troy shakes his head. "Nope. That only applies to boats 20 feet or under."
            * ["So how can you know what's safe?" responds Mia.] -> mia_purses_cp

== mia_purses_cp ==
    -   CHR_MIA_REL
    -   CHR_TRO_REL
    -   Troy puts on his mock-serious captain's voice. "In the absence of capacity plates for recreational boats 20 feet and over, safe operating capacity is left to the captain's experience, judgment, and common sense." He smiles broadly. "It's fine, Mia. Trust me."
        *   [Alexis nods.] -> alx_nod_cp

== alx_nod_cp ==
    -   CHR_ALX_REL
    -   She waves an arm, emphasizing the size of the boat. "We certainly seem well within the <i>Lakesong's</i> capacity. There are only four of us."
        *   ["It's not always that simple," Troy says.] -> tro_cont_cap

== tro_cont_cap ==
    -   CHR_TRO_SUR
    -   "My brother has had a dozen people on the <i>Lakesong</i>, but the safe capacity isn't just a matter of what the boat should be able to handle. It also depends on conditions, and how the boat is loaded," Troy explains. "Anyone who's spent a significant amount of time on the water can tell when a boat is overloaded."
        *   ["Anyone?" queries Alexis.] -> alx_frn_cp

 == alx_frn_cp ==
    -   CHR_ALX_REL
    -   CHR_TRO_DIS
    -   "So what happened with the captain of the <i>Rok Kandi</i>?" asks Alexis.
    Troy winces, and Julian looks sick. Mia senses something ominous in the air.
    // shuddering seems slightly melodramatic. Lessens the seriousness.
        *   ["...What happened to the <i>Rok Kandi</i>?" asks Mia.] -> rok_kandi_exp1
        *   ["I won't ask about the <i>Rok Kandi</i>," says Mia. "I think I'll regret it."] -> rok_no_ask
//The above is maybe too long to work. But perhaps play with something along those lines.

== rok_kandi_exp1 ==
    -   CHR_TRO_SAD
    -   "The <i>Rok Kandi</i> was a vessel about the same size as the <i>Lakesong</i>," says Troy. "Last Independence Day, her captain took his family and some friends out on the lake to watch the fireworks."
        *   ["Sounds like it should have been fun," says Mia.] -> sounds_fun


== sounds_fun ==
    -   CHR_TRO_HLP
    -   CHR_JUL_SAD
    -   "It should have been. But the Captain was inexperienced," Troy continues.
    //tweaked a little here, as the context meant it was ominous from the start, not not only now. Also added the inexperienced bit. Don't need the 'new to boating', as that's conveyed in inexperienced.
        * ["Uh-oh," says Mia.] -> prob_overloaded

== prob_overloaded ==
    -   CHR_TRO_SAD
    -   CHR_MIA_REL
    "The problem was they were overloaded, 27 passengers, if I recall. The boat was unstable. The <i>Rok Kandi</i> hit the wake of another vessel and capsized."
        *   [Was anyone hurt?" Mia asks.]
            -> fatalities

== fatalities ==
    -   CHR_MIA_FRN
    -   CHR_TRO_SAD
    -  "Four people drowned," Troy says, "including the captain's wife and twin daughters, who were trapped in the cabin when the boat overturned."
    // leave things like sombrely out - as if you can't convey it in the words, it'll seem odd in the description of how someone speaks. And if you can convey it, then it's a doubling up.

    Even Julian seems affected. Instead of cracking a joke, he turns to Mia: "You OK? What a story, right?"

        *   ["It's sad," replies Mia.] -> sad_rok
        *   ["Certainly an eye-opener, I suppose," says Mia.] -> aware_rok
        *   ["...Frustrated," says Mia.] -> avoidable_rok

== sad_rok ==
    -   CHR_MIA_SAD
    -   "It must have been horrible," Mia says. She doesn't meet Julian's eye, and just looks out over the water.
        * Julian shakes his head[.] but remains silent.
        // here the continuation of the sentence works a bit better. But I'd still stick to a rule of having each click being a moving thing on act, and not have it part of the next bit - or it feels a little like there's no point breaking them up.

        -> avoidable_rok


== aware_rok ==
    -   CHR_MIA_DSD
    -   "Yeah. And you might not see danger until you are in a situation requiring quick maneuvering and the vessel cannot respond appropriately," Troy adds.
    //not quite right, but trying to make speech more natural
            * [Alexis nods.]

        -> avoidable_rok

== avoidable_rok ==
    -   CHR_ALX_FRS
    -   "What's worse," says Alexis, "is knowing that the accident could have been completely avoided if the captain had been more experienced and safety-conscious."
    //WAsn't natural speech, the safety-conscious bit is awkward, but I can see why you want it in. (Natural might have it end here:  if the captain had been more experienced and safety-conscious )
        *   [Troy nods.] -> speaking_of_safety

== rok_no_ask ==
    -   Nothing more is said about the fate of the <i>Rok Kandi</i>. Troy moves the conversation onto getting the boat ready. -> get_started_pre


== speaking_of_safety ==
// achievement 1 to 25%
- SYS_ACHIEVE_1_2
    -   "Speaking of safety," Troy says, getting everyone's attention. -> get_started_pre

== get_started_pre ==
    <>  "I'll go ahead and get started on our pre-departure checklist."
    //in your unadulerated version, this came up with a double space before the speech mark.
    //changed to 'I'll' as otherwise he's already said they should do it as a group, when that's the idea he has in a moment.
    -   CHR_TRO_REL
    *   [Continue.] //nodding in agreement didn't feel quite right. He's not asked them to do it, so they aren't saying yes. But having them nod silently to this also read oddly. Think it's OK just to have a meta bit here.
        -> before_predep_check_sg

=== before_predep_check_sg ===
    -   CHR_CLR
    -   Before starting the pre-departure checklist, let's make sure you're familiar with the items on the checklist.

        * [Launch Study Guide]
            -- SYS_PDF_03
        //Launch the modal for the pre-departure checklist study guide info. Upon student close, send them to post_predep_check_sg

        -> post_predep_check_sg

=== post_predep_check_sg ===
    -   Now that you're familiar with the pre-departure checklist, let's rejoin the four friends on the <i>Lakesong</i>, where...
    //deleted 'Great' as think the narrator should have as neutral a personality as possible
        * [Troy has an idea.]
            -> pre_depart_help

/*--------------------------------------------------------------------------------

	Scene 3

--------------------------------------------------------------------------------*/
=== pre_depart_help ===
    -   SYS_CHAP_03
    -   CHR_TRO_REL
        "We'll finish the pre-departure checklist faster if you three help," says Troy. "Let's go through the checklist"
       
            * [Complete the pre-departure checks.]
                -> review_checklist_minigame

=== review_checklist_minigame
// Launch the checklist minigame here. Upon successful completion of the minigame send student forward to = after_checklist
    - SYS_MINIGAME_02
    -> after_checklist_minigame


=== after_checklist_minigame
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   After completing the checklist, problems were found with two items.
    
        -   (opts)
        
        *   [The visual distress signals.]
            --  CHR_ALX_SAD
            Alexis tells Troy the problem she found with the visual distress signals. -> pfd
      
        *   (pfd) [The life jackets.] {Mia goes ahead and mentions that one of the lifejackets has a small rip in it, but she figures it isn't any big deal.|The flares are out of date.}
        
        *   {pfd} [Troy frowns.] 
            -> tro_frowns


        -   -> opts

   
    = tro_frowns
    -   CHR_TRO_SUR
    -   CHR_JUL_SAD
    -   "OK, we're going to need to delay our departure," he says. "We'll need to replace the expired flares Alexis found and the torn life jacket Mia noticed before we cast off."
    
        -   (opts2)
    
            *   ["For real?" says Julian.]
            --  CHR_JUL_SAD
            "Just because of that little rip and some expired flares?" he says. -> slump 
            
            *   (slump) [Julian slumps.] {Julian slumps with disappointment.| "I don't get it, the life jacket still floats and we have the handheld light for signalling."} 
        
            *   {slump} [Troy nods.] 
                -> pfd_flare_needs
        
        
        -   -> opts2


    = pfd_flare_needs 
    -   CHR_TRO_REL
    -   CHR_MIA_REL
    - "On the lifejacket, even a small rip defines it as <i>unserviceable</i> per the Coast Guard," says Troy. "And the red flares are the only visual distress signal good for both day and night use."

            * ["Day and night?" Mia seems concerned.] -> mia_asks_day_night



== mia_asks_day_night ==
    -   CHR_MIA_REL
    -   CHR_ALX_REL
    -   "Yes, there are two types of VDS, or visual display signal," Alexis explains. "Day VDS can be seen in bright sunlight, and night VDS can be seen after dark."
        
        * ["I get that," says Mia.] -> mia_nods_dn

== mia_nods_dn ==
    -   CHR_MIA_REL
    -   CHR_TRO_REL
    -    "It's just... well, I thought the plan was to return before dark?"

            * ["That's the plan," says Troy.] -> tro_chimes_in

== tro_chimes_in ==
    -   CHR_TRO_REL
    -   CHR_MIA_REL
    -   "But it's important to be prepared for all situations," says Troy. 
    
        Satisfied, Mia nods in agreement.   

        
        * [Depart for the supply store.] -> on_dock_to_store
                // depart on its own read a bit like 'oh, are they going in the boat afterall?'


=== on_dock_to_store ===
// return here from study guide
// unlock achievement 3 here
    - SYS_ACHIEVE_3_1
    - SYS_SCENE_2
    -   The four friends depart the <i>Lakesong</i> and make their way toward the dockside supply store. As they walk, they begin to discuss:

        * [The <i>Lakesong</i>.]
            -> lakesong_biggest
        * [The dock.]
            -> the_dock
            // this is a bit cheaty - maybe: The other boats on the dock.
        * [The lake.]
            -> lake_weather
        * [The store.]
            -> see_store

== lakesong_biggest ==
    -   CHR_JUL_GRN
    -   CHR_ALX_GRN
    -   "Troy, when you said your brother has a nice boat," Julian says with a grin, "I had no idea just how nice '<i>nice</i>' meant."
        "Seriously, the <i>Lakesong</i> is so cool," Alexis says.
        //I don't think Julian would use the name here
        // impressive - feels a little stilted?

            * ["Thanks," Troy responds.]
            --  CHR_TRO_REL
            Troy smiles. "I'm sure Vincent will like hearing that. I'll tell him when we're back."
            // appreciate seemed slightly formal?
                -> troy_seems


== troy_seems ==
    -   CHR_ALX_REL
    -   CHR_TRO_FRN
        "The <i>Lakesong</i> is an awesome boat," Troy says, "but there used to be a lot of even larger and more impressive boats here... before all the robberies started."
        //would they call the boat a vessel? Feels unnatural to me, but I'll go with you here.
            * ["Robberies?" says Julian.] -> robberies

== see_store ==
    -   CHR_MIA_REL
    -   CHR_ALX_REL
    -   "There's the store," says Mia. "Looks like it could use a coat of paint."
    // see the store ahead <- I imagine they can all see it. Just feels a little odd to locate it
        "It's been here forever," says Alexis. "And I imagine the robberies have been bad for business."

             * ["Robberies?" says Julian.] -> robberies

== lake_weather ==
    -   CHR_MIA_REL
    -   CHR_ALX_REL
    -   "It's such a pretty day," Mia remarks. "I'm surprised there aren't more boaters out enjoying it."
    -   "Apparently the robberies have had a huge impact on the number of boats and boaters coming here," Alexis replies.

            * ["Robberies?" says Julian.] -> robberies

== the_dock ==
    -   CHR_MIA_SML
    -   CHR_ALX_SML
    -   "Alexis, you sure weren't kidding earlier when you said it looked like the <i>Lakesong</i> is one of the biggest boats on the Laketown docks!" Julian exclaims, beaming.
    //should this be addressed to Troy, not Alexis? Tweaked. Or has she been on it before? (In which case, spell this out?)
        * ["Seriously," says Mia. "Way bigger than expected."]
        // no idea what?
        -> troy_seems

=== robberies ===
    --   CHR_JUL_SAD
    --   CHR_MIA_PUZ
         "Julian, have you been living under a rock? It's been all over the news," says Mia.
         "I don't watch the news because it's depressing," Julian tells Mia, "as you just reminded me."

        Troy frowns:
            * [And points to an empty slip.] -> and_points
            * [But says nothing.] -> says_nothing
            * [And looks as if he's uncertain whether he should speak.] -> and_mutters
            // want the last one to be a full sentence, but hard to make natural without spoiling what comes.

== and_points ==
    -   CHR_TRO_FRN
    -   "My brother's best friend's boat was stolen from this very spot near the end of last season," he says. There's anger in his voice.
    //depressing? I'd be furious. frustrated voice / infuriating etc
             -> stolen_boats_q_loop

== says_nothing ==
    -   CHR_TRO_FRN
    -   Troy shakes his head angrily.
    //in frustration
             -> stolen_boats_q_loop

== and_mutters ==
    -   CHR_TRO_FRN
    -   "Go on," urges Mia.
    "At least it's just been property, and nobody has gotten hurt." Troy's expression is dark. "So far."
            -> stolen_boats_q_loop


=== stolen_boats_q_loop ===
    The mention of the robbery has prompted questions.
    - (opts)
    - { |The questions continue.| Talking about the robberies leaves everyone uneasy.}
    *   ["How many boats have been stolen so far?" asks Alexis.]
        --  CHR_ALX_CUR
        --  CHR_TRO_UST
        "I know 10 boats have been stolen since the end of last summer," says Troy. "But there may have been more I didn't hear about."

    *   ["What are the police doing?" asks Mia.]
        --  CHR_MIA_FRN
        --  CHR_ALX_WRD
        "Seriously," adds Alexis, "boating is the heart of Laketown. The authorities are taking this seriously, right?"
        Troy shrugs. "I don't know. I don't see many police around when I'm here."
        // or something like that. Why else would they ask him what the police are doing? Why are they likely to know?

    *    ["Do <i>you</i> have a theory on who is behind it?" asks Julian.]
        --   CHR_JUL_REL
        --   CHR_TRO_REL
        Julian nudges Troy. "Even if the police haven't said anything, you have suspicions, right?"
        "Some say it's a local who knows everyone's comings and goings," says Troy. "Others think it's a gang from Oceanside. But I don't have a clue."
        // some/some repetition. Edited to lose

    // We require the player to ask at least one question
    *    {loop} [Enough questions.]
        -> done
- (loop)
    // loop a few times before moving on
    { -> opts | -> opts | }
    ** Troy shakes his head.[]
    -- CHR_TRO_UST
    -- "Let's just hope the cops catch whoever it is, soon." Troy sighs.
    // would youth call 'the police' 'the authorities'?
     ** ["Oh!" gasps Alexis.] -> target_lakesong
- (done)
    -- While thinking about what Troy said, Alexis comes to a realization:
        * ["Oh!"]
        ->target_lakesong

== target_lakesong ==

   -    CHR_TRO_REL
   -    CHR_ALX_CUR
   -    "You don't think the thieves might target the <i>Lakesong</i>, do you?" asks Alexis.
   Troy pauses for a moment, then responds:
        * ["Yes."]
        "They've only targeted longer vessels so far, but it seems likely -> thieves_targets
        * ["No."] "They've only targeted longer vessels so far. Although it is possible -> thieves_targets


=== thieves_targets ===
    <>  the thieves could move on to the next-largest boats, like the <i>Lakesong</i>," says Troy.
    -    CHR_TRO_REL
    -    CHR_ALX_CUR
    * ["Let's hope not," says Alexis.]
        -> meet_willard

/*--------------------------------------------------------------------------------

	SCENE 4

--------------------------------------------------------------------------------*/

=== meet_willard ===
    -   SYS_CHAP_04
//  after walking along dock with robbery discussion "They arrive in front of the store."

    -   The friends arrive at the entrance of the dockside supply store.
            * [They enter the store.] They are greeted by the owner, Mr. Willard.
    -   SYS_SCENE_3
    -   CHR_WLD_SML
    -   "What can I help you folks with on this lovely Laketown day?"
    -   CHR_TRO_REL
    -   Troy answers.

        *  "We need PFDs[."], and a few other things," says Troy.
            -- CHR_TRO_REL
            -- CHR_WLD_IMP
            ->PFDs_top_list


=== PFDs_top_list ===
    *   ["Glad to see you have PFDs at the top of your list."]  "90% of boaters who drown were not wearing a life jacket," says Mr. Willard.

    -   CHR_WLD_REL
        * "No way!" exclaims Mia.[]
            --   CHR_WLD_HLP
            -- "Way!" Mr. Willard responds. -> thats_per

        * "Really?" asks Alexis[.] in surprise.
            --   CHR_WLD_HLP
            -- "Absolutely!" Mr. Willard responds. <> -> thats_per

        * "Says who?"asks Julian[] in disbelief.
            --   CHR_WLD_HLP
            -- "The Coast Guard, that's who," Mr. Willard declares. -> thats_per

== thats_per ==
    <>  "That's per Coast Guard statistics."
    * [Mr. Willard leads...]
        -> PFD_display


=== PFD_display ===
    -   CHR_WLD_REL
    -   As he leads them to the life jackets, Mr. Willard asks what type they need. Troy, Alexis, Julian, and Mia all have differing opinions.

    - (opts)
    - {| "What else?" asks Mr. Willard. | "OK, who's next?" asks Mr. Willard. | Mr. Willard has heard from all but one.}
        *    "The safest life jacket[."] you sell," replies Troy .
            --  CHR_TRO_REL
            --  CHR_WLD_REL
            --  "I only sell Coast Guard–approved PFDs, so they are all safe," Mr. Willard says. "But you need to also consider both the fit and the type of water activities you'll be doing."
        *    "Something good for many activities[."], especially skiing and paddlesports," says Alexis.
            --   CHR_ALX_SML
            --   CHR_WLD_REL
            -- "OK, that rules out an inflatable vest, as they are not suited for an activity like skiing where submersion is expected," Mr. Willard replies.

        *    "A PFD that looks cool[!"] and matches my awesomeness!" says Julian  with a grin.
            --   CHR_JUL_SML
            --   CHR_WLD_REL
            --  The others laugh, but Mr. Willard says, "He makes a good point. It is important to choose a PFD you like or else you won't wear it."
        *   "A comfortable life jacket[."] that's not huge and bulky," Mia says.
            --   CHR_MIA_REL
            --   CHR_WLD_SML
            -- "Comfort is very important because if it isn't comfortable, you won't wear it," responds Mr. Willard.
        // We require the player to ask at least one question
        *    {loop > 1} [Mr. Willard's heard enough.]
            -> done
    - (loop)
        // loop a few times before willard gets bored
        { -> opts | -> opts | -> opts | }
        -- "There's a type of life jacket for every activity," Mr. Willard says.

            -> done
    - (done)
        --   CHR_WLD_SML
        -- "From your feedback, I think I have enough to go on," he declares.

            * [Troy nods.]
            -> range_of_prices


=== range_of_prices ===
// unlock equipment achievement
-   SYS_ACHIEVE_2_2
// question loop only need show willard
    - CHR_WLD_REL
    - "I'll show a range of PFD types at various prices and we can go from there," the shopkeeper says.

    - (opts)
    - { While Mr. Willard begins selecting PFDs for the friends to try on, they continue to ask questions.| Mr. Willard's answers are short but helpful.| }
        *    "Are the less expensive models just as safe?"[] Troy asks the whistling Mr. Willard.
            -- CHR_WLD_REL
            -- CHR_TRO_REL
            -- "Absolutely," the shopkeeper says, nodding. "Price isn't a factor for safety, but it is a factor for materials used and longevity of the PFD."
        *    "The more comfortable ones cost more, right?"[] asks Mia.
            -- CHR_WLD_REL
            -- CHR_MIA_REL
            --  "It depends," responds Mr. Willard. "The more expensive models are typically lighter and less bulky, but comfort also has a lot to do with proper fit."
        *    "What about inflatables?"[] Alexis asks.
            -- CHR_WLD_REL
            -- CHR_ALX_REL
            --  "Typically very comfortable and cool to wear," Mr. Willard assures them with a smile. "But they aren't suitable for all activities, like skiing.
        *   "Do we need Type 1 jackets?"[] Julian wonders.
            -- CHR_JUL_REL
            -- CHR_WLD_REL
            "The Type 1 is generally for commercial vessels that journey far offshore," says Mr. Willard. "Type 1 PFDs will turn an unconscious person face up in the water."

        // We require the player to ask at least one question
        *    {loop >1} [Enough questions.]
            -> done
    - (loop)
        // loop a few times before willard gets bored
        { -> opts | -> opts | }
        ** [Mr. Willard finishes...]
    - (done)
        -- Mr. Willard finishes selecting various PFDs from his stock.
        -- CHR_WLD_REL
        -- "Well, let's start with this selection. Pick whatever tickles your fancy," he declares.
        **[Mia, Alexis, Julian, and Troy...]
            -> PFD_try_on

=== PFD_try_on ===
//  on this loop we only need to show Willard
    -   CHR_WLD_REL
    - Mia, Alexis, Julian, and Troy each reach for a PFD.
    - (opts)
//        { | The remaining friends continue to comment. | They all like what they've tried on.}
        *    "This isn't bulky at all!" says Mia[.], spinning around in the jacket she selected.
            --  CHR_WLD_REL
            --  CHR_MIA_SML
            -- "That's an inflatable," Mr. Willard says with a smile. "They are very comfortable, but not suitable for skiing. They also require regular maintenance."
        *    "Now this I like!" Alexis smiles[.], giving Troy a thumbs up.
            --  CHR_WLD_REL
            --  CHR_ALX_SML
            -- "That's a Type III foam jacket," says Mr. Willard. "It's our best seller. Affordable, comfortable, and suitable for a range of activities."
        *    "Check out this camo one!" exlaims Julian[.], after selecting a PFD that was not among those selected by Mr. Willard.
            --  CHR_WLD_FRN
            --  CHR_JUL_GRN
            -- "I didn't recommend that one." Mr. Willard frowns. "That's a special-use hunting PFD and is not suitable for general boating."
            -- Julian slumps his shoulders and takes the jacket off.
        // We require the player to ask at least one question
        *    {loop >1} [Enough trying PFDs]
            -> done
    - (loop)
        // loop a few times before the willard gets bored
        { -> opts | -> opts | -> opts | }
            ** Mr. Willard nods his head[.] and smiles.
            -> done
    - (done)
        - "It appears you've all found something you like that matches the activities you have planned," he declares.
        -   CHR_WLD_SML

            *   [Onward!] -> pfd_learning_activity

=== pfd_learning_activity ===
//  launch the PFD learning activity (minigame) here
//  upon succsussful completion of minigame, send student to sizing_who_first
    - SYS_MINIGAME_03
    -> sizing_who_first


/*--------------------------------------------------------------------------------

	Scene 5

--------------------------------------------------------------------------------*/


=== sizing_who_first ===
- CHR_WLD_REL
-  "Now, let's get you all properly sized," says Mr. Willard.
    *   [Mr. Willard points to Mia.]
        -> julian_quips_xs
    *   [Mr. Willard points to Julian.]
        ->j_well_played

== julian_quips_xs
    -   CHR_MIA_REL
    -   CHR_JUL_GRN
    -   Mr. Willard begins with Mia, the most petite of the group. "One kid-sized life jacket, coming right up!" Julian says. Everyone rolls their eyes.
        * [Mr. Willard selects a vest and hands it to Mia.]
            -> jul_jokes

== jul_jokes ==
VAR pfd_tryer = "Mia"
    -   CHR_MIA_REL
    -   CHR_WLD_SML
    -   "I'm sure a women's extra small will do the trick," says Mr. Willard, as he hands the PFD to Mia.
         * Mia slips the life vest on[.] and fastens the straps.
            -> mia_sizing

== j_well_played ==
-   CHR_JUL_SML
-   Mr. Willard points to Julian, who nods and says, "Well played, Mr. Willard. Being first comes naturally to me."
*   [Mr. Willard says nothing.]. 
    -> julian_sizing

=== mia_sizing ===
    -   CHR_MIA_REL
    -   CHR_WLD_SML
    -   "This seems like a good fit," she says with satisfaction.

    * "It does, indeed[."]," agrees Mr. Willard.
        -- CHR_MIA_REL
        -- CHR_WLD_REL
        - "You were able to fasten all the straps, so we know it's not too tight."
        - Mia nods with a smile.
        ** "But we need to make sure it's not too loose," declares Mr. Willard[.], prompting a series of questions.
            --- CHR_WLD_REL

            -> how_tell_too_loose ->

-   CHR_MIA_REL
- The jacket moves...
    * [not at all.]
        -> mia_fit ("not at all,")
    * [about a half inch.]
         -> mia_fit ("just a bit, about a half inch,")
    * [about an inch.]
        -> mia_fit ("a little, about an inch,")


== mia_fit (how) ==
-   CHR_MIA_REL
-   CHR_WLD_SML
-   Mr. Willard smiles.
    "See here at the shoulders? The vest moved {how} and that's {how == "not at all,": perfect | totally acceptable}. Now, if I'd been able to pull the PFD a couple inches and up to your ears, then we'd know it was too big."

        * Mia smiles[.] and is happy with the vest she's chosen.
            -> fit_others

=== julian_sizing ===
~ pfd_tryer = "Julian"
    -   CHR_WLD_SML
    -   Mr. Willard looks at Julian, mentally sizing him up.
    -   "You look to be about a medium," Mr. Willard concludes.
    -   CHR_JUL_SML

    - (opts)

    *    [Julian makes a face.]
        -- CHR_JUL_SML
        -- Julian makes a face as Mr. Willard tries to hand him a PFD. -> pose
    *    (pose) [Julian lifts his arms.]
        --  CHR_JUL_SML
        --  {Julian strikes a body builder's pose.|Julian flexes.}
    *    {pose} [Mr. Willard sighs.] -> larger_size
    -     -> opts

=== larger_size ===
    -   CHR_JUL_SML
    -   CHR_WLD_SKP
    -   "Look at these guns! Does this look like a medium to you?" says Julian.
    -   Mr. Willard shakes his head and says, "OK, let's try a large."

        Julian...

            * Accepts the large[.] and declares, "Now that's more like it!"
                -> too_big("large")

            * Refuses the large[.] and insists, "Let's make that an extra large!"  Mr. Willard rolls his eyes and hands Julian an XL.
                -> too_big("extra-large")



 === too_big(size) ===
    -   CHR_JUL_SML
    -   CHR_WLD_SKP
    -   Julian buckles up all the straps on the {size} vest and makes a pleased expression.

    * ["See," says Julian.] "That's what I'm talking about. A man needs some room to move!"
        -- CHR_JUL_SML

        ** Mr. Willard winks[.] at the other three friends. It's obvious to everyone that the PFD is much too large for Julian.
            --- CHR_WLD_REL
            --- CHR_JUL_SML


    - CHR_WLD_REL
    - CHR_JUL_SML
    - "Well, it's clearly not too snug, as you had no trouble buckling all the straps," says Mr. Willard diplomatically. "But it looks a tad too big."

            * [Julian disagrees.] 
            --  CHR_JUL_SML
            --  CHR_WLD_REL
            Julian shakes his head and puffs out his chest. 
            "Naw, it's not too big," he says. "It just needs some minor adjustments, that's all."

                ** "There's one sure way to tell," says Mr. Willard[.], prompting a series of questions from the others.
                -> how_tell_too_loose ->

    -  CHR_WLD_REL
    -  CHR_JUL_SML
    -  The {size} PFD goes up over Julian's ears, and Mr. Willard winks at the others.
        * ["See, when we lift the PFD from behind..."]
        -> see_too_big

    = see_too_big
    -   CHR_JUL_REL
    -   CHR_WLD_REL
    -   "See, when we lift the PFD from behind and it goes up to your ears or beyond, we know it's too big."

            * Julian smirks[.] and says, "These PFDs must really run large!"

                ** [Alexis jokes.]
                 -> alx_quips

                ** Nobody says anything[.], because they know that's just "Julian being Julian."
                -> fit_others

== alx_quips ==
    -   CHR_ALX_SML
    -   CHR_JUL_SML
    -   "Or maybe your 'guns' run small?" Alexis jokes.


            *   Julian grins and responds[.], "OK, I'll give that a C+. Sassy but unoriginal."
                -- CHR_JUL_GRN
                -- CHR_ALX_SML
                -- Alexis blows Julian a sarcastic kiss, and they both laugh.
                -> fit_others
            *   Julian grins but says nothing.
                -- CHR_JUL_GRN
                -> fit_others

=== how_tell_too_loose ===
    - (opts)
    - {|The questions continue.| Mr. Willard continues to provide answers.| There is much to consider about sizing.}
        *    "How do you know when a PFD is too large?"[] Mia asks.
            -- CHR_MIA_REL
            -- CHR_WLD_HLP
            --  "By pulling up on the shoulders," Mr. Willard replies. "It should be comfortably snug without too much lift."
        *    "Why is the correct size so important?"[] Troy asks.
            -- CHR_TRO_REL
            -- CHR_WLD_HLP
            -- "Wearing a PFD that is way too big is like not wearing a PFD at all," Mr. Willard declares.
        *    "Do a lot of people wear the wrong size?"[] asks Alexis.
            -- CHR_ALX_REL
            -- CHR_WLD_FRN
            -- "Unfortunately, yes," Mr. Willard answers. "The Coast Guard estimates that more than half of all boaters have PFDs that are way too big or the wrong type."
        // We require the player to ask at least one question
        *    {loop} [Enough talking.]
            -> done
    - (loop)
        // loop a few times before the guard gets bored
        { -> opts | -> opts | }
        --  Mr. Willard holds up his hand.
        --  "Well, let's check that fit," he declares.
        ** [Mr. Willard moves behind...]
    - (done)
        --   CHR_WLD_REL
        --   "Now with your permission, says Mr. Willard, "I'm going to move behind you where I'll lift the PFD up by the shoulders."
        --  "Sounds good," says {pfd_tryer} with a nod.
                ** Mr. Willard pulls up on the life jacket {pfd_tryer} is wearing.
    -     ->->

=== fit_others ===
    -   CHR_WLD_REL
    -   "Now let's get the rest of you fitted," Mr. Willard says, and the three yet to be fitted nod in agreement.

        * [After everyone is fitted...] -> quiz_01



    = quiz_01
    - SYS_QUIZ_01
        -> all_fitted

== all_fitted ==
        - CHR_WLD_REL
        - CHR_TRO_SML
        - After everyone is fitted, Mr. Willard remembers something. He turns to Troy and asks, "Your boat is longer than 16 feet, right?"

            ***  [Troy replies.] -> tro_16ft_reply
            ***  [Julian blurts.] ->jul_16ft_inter

== tro_16ft_reply ==
    -   CHR_WLD_REL
    -   CHR_TRO_SML
    -    Troy replies with a nod and says, "She sure is! But why do you ask?"
            -> throwable_pfd_required

== jul_16ft_inter ==
    -   CHR_WLD_REL
    -   CHR_JUL_SML
    -   Julian blurts out, "Are you kidding me? The <i>Lakesong</i> is huge! It's like the largest boat that hasn't been stolen."
    *   "Is that so?"[] Mr. Willard says with a smile, while the others just shake their heads at Julian.
        -- CHR_WLD_SML
            ** ["What is so special about 16 feet?" asks the ever-curious Mia.]
            -> throwable_pfd_required

=== throwable_pfd_required ===
    -   CHR_WLD_REL
    -   "Well," replies Mr. Willard, "vessels 16 feet or longer are also required to have at least one Type IV throwable device on board. A Type IV is designed to be thrown to someone in the water."
        * [Troy nods.] -> have_type4



== have_type4 ==
    -   CHR_TRO_REL
    -   CHR_WLD_REL
    -   "We have a flotation ring on the <i>Lakesong</i>," Troy says with a nod. "Also, the seat cushions are rated as throwable flotation aids."

        * ["Good to hear!" Mr. Willard says cheerfully.]
            -> consult_list

== consult_list ==
    -   CHR_WLD_REL
    -   CHR_TRO_REL
        - Mr. Willard consults the supply list again. "A couple of these items I'm going to need to get from the back."
            ** [Troy nods.]

            -- CHR_WLD_REL
            -- CHR_TRO_REL

                "You also need signals, which can be found just over there," says Mr. Willard, directing the friends.

                "OK. We'll get the VDS we need and meet you up front," says Troy.

                    *** [Mr. Willard hurries off while the friends shop for VDS.]
                        -> VDS_shopping

== VDS_shopping ==
    -   CHR_TRO_REL
    -   CHR_MIA_REL
    -   "Remember we need both day and night signals," says Troy, looking at the selection in Willard's store.
    -   "How do you know which is which?" asks Mia.
    -   "The easiest way is to imagine if you could see the VDS better in day or night or both," says Troy.

            * [Mia looks at the various VDS for sale in the store.] -> mia_vds

        = mia_vds
        - CHR_TRO_REL
        - CHR_MIA_REL
        "So I see flags, smoke, flares, lights..." she says.
        "Right," says Troy. "Here, let me quiz you. I'll hold up a VDS type, and you tell me if you think it's for day, night, or both."


                ** ["OK, sounds fun," say Mia.]
                    -> VDS_minigame

== VDS_minigame ==
//  launch VDS minigame here
//  upon successful completion of game, return student to === meet_at_front ===
    - SYS_MINIGAME_04
        -> meet_at_front







=== meet_at_front ===
    -   CHR_TRO_REL
    -   CHR_WLD_REL

    -   With Mia up to speed on VDS types, she helps Troy select what they need for the <i>Lakesong</i> just as Mr. Willard returns from the back with the other supplies.

        "I sure do appreciate you folks coming in today," says Mr. Willard. "All these boat thefts have been terrible for my business."

            ** [Troy frowns.]
                -> float_plan






/*--------------------------------------------------------------------------------

	Scene 6

--------------------------------------------------------------------------------*/


=== float_plan ===
    -   SYS_CHAP_05
    - CHR_WLD_REL
    - CHR_TRO_REL
    - "I can imagine," says Troy. "These robberies are hurting everyone who has an interest in boating."

        Mr. Willard agrees. Then he remembers something.

        * ["One more thing before you go..."]
            -> one_more_thing

== one_more_thing ==
    -   CHR_WLD_REL
    -  "Have you filed your float plan?" asks Mr. Willard.

            **  ["What's a float plan?"] -> what_float

            **  ["Sort of."] -> sorta_float

            **  ["No."] -> no_float

== what_float ==
    - CHR_WLD_REL
    - CHR_TRO_CUR
    - "What's a float plan?"
         * ["At its simplest, a float plan is..."] -> what_is_float_plan

== sorta_float ==
    - CHR_WLD_REL
    -   CHR_TRO_REL
    -   "Sort of," says Troy. "My brother knows our plans and our expected time of return."
        <- that_will_work_fp

== no_float ==
    - CHR_WLD_REL
    - CHR_TRO_REL
    - "No," Troy says, shaking his head. "But I'm going to text my brother our plans and expected time of return before we cast off."
        <- that_will_work_fp

== that_will_work_fp ==
    *   ["That'll work."]
        -> what_is_float_plan

=== what_is_float_plan ===
    -   CHR_WLD_REL
    -   "At its simplest," adds Mr. Willard, "a float plan is telling someone where you're going, letting them know when you plan to return, and asking that they take action should you not return when expected."
        * Mr. Willard begins boxing the supplies[.], but there are some additional questions from the group regarding float plans.
        -> float_plan_q_loop

=== float_plan_q_loop ===
// just willard's face for this q loop
    -   CHR_WLD_SML
    - (opts)

        *   "You said 'at its simplest'?"[] Mia asks the shopkeeper.
            "For extended outings," answers Mr. Willard, "it's a good idea to provide more info, like a description of your boat, its registration number, what survival equipment you have..."
            --   CHR_MIA_REL
            --   CHR_WLD_SML
        *   "What if you don't file one?"[] asks Julian.
            "It's not a law," Mr. Willard assures him. "But if you were in trouble, you'd want someone to know sooner rather than later. That's why a float plan is important."
            -- CHR_JUL_REL
            -- CHR_WLD_REL
        *    "What if your plans change?"[] asks Alexis.
             -- CHR_ALX_REL
            -- CHR_WLD_SML
            "That happens," the shopkeeper replies with a toothy grin. "Just keep your point of contact in the loop."
        // We require the player to ask at least one question
        *    {loop} [Enough talking.]
            -> done
    - (loop)
        // loop a few times before the guard gets bored
        { -> opts | -> opts | }
        ** [Mr. Willard boxes the last of the supples.]
        -- CHR_WLD_SML

    - (done)
        -   CHR_WLD_REL
        -  "I also have float plan forms here in the store," Mr. Willard adds helpfully. "Both paper forms, and digital forms to send directly to the marina."

            -> float_plan_form

=== float_plan_form ===


        * ["I'd like to see one," says Mia.]
            --- SYS_PDF_06
             -> where_you_headed
        * ["No thanks, we're good," says Troy.]
            -> where_you_headed

=== where_you_headed ====
// add to trip planning badge here
-   SYS_ACHIEVE_3_3
    -   CHR_JUL_CUR
    -   CHR_WLD_REL
        "Is that a chart of the lake?" asks Julian, pointing to a large nautical map.

        "That it is," replies Mr. Willard. "Consulting a nautical chart is a good way to familiarize yourself with the local conditions and hazards."

                * [Mr. Willard points to the map.]-> lake_best_area



== lake_best_area ==
    -   CHR_WLD_REL
    -   CHR_TRO_REL
    -   "Generally, the best recreational boating is east of Laketown," says Mr. Willard.
    - "My brother recommended the same thing," says Troy.
        "Ah, a man who knows the lake well, your brother!"

            * [Troy beams.]
            -> start_east

== start_east ==
    -   CHR_TRO_SML
    -   "After crusing east, I'll find a good spot to give these three a chance at the helm."
    -   Alexis and Julian grin ear to ear, but Mia looks a bit nervous.
        *   ["After that..."]
            -> brodaht_skiing

=== brodaht_skiing ===
    -   CHR_WLD_REL
    -   CHR_TRO_REL
    -   "Then we'll maybe dock at Brodaht Island for some lunch and see how we are on fuel," Troy says.
        * "And then?" asks Alexis[.], her eyes wide.
            -> and_then_alx

== and_then_alx ==
    -   CHR_ALX_SML
    -   CHR_TRO_SML
    -   "And then we'll spend the afternoon skiing," says Troy.
        * ["Yeeeessssss!" Alexis whoops.]
            -> enter_cletus

=== enter_cletus ===
    -   CHR_WLD_REL
    -   "You better keep an eye on the weather, because..." Mr. Willard begins. But two men enter the store, and he trails off.
        *   ["Morning, Willard."] -> willard_frowns



== willard_frowns
    -   CHR_WLD_FRN
    -   CHR_CLT_REL
    -   "Morning, Willard," says the taller and scruffier of the two.
    -   "Good day, Cletus. I'll be with you in a moment," says Mr. Willard.

        * "Take your time, Willard[."]," says Cletus. "I'm paid by the hour."
        -- CHR_CLT_GRN
        -- The other man with Cletus laughs and mumbles something to Cletus.

            ** Mr. Willard is unsettled[.], as he turns his attention back to the friends.
            --- CHR_WLD_FRN

               "Now, where was I?" he asks.
                *** ["Weather," says Mia.]
                    -> weather_pause

== weather_pause ==
    -   CHR_MIA_HLP
    -   CHR_WLD_FRN
    - "You were saying we may need to keep an eye on the weather," Mia chimes in.
    -   "Ah, yes," says Mr. Willard, "the weather. Best keep a close eye on it because there's a good chance of afternoon storms."

        * ["That's not what I heard," says Julian.]
                -> jul_good_chance
        * ["Will do," says Troy.]
                -> tro_will_do

== jul_good_chance ==
    -   CHR_WLD_FRN
    -   CHR_JUL_REL
    -   "A good chance?" Julian asks with doubt in his voice. "The forecast I saw said there is only a 20% chance of scattered showers."
        * [Mr. Willard shakes his head.]
            -> check_weather_again

== tro_really ==
    -   CHR_WLD_REL
    -   CHR_TRO_REL
    -   "Really?" Troy asks with a puzzled expression. "When I looked first thing this morning, there was only a 10% chance of widely scattered showers."
        * [Mr. Willard shrugs.]
            -> check_weather_again

== tro_will_do
    -   CHR_WLD_REL
    -   CHR_TRO_REL
    -   "Will do," Troy says, agreeing. "Weather is unpredictable, especially this time of year."
        *   [Mr. Willard nods.]
            -> check_weather_again

== check_weather_again ==
    -   CHR_WLD_REL
    -   "The most recent forecast moved the probability of storms to 40% and more widespread, and I suspect that'll go higher as the day goes on," Mr. Willard says.

            * "We'll keep an eye on it," says Julian[.], holding up his cell phone.
            -- CHR_JUL_SML


            ** ["Good, you've all got cell phones," says Mr. Willard.] -> dead_zones

== dead_zones ==
    -   CHR_WLD_REL
    -   "You can monitor the weather with a phone app, but don't forget your onboard radio for weather info in case you lose cellular coverage."

            *   "Are there many dead zones[?" asks Mia] on the lake?" asks Mia asks with a worried expression.
                --   CHR_WLD_REL
                --  CHR_MIA_REL
                    ** [Mr. Willard nods.]
                    -> stick_to_south

            *   "I've never lost my cell signal[," proclaims Julian] in all the times I've been on the lake," says Julian.
                --   CHR_WLD_FRN
                --   CHR_JUL_REL
                    ** [Mr. Willard frowns.]
                -> stick_to_south

== stick_to_south ==
    -   CHR_WLD_REL
    -    "It's a mighty big lake," Mr. Willard responds. "If you stick mostly to the south and close to Laketown, you'll probably never lose your signal."
    -> avoid_north

== avoid_north ==
    * ["But as you go further east..."]
    -   CHR_WLD_REL
    -   "But as you go further east, eventually you'll lose signal, and, of course, if you go north..." Mr. Willard shudders. "Well, if you're smart, you just won't go north."

    -   The four friends exchange curious glances.

            *["Why? What up with the north?" Julian asks.] -> three_north_reasons



=== three_north_reasons ===
    -   CHR_WLD_GPY
    -   Mr. Willard crosses his arms.
    -   "Besides the fact that you'll lose your cell signal, it's just damp and dreary up there... lots of fog, too."

    - (opts)
        *    ["Lose our signal? Seems unlikely," says Julian.]
            --   CHR_WLD_GPY
            -- "Take my word on it," says Mr. Willard. -> dreary

        *    (dreary) [Mr. Willard's face clouds over.] {"With no cellphone signal and that fog?" Mr. Willard's face clouds over. "Well, you just better pray your radio doesn't quit on you."| "Your phones will quit, and you'll be in a cold fog thick as pea soup."}

        *    {dreary} [Mia shivers.] -> fog_north

        -     -> opts

=== fog_north ===
    -   CHR_MIA_SAD
    -   CHR_ALX_REL
    -   "I don't like the cold at all," says Mia.

    -    "I'm not too fond of it myself," says Alexis.

        * [""Fog on a beautiful day like this?" says Julian.] 
            -> fog_exp
        
        * ["We get the picture," says Troy.]

            -> hypo_too

== fog_exp ==
    -   CHR_JUL_REL
    -   CHR_WLD_REL
    -   "When the cold snowmelt water from the north meets the warmer lake water, fog is often the result," explains Mr. Willard.

        ** [Julian nods but remains skeptical.]
            -> hypo_too

== hypo_too ==
    -   CHR_WLD_REL
    -   CHR_ALX_REL

        "The lake water is cold enough up north that hypothermia is a concern," adds Mr. Willard.

            *   ["Wait, did you just say <i>'hypothermia'</i>?" asks Alexis.]

                -> hypothermia_discussion

=== hypothermia_discussion ===
    -   The mention of hypothermia causes some frustration.

    - (opts)
        *    "C'mon! It's like 80 degrees out!"[] Julian says, pointing to the sunny storefront windows.
            -- CHR_JUL_SML
            -- CHR_WLD_REL
            -- "A common misconception is that hypothermia only occurs in cold water," says the shopkeeper with a frown.
        *    "But we plan to stay close to shore[."]," Mia says, looking to Troy for confirmation.
            -- CHR_MIA_REL
            -- CHR_WLD_REL
            -- "Every boxer has a plan—until he gets punched in the nose," Mr. Willard says, and then adds, "which is to say, anything can happen and conditions can change quickly while boating."
            -- Troy nods in agreement.
        *    "Isn't hypothermia rare?"[] Alexis asks.
            -- CHR_ALX_REL
            -- CHR_WDL_REL
            -- "I wish it were," the shopkeeper answers. "One of the biggest dangers in outdoor survival situations is hypothermia."
            -- Alexis frowns.
        // We require the player to ask at least one question
        *    {loop >1} [Onward!]
            -> done
    - (loop)
        // loop a few times
        { -> opts | -> opts | }
        "I think you made your point, Mr. Willard," Troy declares.
        * [Mr. Willard nods.]
            -> done
    - (done)
        -> here_the_deal


== here_the_deal ==
    -   CHR_WLD_SKP
    -   "Here's the deal," Mr. Willard says, crossing his arms. "The human body cools considerably faster in cold water than it does in air."
        * [Alexis nods.] -> nobody_in_cold_water

== nobody_in_cold_water ==
// unlock emergency prep here
-   SYS_ACHIEVE_5_1
    -   CHR_WLD_SKP
    -   CHR_ALX_REL
    -   "I think I speak for everyone," Alexis says, "when I say that none of us want to find that out first hand."
        * ["C'mon, Willard! Tell these kids the truth!" says Cletus.]
            -> tell_em_willard

=== tell_em_willard ===
    -   CHR_WLD_FRN
    -   CHR_CLT_ANG
    -   "Go on and tell these kids the real reason to steer clear of the northern waters," the man called Cletus interrupts loudly.

            ** [Mr. Willard rolls his eyes.]
            -> malarky

== malarky ==
    -   CHR_WLD_SKP
    -   CHR_CLT_ANG
    -   "Oh, don't start up with that malarkey again, Cletus!"
            * [Cletus scowls.]
            -> not_malarky


== not_malarky ==
    -   CHR_WLD_REL
    -   CHR_CLT_REL
    -   "It's the truth," says Cletus, "and these kids have a right to hear it."

    -   "Tall tales, exaggerations, and drunken visions is what that is," Mr. Willard harrumphs. "Don't you kids listen to a word of it."
        * [Cletus steps closer and lowers his voice.]
            -> like_what_fear


== like_what_fear ==
    -   CHR_WLD_SKP
    -   CHR_CLT_CUR
    -   "The truth is, there's more than fog and cold to fear up north," warns Cletus in a menacing tone.
        *   [Julian's eyes grow big.]
            -> like_what_whisper


== like_what_whisper
    -   CHR_JUL_REL
    -   CHR_CLT_GRN
    -   "Like what?" Julian whispers.
    -   "Like Kalkomey Isle, that's what! The whole island is overrun with mutant creatures," Cletus declares.
        * [Mr. Willard is annoyed.]
            -> curiousity_haunted


== curiousity_haunted ==
    -   CHR_WLD_FRN
    -   CHR_CLT_GRN
    -   Mr. Willard rolls his eyes, shakes his head, and mutters, "Silly superstitions."

        * [The friends are skeptical and want to hear more.]
             -> curiousity_haunted_loop
        * [The friends take Mr. Willards advice and do nothing to encourage Cletus.] Though, Mr. Willard shares some interesting news of his own.
            ->  research_loop



== curiousity_haunted_loop ==
    -   CHR_CLT_REL
    -   They begin to talk with Cletus, while Mr. Willard just shakes his head.
    - (opts)
    - {| | His story is preposterous yet interesting.}
    *    "What makes you say that?" asks Troy[.] with a look of complete skepticism.
        -- CHR_TRO_REL
        -- CHR_CLT_CUR
        -- "Eyewitness accounts from boaters," Cletus grins. "Including my own eyes, if you must know."
    *    "There must be some rational explanation," suggests Mia.[]
        -- CHR_MIA_REL
        -- CHR_CLT_REL
        -- "I can tell you what I've heard and seen myself," Cletus assures Mia. "You can draw your own conclusions."
    *    "My uncle once told me[..." begins Alexis.] about some sort of experiments years ago on that island," Alexis recalls.
        -- CHR_ALX_REL
        --   CHR_CLT_REL
        -- "That's right," says Cletus, nodding. "Government experiments they was."
    // We require the player to ask at least one question
    *    {loop} [Mr. Willard interrupts.]
        -> done
    - (loop)
        // loop a few times
        { -> opts | -> opts | }
        -  CHR_WLD_FRS
        -  CHR_CLT_REL
        Mr. Willard interrupts the conversation with a loud sigh. 
        
    - (done)
        - "Cletus will fill your heads with this nonsense if you let him," says Mr. Willard cutting in. 
            * [Cletus glares at Mr. Willard.]
            ->research_loop

 == research_loop ==
 // just willard here
    -   CHR_WLD_REL
    -  CHR_CLT_REL
    -   "But there is some truth in there," says Mr. Willard. "Many years ago, there were some scientists who did research on Kalkomey Isle." 
    
    -   "Darn right there were," says Cletus.
    
        - (opts)
        *    ["Government scientists?" asks Mia.]
            -- CHR_MIA_REL
            -- CHR_WLD_REL
            -- "University scientists, I believe. Botanists." -> research

        *    (research) ["What kind of research?" asks Troy.]
            -- CHR_TRO_REL
            -- CHR_WLD_REL
            {Mr. Willard scratches his head. "They researched pollination of the island's rather unique flora."|Mr. Willard thinks and then adds, "Birds, bees, flowers... yeah, I think that was it."}


        *    {research} [Cletus scoffs.] -> cletus_genetics

        -     -> opts

== cletus_genetics ==
// Cletus only for this whole exposition loop
    -   CHR_CLT_REL
    -   "Genetic research is what I heard," says Cletus, his eyes wide and serious. "These scientists made a strange and dangerous mutant from three different flying species."

        - (opts)
        -{Cletus explains that first they took...| | }
            *    "A falcon[."], for its size and sight." Cletus points at his eyes and adds...
                --   CHR_CLT_REL
            *    "A bat[."], for its sonar." Cletus quickly and repeatedly opens and closes his hands, before going on...
                --   CHR_CLT_REL
            *    "A tiger hornet[."], for its relentless hunt-and-kill instinct." Cletus bares his teeth, and continues... 
                --   CHR_CLT_REL
            // We require the player to ask at least one question
            *    {loop} [Mr. Willard interrupts.]
                -> done
        - (loop)
            // loop a few times
            { -> opts | -> opts | }
              Mr. Willard clears his throat.
            -> done
        - (done)
            -- "I think they get the idea, Cletus," the shopkeeper says.
            --   CHR_CLT_REL
            --  CHR_WLD_REL
            ** [But Mia has something on her mind.]
            -> nothing_about_polLination

== nothing_about_polLination ==
    -   CHR_MIA_PUZ
    -   "A hornet doesn't make sense," Mia concludes. "Unlike bees, they aren't involved in pollination."
        **  [Cletus shakes his head, annoyed.]
            -> no_pollen

 === no_pollen ===
    -   CHR_CLT_ANG
    -   "I didn't say anything about pollination," Cletus says with a scowl. "That's ol' Willard's rubbish theory."

         Nobody is quite sure how to respond to Cletus's outrageous claims.

         * The friends press Cletus for additional details.[]
            -> creature_q_loop
         * The friends decide they've heard enough.[]
            -> if_smart


            -> creature_q_loop

=== creature_q_loop ===
// just Cletus here
    -   CHR_CLT_REL
        - (opts)

            *    ["What an incredible creature!"] "What an incredibly frightening creature that would be!" Julian exclaims, his eyes wide.
                -- CHR_JUL_SUR
                -- CHR_CLT_GRN
                -- "You mean what an incredible <i>weapon</i>," Cletus says, with a rictus grin.
            *    ["Your theory?"] "And what's your theory, Mister, er, Cletus?" Mia asks.
                -- CHR_MIA_REL
                -- CHR_CLT_REL
                -- "As I heard it, something went terribly wrong with the experiments," he answers coolly. "The mutant creation couldn't be contained, and the scientists had to abandon the island."
            *    "Eyewitness accounts?"[] Troy asks.
                -- CHR_TRO_REL
                -- CHR_CLT_DIS
                -- "Dozens," Cletus answers. "Saw the mutant creatures myself. Swarm done near chased me half way back to Laketown. I'll never forget the eerie buzz they made."
            // We require the player to ask at least one question
            *    {loop} [Enough talking.]
                -> done
        - (loop)
        // loop a few times
        { -> opts | -> opts | }
            * [Despite the additional details provided by Cletus, the friends remain dubious.]
        - (done)
            -> if_smart


            -> have_been_stories
== if_smart ==
    -   CHR_CLT_ANG
    -   "If you're smart, you'll stay clear of Kalkomey Isle," says Cletus.
    -   Troy nods politely. Mia, Alexis, and Julian avoid eye contact with each other, trying not to laugh.

            * [Mr. Willard shrugs.]
                -> have_been_stories


== have_been_stories ==
    -   CHR_WLD_REL
    -   "There have been some strange stories," he says. "But the cold and fog are good enough reasons to avoid the northern part of the lake."

    -   "I'm sure," Troy says coolly, as the friends gather the purchases and bid farewell to Mr. Willard.
        *   [Back to the <i>Lakesong</i>]
            -> walking_back


=== walking_back ===
// unlock mystery achievement
    -   SYS_SCENE_2_02
    -   SYS_ACHIEVE_7_1
    -   Walking back to the <i>Lakesong</i> with their new supplies, the friends discuss what happened in the store.

    - (opts)
        *    "All that Kalkomey Isle talk sure was weird," says Mia.[]
            --   CHR_ALX_REL
            --   CHR_MIA_REL
            -- Alexis agrees. "Government experiments, mutant creatures... really?"
        *    "Cletus seemed, well, passionate, I guess," says Alexis.[] Alexis pronounces.
            --   CHR_ALX_REL
            --   CHR_MIA_SML
            -- "Maybe a bit too passionate," adds Mia. "He certainly wanted us to believe him for some reason."
        *    "It's doesn't matter," says Julian[.], "because we aren't going north."
            -- CHR_JUL_REL
            -- CHR_ALX_REL
            -- "Seriously," Alexis grins. "Cold and fog and skiing don't mix."
        // We require the player to ask at least one question
        *    {loop} [Enough talking.]
            -> done
    - (loop)
    // loop a few times
    { -> opts | -> opts | }
        --   CHR_TRO_SML
        -- Troy picks up his pace.

    - (done)
        -- "Let's forget about Kalkomey Isle and focus on casting off!" Troy declares.

            * [Onward!]
                -- SYS_QUIZ_02
                -> approaching_lakesong
