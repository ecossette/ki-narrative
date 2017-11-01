// Act 04, Scene 5
// recovery occurs in this scene




=== wait_for_mia_alexis ===
// Troy and Julian returned to the cove after turning back from following the stream far enough to encounter thieves. We'll join the girls on the Lakesong. 

-   To be written: join Mia and Alexis on Lakesong as the rendezvous hour approaches and they make their way to the cove. They'll find the cove full of patchy fog such that they can't see the entire cove. They'll need to use the signal horn. As they are about to blow the signal, they hear a boat motor, but can't see a boat. They boat sound gets closer and then slowly fades in the distance. After recovering the two boys, they'll all discuss hearing this boat. Troy and Julian will tell the girls about the hidden stream. 
// alt to above the above
Troy and Julian wait for Mia and Alexis.
With the cove still shrouded in fog, the visibility is limited. They won't be able to see the Lakesong enter, nor will Mia and Alexis be able to spot the kayaks. They'll rely on sound signals. 

        In the distance, they hear the sound of a boat engine.
        
        The sound become louder as it approaches. 
        That must be them now! Julian says and he reaches for the whistle. 
        Hold up, says Troy. That doesn't sound like the Lakesong... 
        They both wait, hidden in the fog as the unknown boat approaches then recedes deeper into the cove where it slows then picks up again before gradually fading out. 
        
            They must have gone up the stream! That change in engine pitch was them slowing to go through the vine curatain. 
            The thieves must have a hideout in there. We just didn't go far enough. 
            
            We're lucky we didn't get caught on the stream.
            And we're lucky it's still foggy.
            
           After a few minutes they hear another boat approaching.
           
           Now that sounds more like the Lakesong, says Troy. But let's wait for the signal.
           
           Toot. Toot.
           
           They hear two short toots of a boat horn.
           "One thousand one, one thousand two,..." Julian counts aloud, "one thousand three—"
           
            Tooooot.
            One long toot is heard at the three second mark. 
            That's them! Troy nods. Blow the whistle.
            
                Aboard the Lakesong.
                After safely boarding the Lakesong, Alexis immediately begins driving the Lakesong out of the cove while Julian and Alexis finish securing the kayaks. 
                
                    Julian and Troy tell their story.
                    Julian and Troy tell the two girls about finding the vine curtain and the hidden stream beyond. They also mention hearing but not seeing a boat enter the cove shortly before Mia and Alexis arrived. 
                    
                    // will shuffle
                        // fog cleared or fog persisted
                        
                            // if fog persisted
                                // {who_saw} in the fog
                                
                            // if cleared
                                // {who_saw} in clear 
                                
                            // may be possible to put the above in a single shuffle?
                            
                    Mia and Alexis tell their story. 
                    
                    Mia and Alexis explain how the fog {cleared|persisted} and of their {encounter with | sighting of} {who_saw} {where|}. 
                        if fog:
                            we are pretty sure {who_saw} realized the two of you were off on the kayaks.
                        if clear:
                            if on beach and went to beach: I wonder if the beach connects to wherever the stream leads?
                                    if went to path: remember those ATV tracks we saw?
                            if on beach but no go beach: In hindsight, I wish we would have explored the beach yesterday. 
                            
                    Return to Laketown. 
            
            
            
            

// randomizer needed for what girls saw as player will not have accompanied them. 

    They'll take the Lakesong back to Laketown. 
    
-> DONE

