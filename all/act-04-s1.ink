/*------------------------

ACT 04
SCENE 01

*/

-> day_two_begins

=== day_two_begins ===
    -   CHR_TRO_REL

    {

        - is_radio_damaged:
        Troy arrives at the dock the early the following morning and begins work on swapping the damaged radio with a new one. The time passes quickly for Troy as he focuses on his task.
        - else:
        Troy arrives at the dock early the following morning and begins preparing the boat for another day on the lake, a day that will include a return to Kalkomey Isle.
    
    
    }

        * [Suddenly there is a great commotion.]
        
    = commotion
    "Fire!" he hears someone shout. "There's at the storage shed!"
    
    Troy looks and sees that a small fire has broken out on next to one of the storage sheds on the marina. Since he is closest to the fire, he grabs one of the fire extinguishers from the boat and rushes to the shed. 
    
        * [Put out the fire.]
            FPO: The fire suppression minimage launches here.
                **[OK.]
                    -> fire_contained
                    
== fire_contained ==
// need add to emergency procedures achievement here

    -   With the fire extinguished, Troy returns to the Lakesong, leaving the investigation to the cause of the fire with the fire department who arrived moments ago and thanked Troy for his quick action. 
    
        //* [Meanwhile, Mia, Alexis, and Julian arrive at the marina.]
        
    //= friends_arrive_
    - The three friends pass the boat ramp where there is a lot of morning activity. Some boaters are removing their boats—perhaps due to the robberies—while others putting their boats in the water for the day.   
       
      * ["Ahoy, Troy!"]
        
    = ahoy_troy
    -   Troy sees Mia, Alexis, and Julian approaching the Lakesong. 
    
        * ["Good morning!" says Troy. "Ready and rested?"]
    
    == kayaks_racked ==
    Alexis notices that two kayaks are now in the <i>Lakesong's</i> racks instead of the paddleboards from yesterday. 
     - (opts)
                *    ["So 'Operation Kayak' is a go?" says Alexis.]
                    -- CHR_TRO_REL
                     "Yes, we just need do our pre-departure check, fuel up, and then our plan is in motion," he says. -> smaller
    
                *    (smaller) ["They're smaller than I'd expected," says Mia.] {Troy looks at the kayaks and a sly grin appears on his face. "The kayaks are small, manueverable, and quiet. Exactly what we need."|"The kayaks are going to be perfect for investigating that cove."}
    
                { - is_radio_damaged:
                
                    *    {smaller}  ["Any luck with the radio?" asks Julian.] 
                            -> radio_fix_complete
                - else:
                    
                    *   {smaller} ["Are we ready to cast off?" asks Julian.]
                    
                }
        -     -> opts

        = radio_fix_complete
        - "I think so," says Troy, flipping the radio on. "It turns on but I'm going to need to test voltage, reception, and transmission. But we still need to run through the pre-departure checklist."
        
            -> same_checks
        
        = ready_cast_off
        - "Not quite," says Troy. "Remember we always need to run through the pre-departure checklist before casting off. I've started it, but we need to finish."
            -> same_checks
        
        
== same_checks ==
 
     - (opts)
                *    ["Want us to check the same things as yesterday," asks Mia.]
                    -- CHR_TRO_REL
                     "That'll be perfect," he says. -> bfa
    
                *    (bfa) ["I've already checked the lights," says Troy.] {Troy calls to Alexis. "Since I've already checked the lights, can you check the backfire flame arrestor instead?"|"I'm going to double check our kayak supplies, too."}
    
                *    {bfa} ["On it!" says Alexis.] -> backfire_review

        -     -> opts
        
        
        
        = backfire_review
        -   FPO: Link to study guide for backfire flame arrestor 
                    ** [OK.]
            
            
== check_conditions_day_2 ==
    -   With the pre-departure checklist complete, the four friends don their life jackets and prepare to cast off.
    
     * [Check the conditions.]
   
                 -> co_wind_direction ->
        
        -> toward_fuel
        
