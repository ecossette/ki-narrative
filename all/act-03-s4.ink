/*------------------------

ACT 03
SCENE 04

*/

=== enter_the_path ===
// SND bring in buzzing sound very low
    -   CHR_ALX_SUR
    -   The path winds deeper into the island.
        "Look at the size of those trees!" says Alexis.

            * ["Shh... listen? You hear that?" asks Mia.]
                -> hear_that

        = hear_that
// SND buzzing sound a bit louder but still in distance
        -   CHR_ALX_REL
        -   CHR_MIA_REL
        -   Mia stops and holds up her hand, cupping her ear, listening. She points up to the top of the hill the path is winding around. "It's a buzzing... from up there."

                *   ["Probably just a bee hive. A <i>large</i> bee hive," says Troy.]
                    -> just_bee_hive


        = just_bee_hive
        -   CHR_TRO_REL
        -   CHR_MIA_REL
        -   "Late afternoon is an active time for bees," says Mia.
            "Yes. If we don't disturb them, they won't bother us," says Troy. "C'mon, let's see what's on the other side of this hill."

                * [Julian scans the tree canopy.]
                    -> jul_mumbles

        = jul_mumbles
// SND buzzing sound go to slow fade out
        -   CHR_JUL_SAD
        -   From the rear, Julian scans the trees above, his eyes darting side to side quickly. "Part falcon, part bat, part hornet..." he mumbles to himself.

            "What's that, Julian?" asks Troy.

                * ["Oh, nothing..."]
                    -> jul_nothing

        = jul_nothing
        -   CHR_JUL_SAD
        -   CHR_TRO_REL
        -   "I was just thinking about how I signed up to go boating and not nature hiking," says Julian.

            "I hear you," says Troy. "We'll head back soon. The fog seems to be breaking up, finally."

                *   ["Look, there's a clearing ahead," says Alexis.]
                    -> clearing_ahead

        = clearing_ahead
        -   CHR_ALX_SML
        -   CHR_TRO_REL
        -   The path leads out of the forest and into a small clearing that looks down upon a large cove.

            "What a view!" says Alexis. "I didn't realize we'd climbed so high."

            "The fog is mostly gone up here," says Troy, "but look how it's still lingering over the water down there."

                * ["There's a boat entering the cove," says Alexis.]
                    -> boat_in_cove

        = boat_in_cove
        -   CHR_ALX_SML
        -   CHR_TRO_REL
        -   They watch as the boat slips in and out of the remaining fog patches. It's heading deep into the cove, toward the shoreline.

            "That's a good-sized boat," says Alexis. "But where are they headed?"

                *   ["What the heck?" says Troy.]
                    -> going_run_aground

        = going_run_aground
        -   CHR_TRO_SUR
        -   "They are going to run aground!" he exclaims.

            But the boat doesn't run aground. Instead, it simply vanishes where the fog and shoreline meet!

                *   ["Did you see that?" asks Alexis.]
                    -> see_that

        = see_that
        -   CHR_ALX_SUR
        -   CHR_TRO_SUR
        -   "I see it, but I don't believe it," says Troy. "Maybe it's just hidden by the fog?"

            *   Suddenly the last of fog clears away[.], revealing a bright blue afternoon sky and the lush beauty of the island. The boat is nowhere to be found.
// SND can bring back in some bird sounds, not too loud
// SND also bring in buzzing sound, distant

                **  "How strange," says Troy[.], looking out over the empty cove.

                    *** ["Know what else is strange?"]
                    -> know_else_strange ->
                    -> everybody_looks_tro

            = everybody_looks_tro