=== nearing_the_cove ===
// entering the cove in fog, sounding signal, getting no response
// this is reusable multi paths
    -   As they near the cove, they are not surprised to find that it's still shrouded in fog. 
                
            -   (opts)
                
                *  [Mia takes a couple photos.] 
                    Mia takes a couple photos of the last of fog shimmering in the cove against the bright green of the island. -> shudders
                        
                *   (shudders) [The boat shudders.] {The boat shudders and Mia grabs for a rail to steady herself, as they quickly pass through the same cross current they've felt before.| "It's really pretty," she says.} 
                        
                *   {shudders} [Alexis slows the boat.]
                    -> use_the_horn
                        
            -   -> opts  
            
            
            
== use_the_horn ==
    -   "We'll need to signal with the horn per the plan," says Alexis easing back on the throttle as the visibility once again decreases, "but Julian was right that the fog will help us stay hidden." 
            
            *  The Lakesong slips into the foggy cove.[]
            
                -   (opts)
                    
                    **  [Keep a sharp lookout.]
                        Mia helps Alexis keep a sharp lookout. -> slow
                        
                    **  (slow) [Slow down even more.] {Alexis brings the throttle back almost to idle, giving the boat its slowest possible forward speed so as not to accidentally overrun the kayaks.| Alexis suspects Troy and Julian will be waiting closer to the shore, but the kayaks could be anywhere in the cove.}
                        
                    **  {slow} [Listen.]
                                -> listen
                
               -    -> opts
  
    
            = listen
            -   They both listen intently for the possiblity of another boat or maybe a signal from the guys. 
            
                * [Alexis moves the throttle to idle.]
                "This is far enough, she says. "If they're in the cove, they'll have heard us and be waiting for our signal."
                
                    ** [Alexis gives the signal.]
                        -> gives_signal
                    
            = gives_signal
            -   Alexis gives three quick toots with the horn, waits three seconds and then gives a long one, the agreed upon signal. 
            
                *  [There is no response.]
                    -> no_response
                
== no_response ==
-   They don't hear or see any signal from Julian and Troy.
            
                - (opts)    
                    * [Wait.]
                    Alexis counts off to fifteen in her head, just to make sure she's giving the guys enough time to respond.->cut
                    
                    * (cut) [Cutoff the engine.] {"Let's try cutting the engine," says Alexis."We should be able to hear a whistle with the engine idling, but you never know." Alexis cuts the engine.|"C'mon guys, signal already."}
                    
                    
                    * {cut} [Signal again.] 
                            -> signal_again
                
                -   -> opts
                
== signal_again ==
    -   Alexis signals again but even with the engine silenced, they are unable to hear any response from Julian and Troy. She waits a few minutes and tries again, but still there is no answer. 
                
            - (opts)
                
                    * [Try again.]
                    Alexis gives it one final shot. The horn blares as the Lakesong floats in silence, barely moving in the still cove. -> give_up
                
                    * (give_up) [Give up.] {"We have to face the facts," says Alexis. "They aren't in the cove." Mia lets out a frustrated sigh.|"Again nothing," says Alexis with an edge of anxiety in her voice.} 
                
                    *   {give_up} [Leave the cove.]
                            -> leave_cove
                
            -   -> opts
    
    
== leave_cove ==
-   "That was the plan," says Alexis as the Lakesong slips out of the cove. "If we don't find them at the appointed time, we leave the cove and return in an hour."
            
            -   (opts)
            
                    * [Mia is troubled.]
                    "That plan sounded good until now," says Mia.-> hour
                
                    * (hour) [Alexis steers for open water.] {The boat slips out of the cove and into the open water of the lake.|"An hour seems like a long time."}
                
                    * {hour} [Alexis checks her watch.]
                                -> tweak_plan
                
            -  -> opts
                
== tweak_plan ==
    -   "Accounting for the time we spent in the cove, it's really less than an hour before we'd return," says Alexis. "But that does seem like a long time. Let's shoot for thirty minutes instead."
    
            "It's not just the time," says Mia.
            
            "If they're not in the cove, then where are they?" says Mia.
                
            Alexis increases speed. 
            {Alexis increases speed, leaving the cove behind. "I'm sure they're fine, Mia," says Alexis aware of Mia's stress.|"They obviuosly found something, went off on foot, and lost track of time." Alexis says."That's why Troy planned for two different meeting times."}
            
            
            
            
            * [They cruise away from the island.]
            After putting the island about half a mile behind them, Alexis makes a shallow turn to port, and begins a slow loop back to the cove. Her words have calmed Mia, but she wishes she was as confident as she had forced herself to sound. Alexis is worried, too. She hadn't expected Troy to miss the first rendezvous.

            -   (opts)            
                    
                    *   [A black speck appears.]
                        High overhead a black speck appears.-> fog 
                        
                    *    (fog) [The cove remains in fog.] {While the fog lingers over the not too distant cove, in the open waters the visibility is good in every direction, including straight up.| The speck is directly above the boat, matching their speed and course.}
                        
                    * {fog} ["We have company."]-> drone
                        
            -   -> opts
                    
== drone ==
            Mia points skyward. "Drone?" she asks. 
            "Hard to tell it's so high," says Alexis, looking at the object overhead. "Could just be a bird."
            
            -   (opts)
                * [Try the binoculars.]
                    "Even with the binocs, I'm not 100% sure," Alexis says after taking a look and handing the binoculars to Mia for a try. -> course 
                    
                * (course) [Change course.] {Alexis changes course and speed to see if the object in the sky mirrors the changes.| It takes Mia a bit to get the focus right on account of her glasses.} 
                
                * {course} ["It's moving away," Mia says.]
                        -> moving_away
                        
            -   -> opts
                
            = moving_away
            Mia continues tracking the object. "I do think it's a drone and not a bird based on it's flight characterists," she says, "but it's definitely heading back toward the island."
            
                * [Alexis adjusts back to the previous course.]
                
            = adjust_to_previous
            Alexis puts the boat back on a course toward the cove. "If it is a a drone—which I agree it probably is—it wouldn't need to stay directly overhead to keep tabs on us from that altitude."
                
               At least there's only one. 
               For now, at least. they both think silently. 
                
                
                
                
                
                

-> DONE