== toward_fuel ==
    -   Troy eases the <i>Lakesong</i> clear of the dock and makes way at <i>slow, no wake speed</i>. 
    
        They pass a boat ramp busy with morning activity. 
 
     - (opts)
                *    ["Have you ever launched a boat from a trailer," asks Julian.]
                    -- CHR_TRO_REL
                     "Oh, yeah, lots of times." says Troy. -> bfa
    
                *    (bfa) ["Is it easier launching or retrieving?" asks Mia. ] { "Like anything, the more you do it, the easier it gets."|"It takes a little practice to get the hang of it."}
    
                *    {bfa} [Review launching and retrieving.] -> launch_retrieve_review

        -     -> opts
    
    
== launch_retrieve_review ==
    *   [Review launching and retrieving a vessel.]
        FPO: The study guide material launches here. Upon completion the activity launches. 
            ** [OK.] -> proceed_to_fueling
    
    *   [Skip the review and go directly to the activity.]
        FPO: The minigame for launch/retrieve inserts here.
            ** [OK.] -> proceed_to_fueling
    
== proceed_to_fueling ==
    -   Troy pilots the <i>Lakesong</i> toward the marina's fuel station. As the friends discovered during the pre-departure check, the boat need to be topped off with fuel before heading out for the day.
    
            * [Fuel the boat.]
                FPO: the fueling minigame will launch here. 
                -> after_fueling
                
== after_fueling ==
    -   After fueling, Troy steers the <i>Lakesong</i> into the channel and heads for open waters. Along they way the encounter several other boats entering and leaving the channenl including Mac in his small boat and Maura and Ian in one of their speedboats. Everyone is wearing PFDs and practicing good seamanship. 
    
        * [They wave as they pass.]
        
