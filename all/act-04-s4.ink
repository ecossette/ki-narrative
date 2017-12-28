// the flog clears user choice path develops here, this path can lead to seeing nothing.

=== the_fog_clears ===
~ fog_condition = CLEAR
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   In the open waters away from the island, the fog clears, giving Mia and Alexis good visibility from the deck of the <i>Lakesong</i>.

    To kill time until their planned rendezvous with the kayaks...

    -   (opts)

        * [Mia takes a turn at the helm.]
            -- CHR_MIA_SML
            "I still think I like jet-skiing the most," she says. "But I've got to admit this is pretty awesome!" -> loops

        * (loops) [Alexis loops in wide circles.] {The boat cruises nicely, making wide, crisscrossed loops, and the time passes quickly as the girls enjoy taking turns at the wheel.| Just as Alexis did, Mia cruises in lazy circles. "I couldn't fall asleep last night, so I finished the boat education course and got my certificate." Alexis smiles at the excitement in Mia's voice, but then...}

        * {loops} [Something catches Alexis' attention.]
                    -> attention



    -   -> opts

    = attention
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "What is it?" asks Mia, seeing Alexis look past her.

        Alexis reaches for the binoculars. "Look over there," she says pointing. Mia looks and sees in the distance...

            * [A flock.]
                -> sees_creatures
            * [A bright flash.]
                -> sees_mirror
            * [Red smoke.]
                -> sees_flare


=== sees_creatures ===
    -   CHR_ALX_REL
    -   CHR_MIA_SUR
    -   "It's the creatures!" Mia exclaims. "I mean the drones," she adds correcting herself.

        "Six of one... half a dozen of the other," says Alexis taking the wheel and hitting the throttle. "Either way, we're outta here."

        *  [The engine revs.]
        -   CHR_ALX_REL
        -   The engine revs and the boat zooms south.

            But Alexis had been planning for just this possibility, and she has something up her sleeve. Estimating their current position with respect to the objects in pursuit...

            - (opts)

                * [Alexis slows the boat.]
                Alexis slows the boat, letting the creatures gain on them. -> adjusts

                * (adjusts) [Alexis adjusts course.] {Turning the wheel, Alexis adjusts course, putting the boat on a parallel course to the island about a half mile off her port.| Alexis waits and watches the flying objects.}

                * {adjusts} ["What are you doing?!" asks Mia.]
                        -> what_doing

            -   ->  opts

== what_doing ==
    -   CHR_MIA_SUR
    -   CHR_ALX_REL
    -   "Why are you slowing and turning?" asks Mia in a panic. "It's like you want them to catch us."

            - (opts)

                * [Alexis grins.]
                --  CHR_ALX_SML
                "I want them to chase us, not catch us," she says. -> what

                * (what) [Mia's face is full of doubt.] {"Trust me. I have a plan." Alexis makes a small adjustment to the throttle while keeping an eye on the pursuers.| "You know... a little cat and mouse action." }

                 * {what} ["Are you serious?" says Mia.] -> alexis_plan

            -   -> opts

== alexis_plan ==
    -   CHR_ALX_REL  
    -   "Look, we know we can outrun them because we proved that yesterday," Alexis says. "But I'm guessing they also have a range limit and a limited flying time."

        -   (opts)

                * [The pursuers bank.]
                    The pursuers bank in response to the boat's change in course. -> boat

                * (boat) [The boat cruises steady.] {The boat cruises steady, and the pursuing swarm tries to close the gap.|The <i>Lakesong's</i> speed makes it difficult for the pursuers to gain on the boat, as they continue to bank and cover more distance.}


                * {boat} ["Like a triangle," says Mia.]
                    -> visualize_tri

        -   -> opts

== visualize_tri ==
    -   CHR_MIA_REL
    -   Mia nods as she visualizes a triangle with the path of the pursuing swarm forming the hypotenuse.

        "The creature-drones have to cover more and more distance to catch us," she says, "but at our speed, they can't."

        *   ["Bingo!" says Alexis.]
            -- CHR_ALX_SML
            "And we can still increase speed if needed," Mia says. "Meanwhile, we stay close to the island the whole time."

                ** [Alexis's plan pays off.]
                    -> plan_works

        = plan_works
        -   CHR_ALX_REL
        -   Eventually, the creature-drones abandon their pursuit and peel off on a course straight back to the island.

                * ["Running low on power I suspect," Alexis says.]
                "Carrying that extra weight of the disguise has to degrade their flight time and speed," says Alexis.

                    ** ["Speaking of time...?" says Mia.]
                    --  CHR_ALX_REL

                    Alexis checks her watch.

                    "Perfect timing," she says. "We'll arrive at the cove right at the planned hour."

                        *** [Change course for a return to the cove.]
                            -> see_something

== see_something ==
    -   Alexis steers the boat back toward the cove.

        -   (opts)

            * [Mia grabs the binoculars.]
                "You see something?" asks Alexis as Mia brings the binoculars up. -> horizon

            * (horizon) [Mia shields her eyes with her hand.]
                    {Mia scans the horizon, then focuses on a spot in the distance.|"It's another boat in the distance." says Mia. }

            * {horizon} [Alexis squints.]
                        -> boat_in_distance

        -   -> opts

== boat_in_distance ==
~ what_saw = BOAT
~ where_saw = DISTANCE
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "That's a boat for sure," says Alexis. Mia hands her the binoculars.

            * ["Recognize the driver?" Mia asks.]

        {shuffle:

            - -> cletus_in_distance

            - -> mac_in_distance

            - -> ian_in_distance

        }



=== cletus_in_distance ===
~ who_saw = CLETUS
    -> i_think_it_is

=== mac_in_distance ===
 ~ who_saw = MAC
    -> i_think_it_is

=== ian_in_distance ===
 ~ who_saw = IAN
    -> i_think_it_is


== i_think_it_is ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "I think it's {who_saw}," says Alexis.

        * ["That's what I thought, too," says Mia.]

        {

            - cletus_in_distance:
            "Kind of strange to find {who_saw} out here after all his stories about how spooky Kalkomey Isle is," says Alexis.
                ** ["He's the last person I want to run into out here," says Mia.]
                    "{who_saw} seems a bit odd."
                    "That's an understatement," says Alexis with a laugh.
                    -> spotted_us

            - mac_in_distance:
            "I wonder what {who_saw} is doing out here," says Alexis.
            "Well, he did say he comes out this way to fish," says Mia.
                ** ["Yeah, but he's not fishing now," says Alexis]

                    -> spotted_us

            - ian_in_distance:
            "That's a coincidence," says Alexis. "I mean, just yesterday {who_saw} said he'd never been to Kalkomey Isle."
                ** ["Technically, it was Maura who said that," says Mia.]
                    "Well, it's just {who_saw} on that boat," Alexis says. "I wonder where Maura is?"

                    -> spotted_us

        }

        = spotted_us
        * ["You think he spotted us?" asks Mia.]
            --   "I don't think he saw us," says Alexis. "{who_saw} is going the other way, and judging by the wake, he's in a real hurry."

                ** [They turn their attention to the cove ahead.]
                    -> nearing_the_cove


=== sees_mirror ===
~ what_distract = FLASHING
    -   CHR_ALX_REL
    -   CHR_MIA_REL

    -   "Something's flashing," says Mia. "Do you think it's someone signaling with a mirror?

            * ["Could be," says Alexis.]
            "Though the flashes seem too sporadic to be a signal," she says.

        -   (opts)

            *   [Mia tries the binoculars.]
                Mia takes a look through the binoculars and sees another flash. -> flash

            *   (flash) [There's another flash.] {"There it goes again... it does seem random," Mia says.|"Whatever it is, it's pretty far away."}

            *   {flash} ["Now we have a decision," says Alexis.]
                    -> investigate_flash_or_not

        -   -> opts

== investigate_flash_or_not ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "Do we investigate or not?" asks Alexis.
        The two friends consider the possibilities.

        - (opts)
                *  [What if it is a signal?]
                   "The lack of a pattern could be because the person signaling is hurt," says Mia, "or in some other trouble preventing a routine signal."
                *    [What if it's the boat thieves?]
                    "It could have something to do with the thieves," says Alexis, "which could help us."
                    "Or not," says Mia, "if we got caught."
                *    [What if it's nothing?]
                    "If it turns out to be nothing, then we'll have wasted time," says Mia. "And that signal looks far away, which could mess up the plan to meet Julian and Troy on time."
                // We require the player to ask at least one question
                *    {loop} [Enough considering.]
                    -> done
            - (loop)
                // loop
                { -> opts | -> opts | }
                They see another flash, which doesn't make the decision any easier.

            - (done)
                They decide to...

                * [Pass.]
                    -> no_investigate
                * [Investigate.]
                    -> investigate



=== sees_flare ===
~ what_distract = SMOKE
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "Is that smoke?" asks Mia.
    -   "Yeah, and it looks reddish," says Alexis, "It could be from a flare."

        -   (opts)

            * [Mia reaches for the binoculars.]
            Mia watches through the binoculars as the last of the smoke fades out. -> smoke

            * (smoke) [The smoke quickly dissipates.] {"I think you're right that it's red smoke—or was," says Mia.|"It's really far away, though, and now it's gone, so can't say for sure."}

            *  {smoke} ["We have to investigate," says Alexis.]
                -> investigate_smoke_or_not

        -   ->  opts

== investigate_smoke_or_not ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "If we think that's from someone in distress," says Alexis, "we're going to have to go that way and check it out."

            * ["But we're not sure," says Mia.]
                "Wouldn't a VDS be more obvious and last longer?" asks Mia. "Also we have to consider the safety of Julian and Troy. We can't put their recovering at risk."

                ** ["Good point," says Alexis.]
                "Maybe we just caught the tail end of the VDS, or it was a dud," she says. "We should have enough time, though, to get there and back."

                    *** [Mia nods.]
                    "If you're sure..." says Mia.
                    "Well, I'm not sure-sure," Alexis says, suddenly feeling less confident.
                    They decide to...

                        **** [Pass.]
                            ~ investigate_distraction = 0
                            -> no_investigate
                            
                        **** [Investigate.]
                            ~ investigate_distraction = 1
                            -> investigate



== investigate  ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Having decided to investigate the mysterious {what_distract}, Alexis adjusts the <i>Lakesong's</i> course.
        "This will take us back toward where we were yesterday, right?" asks Mia.
            * ["Yes," says Alexis.]
                -> to_beach

        = to_beach
        -   CHR_ALX_REL
        -   "The {what_distract} looks to be back toward that beach," says Alexis. "We'll need to keep a good lookout for the hazard markers over near the sandbars."

                * [The <i>Lakesong</i> cruises west.]
                    -> approach_beach


        = approach_beach
        -   Eventually, they do approach the same beach, but they are farther out, where the water is deeper. They encounter no sandbars or other hazards.

                *   ["Strange," says Alexis.]
                    -- CHR_ALX_SAD
                    "There's no longer any sign of {what_distract} {sees_flare: or anyone in distress}," Alexis says with a sigh. "I guess this was a goose chase after all."

                ** [Alexis turns the wheel.]
                    Alexis begins a turn back toward the cove.

             -   (opts)

                * [Mia grabs the binoculars.]
                "You see something?" asks Alexis, as Mia brings the binoculars up. -> horizon

                * (horizon) [Mia shields her eyes with her hand.]
                    {Mia scans the shoreline and the beach, focusing just at the treeline.|"I think someone is on the beach," says Mia. }

                * {horizon} [Alexis squints.]
                        -> someone_on_beach

        -   -> opts


== someone_on_beach ==
~ where_saw = BEACH
   -    "There's somebody there alright," says Alexis. Mia hands her the binoculars.

            * ["Do you recognize who it is?" Mia asks.]

          {shuffle:

                    - -> cletus_on_beach

                    - -> mac_on_beach

                    - -> maura_on_beach

                }



=== cletus_on_beach ===
~ who_saw = CLETUS
    -> i_think_on_beach

=== mac_on_beach ===
 ~ who_saw = MAC
    -> i_think_on_beach

=== maura_on_beach ===
 ~ who_saw = MAURA
    -> i_think_on_beach


== i_think_on_beach ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "I'm not one hundred percent, but I think it's {who_saw}," says Alexis.

        * ["That's what I thought, too," says Mia.]

        {

            - cletus_on_beach:
            "Kind of strange to find {who_saw} out here after all his stories saying how spooky Kalkomey Isle is," says Alexis.
                ** ["He's the last person I want to run into out here," says Mia.]
                    "{who_saw} seems a bit odd."
                    "That's an understatement," says Alexis..
                    -> spotted_us

            - mac_on_beach:
            "I wonder what {who_saw} is doing out here," says Alexis.
            "Well, {who_saw} did say he comes out this way to fish regularly," says Mia.
                ** ["Yeah, but he's not fishing now," says Alexis]

                    -> spotted_us

            - maura_on_beach:
            "How ironic," says Alexis. "I mean just yesterday {who_saw} said she'd never been to Kalkomey Isle."
                ** ["And by herself?" says Mia.]
                    "Seriously, {who_saw} didn't strike me as the strong, independent type," Alexis says.
                    -> spotted_us

        }

        = spotted_us
        * ["You think we've been spotted?" asks Mia.]
            --   "Maybe," says Alexis. "Although {who_saw} looks to be focused on something... but I can't get a clear view of what."

                ** ["We should head back," says Mia.]
                -- "We want to make sure we get back to the cove in time," Mia says.
                    "Agreed," says Alexis.


                    *** [Head to the cove.]
                    -> nearing_the_cove



== no_investigate ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Since it's not clear that the {what_distract} they saw was actually some sort of signal, Mia and Alexis choose not to investigate. They are concerned about the safety of their own fellow crew members—Julian and Troy on the kayaks—and want to be certain to meet at the planned time in the cove.

            * [They wait and circle.]
            As they bide their time waiting for the rendezvous, they see no more {what_distract} or anything else noteworthy. They are anxious to learn if Julian and Troy found anything interesting.

                ** [Return to the cove.]
                    -> nearing_the_cove
                    
                    