// SND increasing buzzing
            *   [Everyone turns to Troy.]
                -- CHR_TRO_REL

                "OK," says Troy. "When I say run, run."

                    ** [Got it!" they say in unison.]

                        *** ["RUN!!!"]
                            -> run_away



  === know_else_strange ===
        - CHR_MIA_REL
        - CHR_ALX_REL
        - Mia points high over the island. "Look at those strange birds over there in the distance."
        Alexis nods in agreement and makes a couple observations.

        - (opts)
            *    ["They don't fly like birds."]
                -- CHR_ALX_REL
                "They're flying more like a swarm than a flock..." -> creatures

            *    (creatures) ["They don't sound like birds."] {Alexis notices something else. "And that sound! Birds don't buzz like that."| says Alexis, "more like really large bees."}

            *    {creatures} ["Those are the creatures!"] -> coming_this_way_fast

        -     -> opts

        = coming_this_way_fast
        -   CHR_JUL_SUR
        -   "Part falcon, part bat, and part hornet!" says Julian. "Just like Cletus described!"

            *  "They're coming this way," says Mia.[] "And fast!"

        - ->->
// end strange birds tunnel

=== run_away ===
// SND drones/buzzing closing in
    -   Mia, Alexis, Julian, and Troy begin running back to the forest opening. The pursuing flying creatures close in with their terrible buzzing sound.

            * The creatures dive[.] and swoop low overhead. The friends run stooped-over to avoid the creatures' sharp, falcon-like talons!

                ** [Mia shrieks.]
                    -> mia_shrieks

        = mia_shrieks
        -   CHR_MIA_SUR
        -   CHR_TRO_REL
        -   Mia trips over a root and falls. Troy helps her up.

                    "Hurry, Mia," he says. "We're almost there."

            *   [Final sprint to the forest path.]
                -> reenter_forest_path

        = reenter_forest_path
        -   Although the flying creatures chase them the entire way, the friends make it to the path at the edge of the forest.
// SND remove much of drone/buzz



                * [They push on.] Several determined creatures continue the chase down the path and into the forest, while the rest of the swarm circles menacingly above the treetops.
// SND just a few drones remain


                    ** [Continue running.]
                        -> creatures_turn_back



        = creatures_turn_back
        -   Soon the forest undergrowth becomes too thick for even for the most persistent of the creatures.

            * "They are turning back!" says Alexis.[] "We made it."


                    ** [Mia takes a photo burst.]
                        -> mia_photo_burst

        = mia_photo_burst
        -    Mia reaches for her phone and takes a quick photo burst of the departing creatures.
// SND fade out the drones/buzz
            * ["Good thinking, Mia!" says Alexis.]
                -> catch_breath

        = catch_breath
        -   CHR_ALX_SUR
        -   CHR_MIA_SAD
        -   "I can't wait to take a closer look at these monsters—when I'm not being chased down by them!"
        -   "I'm not sure how good the photos will be," says Mia, opening her photo app. "There isn't much light and they were moving fast."

                * ["It's going to be getting dark soon," says Troy.]
                    -> dark_soon

        = dark_soon
        -   CHR_TRO_REL
        -   CHR_JUL_SML
        -   "We can look at the photos later," he says. "Right now we need to get back to the boat."
            "You don't have to tell me twice," says Julian. "The last place I want to be is Kalkomey Isle after dark!"

                * [Onward!]
                    -> find_paddleboards_return

        = find_paddleboards_return
        - Luckily, there is no sign of the flying creatures at the beach.

         They find the paddleboards just as they left them, and quickly paddle back to the <i>Lakesong</i>.

            *  ["Prepare to retrieve the anchor," says Troy.]

                -> prepare_retrieve_anchor




=== no_go_island ===
// add to other water activities badge
-   SYS_ACHIEVE_5_3
// SND just light water bg sounds here
    -   Having decided not to explore the island, the friends pass the time waiting for the fog to clear by playing cards.

        * [The fog begins to clear.]
            -> fog_clears


=== mount_paddle_return_early ===
    - The friends re-board the <i>Lakesong</i> and stow the paddleboards. To pass the time until the fog clears, they begin to play cards.

         * [The fog clears.]
            -> fog_clears

== fog_clears ==
    -   While the island remains foggy, over the lake and around the <i>Lakesong</i> the fog finally begins to burn off.
// SND can bring back bird sounds here

        *  ["Prepare to retrieve the anchor," says Troy.]
            -> prepare_retrieve_anchor


=== prepare_retrieve_anchor ===
// this is dual use. used after isle exploration as well.
// SND engine sound
    -   CHR_TRO_REL
    -   "I'll position the boat directly over the anchor, while Julian pulls in the line," says Troy.

        * [Troy starts the engine.]
            -> position_over_anchor

    = position_over_anchor
    -   CHR_TRO_REL
    -   At a slow speed, Troy maneuvers the boat directly over the anchor, the first step to safely retrieve an anchor.

            * ["OK, Julian," says Troy. "Pull in the line."]
                -> pull_in_line

    = pull_in_line
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   "And pull it straight up," he says. "That should break it free."


            * Julian tugs on the line[.], but it doesn't budge.

                    ** ["Let me help," says Alexis.]

                -> alx_helps_pull

    = alx_helps_pull
    -   CHR_ALX_REL
    -   CHR_JUL_SAD
    -   Alexis and Julian both pull on the rope but are unable to break the anchor free.

            * ["It's stuck solid, Troy."]
                -> anchor_stuck

    = anchor_stuck
    -   CHR_JUL_SAD
    -   CHR_TRO_SUR
    -   "OK, I've got an idea," says Troy.

        To free the anchor Troy will...

        // these options need to be random order

            +   [Turn the boat in a large circle while keeping the anchor line pulled tight.]

                // launch achievement congratulations banner: earned 75% of Safe Boat Operation badge, after student closes banner model

                    -> tro_turns_large_circle

            +   [Gun the engine and go full speed ahead to force the anchor free.]

                Gunning the engine with the anchor stuck could damage the boat.

                Troy turns the boat...

                    ** [In a large circle.]
                        -> tro_turns_large_circle

                    ** [In a tight circle.]
                        Turning in a tight circle doesn't keep the line tight.

                        *** [Troy turns in a <b>large</b> circle.]
                            -> tro_turns_large_circle


            +   [Turn the boat in a tight circle while jiggling the line.]
                Troy needs to keep the line tight to free the anchor, and turning in a small circle won't help.
                     ** [Troy turns in a <b>large</b> circle.]
                            -> tro_turns_large_circle





    == tro_turns_large_circle
    // Need to insert SYS here to bring topic 4 to 75%
    -   CHR_TRO_REL
    -   Turning in a large circle while keeping the line tight offers Troy the best chance for freeing the stuck anchor.

            * [The anchor breaks free.]
                -> anchor_free


                    // need to account for a path of getting chased after

    == anchor_free ==
// add to safe operation achievement
-   SYS_ACHIEVE_4_4
    -   CHR_JUL_SML
    -   Julian hauls in the anchor.
    -   The fog continues to gradually break up. Some areas are clear, but other areas in the vicinity of the island are still patchy with fog.

            * ["Looks like the clearest path now is east-southeast," says Troy.] -> when_fog_permits

        = when_fog_permits
        -   CHR_TRO_REL
            "As soon as things are clear, we'll turn on a course to take us straight back to Laketown."

                *   ["Good plan," says Alexis.] -> good_plan_no_sand

        = good_plan_no_sand
        -   CHR_TRO_REL
        -   CHR_ALX_SML
        -   "We don't want to risk hitting another sandbar," she says.

            "Or anything else," says Troy. "Those storms might have churned up debris."

                * [The <i>Lakesong</i> travels east-southeast.]
                     { enter_the_path:
                        -> creatures_appear_again

                        - else:

                        -> ls_travels_east

                    }


        // explore island can't see this next part


== ls_travels_east ==
// bring in some bird ounds
    -   CHR_MIA_REL
    -   More of the island comes into view on the port side, as the fog continues to burn off.

            "It looks like we are approaching an island cove ahead," says Mia.

                * ["I see it, too," says Troy.]
                    -> still_fog_cove

        = still_fog_cove
        -   CHR_TRO_REL
        -   CHR_MIA_REL
        -   "There's still a lot of fog in the cove," says Troy, "so it's impossible to see how deep it goes."

                * ["Look, another boat!" says Mia.]
                    -> another_boat


        = another_boat
        -   CHR_ALX_REL
        -   CHR_TRO_REL
        -   In the distance they see a boat slipping in and out of the remaining fog patches, cruising toward the island.
        -   "That's a good-sized boat," says Alexis. "Does he see us?"

                * ["I don't think so," says Troy.]
                    -> no_cross_paths

        = no_cross_paths
        -   CHR_ALX_REL
        -   CHR_TRO_REL
        -   "But we are in no danger of crossing paths at this speed and distance," he says.

             "That boat looks to be heading straight for the cove," says Alexis.

            The friends look on as the other boat slips into the fog and out of view.

                    ** [The <i>Lakesong</i> continues.]
                        -> draws_abeam

        = draws_abeam
// SND back to clear weather sounds: birds, water, engine
        -   The last of the fog burns off just as the <i>Lakesong</i> draws abeam the mouth of the cove. The blue sky and warm afternoon sun are a welcome sight to the friends, who take in the lush beauty of the tranquil island.

                        * ["Hey, where did that other boat go?" says Alexis.]
                            -> where_other_boat

        = where_other_boat
        -   CHR_ALX_SAD
        -   CHR_TRO_SUR
        -   "A large boat like that just can't disappear," she says, scanning the empty cove.
        -    "And we'd have seen it coming back out," says Troy. "That's strange."

                * ["Know what else is strange?"]
                    -> know_else_strange ->
                    -> tro_on_it_turns


=== creatures_appear_again ===
    -   It isn't long before the last of the fog clears. The four friends have a clear view of the island, and anything on the island has a clear view of them.

            * ["Oh, no!" says Julian.]
                -> tro_on_it_turns

=== tro_on_it_turns ===
// SND intro buzzing sound in distance
    -   CHR_TRO_REL
    -   "Those creatures are coming this way!" Julian points over the island. {run_away:"Here we go again!"}


    -   "On it," says Troy, turning the wheel to put the <i>Lakesong</i> on a course due south and away from the island. "Can I get some lookout help? These are unfamiliar waters."

        - (opts)
            *    ["I'll take port."]
                Mia volunteers to keep a lookout on the port side. -> starboard

            *    (starboard) ["I'll grab starboard."] {Alexis takes up watch on the starboard side.| Troy keeps his focus on the water in front of the boat.}

            *    {starboard} ["I'll watch the creatures!"] -> eye_creatures

        -     -> opts

== eye_creatures ==
-   SYS_CHAP_13
// this is where you can rejoin from explore island track
// SND drone sounds getting closer
    -   CHR_JUL_SUR
    -   Julian keeps his eyes aft of the boat, tracking the rapidly approaching swarm. It has cleared the island and now flies over open water in pursuit of the boat.

        "They're gaining on us!" yells Julian. "Can't we go any faster?"


                    + ["Yes and no," says Troy.] -> tro_yes_no

== tro_yes_no ==
    -   CHR_TRO_REL
    -   CHR_JUL_ANG
         "I'm still worried about possible propeller shaft damage from running aground," says Troy. "And we don't want to break down right here, right now!"

        {
            - yes_engine_problem:
                * [Julian agrees. "I can't argue with that."] -> tro_reconsiders_speed

            - else:
                -> jul_persists
        }

        = jul_persists

            - (opts)
                    *    [Julian shakes his head.]
                        Shaking his head, Julian watches the swarm closing the gap. -> persists

                    *    (persists) [Julian persists.] {"C'mon, Troy, not even a little bit faster?"| "That Cletus dude said the swarm chased him nearly as far as Laketown."}

                    *    {persists} [Troy reconsiders.] -> tro_reconsiders_speed

            -     -> opts



==  tro_reconsiders_speed ==
    -   CHR_TRO_REL
    -   {Troy can see that the swarm is slowly gaining on them, and he estimates they'll catch up to the boat very soon. He reconsiders the speed options and decides to...|Deciding against full speed, Troy instead chooses to...}

            * [Maintain the current speed.]
                -> chased_keep_current

            * [Speed up slightly.]
                -> chased_keep_current

            * [Go to full speed.]
                {   is_radio_damaged:
                    Just as Troy is about to put the throttle to full power, he remembers the radio is broken. If they break down in this part of the lake—where there is no cell phone coverage—they'll be unable to contact anyone for rescue!

                            ** [Go to full speed anyway.]
                                -> chased_go_full
                            ** [Try something else.]
                                -> tro_reconsiders_speed
                    - else:
                        -> chased_go_full

                }

=== chased_go_full ===
    -   CHR_TRO_REL
    -   Troy jams the throttle forward and the engine responds with a pleasing growl. The Lakesong's bow rises into plowing mode, so Troy continues adding power until he brings the boat into a faster planing mode.

    // we'll insert a quick just in time learning review option here.

        * [ Read more about how hulls operate.]
            - SYS_PDF_22
            ** [OK]
                -> hull_activity
        
        * [ Continue without reviewing hull modes.]
            -> hull_activity
                
    = hull_activity
        * [HULL minigame should go here]
            -> losing_them

    = losing_them
    -   CHR_JUL_SML
    -   "Great job, Troy! We're losing them!" Julian watches as the distance between the boat and the creatures grows.

        * Suddenly the boat shudders violently.[]

            ** Troy slows down.
                -> post_shudder_slow

            ** Troy maintains his speed.
                -> post_shudder_full

    = post_shudder_slow
    -   CHR_TRO_REL
    -   CHR_JUL_SML
    -   When Troy decreases the speed, the shuddering stops. But this creates another problem.

        "The creatures are gaining on us again!" says Julian.

            * [Troy nudges the throttle forward.]
                -> chased_increase_slightly



=== post_shudder_full ===
// SND put drone sound more distant
    -   The <i>Lakesong</i> continues to move quickly over the water, gaining more and more distance from the odd, flying creatures chasing them.

            { shuffle:
                - -> no_engine_problem
                - -> yes_engine_problem
            }

== no_engine_problem ==

        * [The shudder doesn't come again.]
            -> escape_from_creatures ("100 yards")

== yes_engine_problem ==

        *    Suddenly, an alarm sounds[.], and the engine cuts out, leaving only the buzzing of the rapidly approaching creatures.
            -> what_happened_engine
// SND kill engine sound

        = what_happened_engine
        -   CHR_ALX_SUR
        -   CHR_TRO_SUR
        -   "What happened, Troy?" asks Alexis.

            * ["I'm not sure," says Troy.]

        = not_sure_alarm
        -   CHR_TRO_SAD
        -   CHR_JUL_SUR
        -   "I've never heard that alarm before." Troy tries restarting the engine but has no success. "It's completely dead."

                    ** "And so are we," says Julian[.], as the flying creature quickly catch up to the stricken <i>Lakesong</i>.
// SND creatures/buzzing close
                    -> creatures_circle

        = creatures_circle
        -   CHR_MIA_REL
        -   CHR_ALX_ANG
        -   "They aren't trying to harm us, though," says Mia. She watches the creatures as they begin flying in a circular pattern a hundred feet or so overhead. "They are just circling!"

                * ["Like vultures," says Alexis.] -> like_vultures

        = like_vultures
        -   CHR_ALX_ANG
        -   CHR_JUL_SUR
        -   Alexis shudders as the menacing creatures continue buzzing overhead.

            "Look, a boat!" says Julian, pointing north toward the island.

            * ["That's a speedboat!" says Troy.]
                -> rescue_us

        = rescue_us
        -   CHR_TRO_SUR
        -   CHR_MIA_REL
// SND speedboat approach
        -   "And it's coming really fast," he Troy.
        -   "Coming to rescue us, I hope," says Mia.

             * ["It would appear not," says Alexis.] -> appear_not

        = appear_not
        -   CHR_ALX_ANG
        -   CHR_TRO_ANG
// SND kill speedboat
        -   As the speedboat draws close to the Lakesong, the friends see what Alexis means. Inside the speedboat are three figures with black ski masks hiding their faces!

                * ["Put your hands up and prepare to be boarded!"]
                    -> boarded_fate

        = boarded_fate
        -   The fate of the four friends is unknown, nor do we know what caused the <i>Lakesong's</i> engine to fail so suddenly and completely.

            Did Troy push the engine too hard? Was the engine somehow damaged when it ran aground, or sometime during the storm? Was it just a case of bad luck?

            We only know that this is not the ending anyone wanted.

                    * [Rewind to choose a different speed option.]

                        We'll rewind and pick up the action where Julian first spots the creatures pursuing the boat.

                            ** [Onward!] -> eye_creatures


=== chased_keep_current ===
// SND buzzing closer
    -   CHR_TRO_REL
    -   Troy keeps the current speed for now. He knows he still has time to evaluate the <i>Lakesong's</i> condition before the swarm of creatures overtakes the boat.

            * [Julian calls out the distance.]
                -> five_hundred_closing

        = five_hundred_closing
        -   CHR_JUL_SUR
        -   CHR_TRO_REL
        -   "Five hundred yards and closing!" says Julian.
        -   Troy keeps his focus on the sound and feel of the boat.

                * ["One hundred yards and closing!"]
                -   CHR_TRO_REL
                -   Troy bumps the throttle again and then a little more.
                        -> find_sweet_spot


=== chased_increase_slightly ===
    VAR speed_increase_slighty = true
    -   CHR_TRO_SUR
    -   Troy decides to increase the speed slightly to see how the boat performs.

        "Any luck, Jules?" asks Troy. His eyes are focused on the water ahead of the bow {chased_go_full: and he's listening to the engine}.

            *   ["Nope!"]

        = afraid_no_still_again
        -   CHR_TRO_REL
        -   CHR_JUL_SUR
        -    "They're still gaining on us!" says Julian.

                * [Troy adds more throttle]
                    -> find_sweet_spot


=== find_sweet_spot ===
    -   CHR_TRO_REL
    -   CHR_JUL_SUR
    -   By gradually increasing speed, Troy hopes he can find the sweet spot where the <i>Lakesong's</i> speed matches that of the flying creatures in pursuit{chased_go_full: without causing the boat to shudder again}.

        {
            - chased_increase_slightly:
            -> it_is_working


            - chased_go_full:
            -> that_is_doing_it

            - else:
            -> buzzing_sound_grows

        }


        = it_is_working
        -   CHR_JUL_SML
        -   CHR_TRO_REL
        -   "It's working!" says Julian. "They're still gaining, but not as quickly."

                    * [Troy adds more speed.]
                    -> escape_from_creatures ("50 yards")

        = that_is_doing_it
        -   CHR_JUL_SML
        -   CHR_TRO_REL
        -   "That's doing it, Troy," says Julian. "Just need a little more."

                    * [Troy bumps the speed up again.]
                    -> escape_from_creatures ("100 yards")

        = buzzing_sound_grows
        * ["Fifty yards!"]
          -- CHR_JUL_SUR
          -- CHR_TRO_REL
// SND buzzing much closer
          Julian shouts over the increasing buzzing sound of the flying creatures as they get closer and closer to the fleeing boat.

                        ** [Troy nudges the throttle again.]
                            -> escape_from_creatures ("25 yards")

=== escape_from_creatures (distance) ===
    -
        {
            - chased_go_full:
                "Bingo! Now we're gaining distance on them again!"

            - else:

            The <i>Lakesong</i> shudders {~violently|ominously} for a {~few seconds|brief moment}, giving everyone a scare, but then the boat continues smoothly on its southerly course.

        }

            * [The distance from the creatures gradually increases.] Julian watches as the swarm recedes. Then, one by one, the creatures begin peeling off and returning north.

                {
                    - enter_the_path:
                        ** [Mia reaches for her phone.]
                            -> mia_photo_burst

                    - else:
                        ** [Julian raises his arms in triumph.]
                        -> we_did_it

                }

        = mia_photo_burst
// SND creature sounds fading
        -   CHR_MIA_REL
        -   With her phone's camera, Mia takes a quick photo burst of the departing creatures.

             * ["Good thinking, Mia!"]
                -- CHR_ALX_SML
                -- CHR_MIA_REL
                "I want to get a better look at those things!" says Alexis.
                "No promises. The light isn't great and they were pretty far away."
                    ** ["Are you kidding me?"]
                        -> are_kidding_me



        = are_kidding_me
// SND buzz/creatures done
        -   CHR_JUL_SUR
        -   Julian saw things differently. "Those creatures were like right freaking on top of us!" he says.

                * ["More like {distance}," says Alexis.]
                    -> more_like

        = we_did_it
        -   CHR_JUL_SML

            * "We did it!" says Julian.[] "The mutants are flying back to their rotten island home."
                -> close_call

        = close_call
        -   CHR_MIA_SML
        -   CHR_JUL_SML
        -   "And not a moment too soon," says Mia.
            "Seriously, they were like right freaking on top of us!"

                * ["More like {distance}," says Alexis.]
                    -> more_like
        = more_like
        -   CHR_ALX_REL
        -   CHR_JUL_SAD
        -   "But {distance} is close enough, believe me." She can excuse Julian's exaggeration under the circumstances. The creatures gave everyone a fright.

                * ["And that shudder?" asks Mia.]
                  -> and_the_shudder


        = and_the_shudder
        -   CHR_MIA_WRD
        -   CHR_TRO_REL
            "Was that caused by the prop shaft?" she asks.

            "I don't think so, Mia... I think it was just a cross current, but now is a good time to check again for any damage from running aground earlier."

                * [Troy brings the <i>Lakesong</i> to a stop and inspects the boat.]
                    -> inspect_for_damage