== dog_in_boat ==
    -  "Look there two dogs in that boat," says Mia, as they pass a small, flat-bottomed boat off their starboard side. "And one's a puppy!'
 
     - (opts)
                *    [ "Those are retrievers," says Troy. ]
                    -- CHR_TRO_REL
                     "That's a duck hunting boat and the puppy is learning how to behave on the water," he says.  -> dog
    
                *    (dog) [Troy gives the horn two quick toots.] {Troy's passing signal startles the puppy. "The dogs need to get accustomed to being in a boat the same as you or me."|"Anglers and hunters are boaters, too, as are their four-legged passengers."}
    
                *    {dog} [They exchange 'Ahoys' and waves.] -> pass_duck_boat

        -     -> opts
 
== pass_duck_boat ==
    -   Troy slows down a bit as he passed the the smaller boat to create as little wake as possible. Flat-bottomed vessels are especially vulnerable to capsizing or swamping. 
    
            * [Review the material on <i>Hunting and Fishing from a Boat</i>.]
                FPO: the study guide material will load here.
                    ** [OK.] -> fueling_depot
            
            * [Continue on without reviewing.] -> fueling_depot
            
            
 
== fueling_depot ==
    -  The <i>Lakesong</i> arrives at the fuel dock and slide alongide one of the empty pumps and dock. Just ahead of them at the next pump they see Cletus fueling a boat. The friends tie up and go on to the dock. 
 
     - (opts)
                *    [ Cletus checks out the Lakesong.]
                    -- CHR_TRO_REL
                     Cletus gives their boat a long stare from bow to stern and back again.  -> stare
    
                *    (stare) [Cletus greets them.] {"Didn't get enough yesterday, eh?" he says.|"Those are some nice looking kayaks you've got there," he says. "Going to do some exploring?"}
    
                *    {stare} [Troy shrugs.] -> fueling

        -     -> opts

        = fueling
        - "Only thing better than a day on the lake is another day on the lake," says Troy. "Power, sail, or paddle... it's all good." 
        
        Nothing more is said.
        
            * [Fuel the boat.]
                FPO: The fueling activity inserts here. 
                [OK.]
                -> arrive_ki
                
=== arrive_ki ===
    -   The journey north to Kalkomey Isle takes quite awhile, but when they finally arrive all four agree that it felt quicker than expected. That the weather had been excellent—both warm and sunny—helped, too, at least until... 
    
            * [They hit the fog.]
            
== infamous_fog ==
    -   Just as the four friends discovered the day before, the stories of thick fog in this part of the lake are true enough. 
   
        - (opts)
                *    [ Troy slows the boat.]
                    -- CHR_TRO_REL
                     As the <i>Lakesong</i> slows, the sound of the engine decreases allowing Troy to speak in a quiet voice. "Let's keep a sharp lookout in this fog," he says.  -> lookout
    
                *    (lookout) ["The cove should be straight ahead," says Troy.] {"I spent some time studying the charts last night, and the sandbars are all to west, near the beach, but still..."|"We know there's more than sandbars out here."}
    
                *    {lookout} [They continue into the fog.] -> fog_talk

        -     -> opts

 === fog_talk ===
    The <i>Lakesong</i> continues straight ahead into the fog where Troy expects to find the cove. A couple of times the boat shudders briefly as it meets some cross currents.

        - (opts)
                *    [ Four pairs of eyes scan the area ahead.]
                    -- CHR_TRO_REL
                     Troy has the throttle just a bit over idle, keeping their speed to a minimum in the reduced visibility.  -> birds
    
                *    (birds) ["The fog isn't as bad as yesterday," says Alexis.] {"Looks like we've got about 100 yards of visibility, give or take," says Troy. "Enough for us to launch without being seen."|"The fog should burn off later," he says, "making it easier to find each other."}
    
                *    {birds} [The sound of birds...] -> bird_sounds
        -     -> opts

== bird_sounds ==
    -   The sound of birds announces their proximity to the island. 
        "There's the cove!" says Troy. "Per the plan, we'll launch the kayaks from there."
        
            * [ Review the plan.]
                -> review_plan
            
== review_plan ==
    -   "Let's go over the plan one more time," says Troy.
        
        - (opts)
            *    [The kayaks.] "Troy and Julian will head out in the kayaks to investigate the shoreline of the cove, and spend up to two hours looking for clues to what happened to the boat we saw disappear yesterday," says Alexis.
            *    [The Lakesong.]
                "Mia and Alexis will stay with the Lakesong," says Julian. "They'll wait away from the island for the fog to clear—if it clears—and return for us in two hours unless we signal for pickup sooner."
            *    [The rendezvous.]
                "We'll return to the cove in two hours—or sooner, if we see a signal—to meet Troy and Julian and recover the kayaks," says Mia.  
            // We require the player to ask at least one question
            *    {loop} [Got it!] 
                -> done
        - (loop) 
            // loop a few times 
            { -> opts | -> opts | }
            Troy nods and looks at his watch.
        - (done)
            "Good, we are all clear on the plan, so let's get started," he says reaching for two dry float bags and tossing one to Julian. "I've prepared a few supplies for the two of us to take on the kayaks."
            
                * [Julian opens his bag to see what's inside.]
                    -> jul_opens
                
                * [Julian catches the bag but doesn't look inside.]
                    -> before_set_off
            
            
        = jul_opens
        -   Inside the dry float bag Troy prepared, Julian finds the following items: a waterproof flashlight, waterproof red signal flares, a signal mirror, a whistle, a rope, a knife, a bottle of water, a granola bar, and kayak tether.
            
                * ["Before we set off..."]
                    -> before_set_off
        
        = jul_no_opens
        -   "That's a lot of stuff," says Julian holding the bag up but not opening it.
            
                * [Troy nods.]
                    -> before_set_off

        
        = before_set_off
        "Before we set off take all the signal devices—the flares, mirror, and whistle—out of your bag and put them in your PDF pockets, says Troy. "Grab the kayak leash as well." 

            * ["And you've got the walky talky?" asks Julian.]
                -> no_two_way
            
== no_two_way ==
    -   "Unfortunately, no," says Troy. "I couldn't get my old two-way radio set to work. I stopped by Willard's store this morning to get a new one, but he said they were sold out."
    
        At this news Alexis frowns and both she and Mia give Troy looks of concern.
        
        

         - (opts)
                *    ["The walky-talkies were part of the plan," says Alexis.]
                    -- CHR_TRO_REL
                     Troy anticipated the concerns about the lack of a two-way radio, which was part of the original play, so he is prepared to smooth the situation over. -> signals
    
                *    (signals) [Julian begins stashing signals into his life jacket pockets.] {"Don't worry. We have the other signals," says Troy, nodding toward Julian, who is looking for a good spot to clip the safety whistle, "so even if we can't find each other right away, locating us—even in fog—shouldn't be a problem."| "Plus the fog is going to clear," he says. "I'm sure of it." }
    
                *    {signals} ["I hope the fog doesn't clear," says Julian.] -> hope_for_fog
        -     -> opts

        = hope_for_fog
        -   "The fog is our cover," he says. "We can't be seen by man nor creature." Julian scans the foggy overhead nervously. 
        
        -   "Based on the photo Mia enlarged and cleaned-up," says Alexis, "I'm as convinced as Troy that there really are no creatures, just drones."
        
            * [ "Creatures, drones, thieves... same dif" says Julian.]
                -> all_reason_for_cover
        
== all_reason_for_cover ==
    {"And all the more reason for cover," adds Julian.| "Being spotted makes me nervous," says Julian.|}

    *    [Mia agrees.] 
        
            "Julian's right about that," she says. "The fog would provide great cover."
    
        -> all_reason_for_cover
    *    [Alexis disagrees.] 
        "But fog will make it much harder to find and recover you and the kayaks," says Alexis. "And after hitting the sandbar yesterday with Troy at the helm, the idea of piloting the boat in the fog while looking for the kayaks makes make me nervous." 
        -> all_reason_for_cover
    
    *    -> fog_or_no
    
== fog_or_no ==
    -   * "For or no fog, it's all good," says Troy.[] "The plan accounts for both possibilities..."  
    
        - (opts)
            *    "If the fog sticks around[..."], we'll stay in the cove and wait." says Troy. "When you enter the cove in the boat, use the horn to give the signal. Remember the signal?"
            
                    ** [Alexis mimics the signal.]
                        "Right, good, give two short toots of the horn, count to 3 and give one long toot," says Troy.  "When we hear your signal, we'll blow the whistle. Give two quick toots to acknowledge it. If you don't hear us, repeat your signal and we'll send a flare."
                        
            *    ["If the fog clears..."]
                "Or I should say 'when the fog clears,' keep the boat away from the island until the two hour mark, then come in and pick us up," says Troy. "Since it may be easier for us to see you, we'll start by using the signal mirror and whistle to get your attention on the boat. If that doesn't' work, we'll shoot off a flare."  
                
            *    ["If the <i>Lakesong</i> is spotted..."]
                You're unlikely to be seen in the fog, but when things clear, you'll be visible but so will everything else," says Troy. "You'll be able to see a boat coming from a distance, same with the drones. Do what you need to do to evade contact and then circle back for us when you can."  
            
            // We require the player to ask at least one question
            *    {loop} [Alexis cuts Troy off.] 
                -> done
        - (loop) 
            // loop 
            { -> opts | -> opts | }
            Alexis takes a deep breath. 
        - (done)
            "OK, OK, I've got it," says Alexis, "But I'm still going to be nervous driving the boat."
            
                ["You've got this, Alexis," says Troy.]
                    -> got_this_alexis
        
        =   got_this_alexis
            "Stay slow in the fog and keep a good lookout," says Troy. "And we know the that cove and the approach to it are free of sandbars, so now worries there."
            
                * [Julian and Troy enter the kayaks.]
                    -> continue_adventure
                
                
=== continue_adventure === 
        -   "See you in two hours, give or take," says Troy, as he and Julian push off from the boat and begin paddling toward the shoreline.
        
            "Good luck!" Mia and Alexis say in unison, as Alexis starts the <i>Lakesong's</i> engine and prepares to depart the cove. 
            
            Contine the adventure by...
            
                    * Following Julian and Troy in the kayaks.
                        -> follow_kayaks
                        // this will continue in a4s2
                        
                    * Following Mia and Alexis in the boat. 
                        -> follow_boat
                        // this will continue in a4s3
    

            
            
            
        
        
        
            
                

                
    
        
    
        