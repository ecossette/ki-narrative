// act 05 scene 02

=== second_entry_cove (condition) ===

   { 
   
    - "fog":
        In the foggy cove, Mia and Alexis repeat the signal again but just as before there is no response from Julian and Troy. They wait and repeat the signal again and again several times.
            
            * [The cove remains frustratingly still.]
        
    
           
                
        
    - "clear": 
        Mia and Alexis enter the cove, but there is no sign of the kayaks. On the off chance that Julian and Troy are hunkered down somewhere out of sight along the shoreline, Alexis signals with the boat's horn. 
        
            * ["Nothing and more nothing," says Mia frustrated.]
      
      }   
      
      -> DONE
      
== no_response_hour_two ==

    -   (opts)
        
        *   [Alexis fidgets and checks her watch.]
        "We're now past the second meeting hour," she says.-> glances
        
        *   (glances) Mia and Alexis exchange nervous glances. {Mia looks at Alexis, her face creased with worry. Alexis feels the same. "We're going to need to make a decision," says Alexis.| "Way late for the first hour and late for the second." Alexis sighs.}
        
        *   {glances} ["What's to decide?" asks Mia.] 
            -> decision_call
        
    -   -> opts
        
== decision_call ==
    -   "Well, we have two options, says Alexis. "One, we can call the marine patrol and report them as missing right now, or we can wait a little longer, maybe take a look outside the cove?"
                
        -   (opts)    
            
            *   ["Why wait?" Mia questions Alexis.] 
                "I don't understand why we'd wait," says Mia shaking her head.-> plan
                    
            *   (plan) ["The plan was to call."] {"The plan was to call for help if they were overdue, right?"|"They are definitely overdue," says Mia, no doubt in her voice.}
                    
            *   ["Well... it depends," says Alexis.] 
                -> how_overdue
                    
        -   -> opts
        
== how_overdue ==
    -   "They're an hour overdue from the <i>first</i> meeting time, says Alexis, "But they are only, what, a few minutes overdue from the second meeting time?" Alexis is fidgety and keeps checking her watch.
        
        -   (opts)
        
            *   [Mia checks her own watch.]
            "They're more than a 'few' minutes overdue," says Mia checking her own watch. 
            
            *   (arms) [Mia crosses her arms in frustration.] {She crosses her arms in frustration with Alexis but then has a realization. "You're worried that if you call now and we find them a few minutes later that you'll be thought of as overreacting?" says Mia.|"I get it—you don't want to be called 'hysterical.'"}
        
            *   {arms} [Alexis sighs.] 
                -> no_panic_rule
        
        -   -> opts

==  no_panic_rule ==
    -   "Something like that," says Alexis. "I mean isn't the first rule of an emergency situation 'don't panic'?"
    
        Mia agrees with the sentiment but not its application in this case. "But they <i>are</i> overdue," she says. 
        
            * [Alexis again checks the time.]
            
            
        {
            - follow_boat:
            -> make_call_decision
                   
            - else:
            -> call_report_overdue    
        
        }
            
            
== make_call_decision ==
// this decision is only presented to player if they followed the boat and not the kayaks
    -   Alexis again checks the time, and then her face takes on the calm of expression that comes with having made a decision. She decides to... 
    
         ** [Call the marine patrol right now.]
            -> call_report_overdue
                
        ** [Take a look outside the cove first.] 
    

== call_report_overdue ==
    -   "You're right, says Alexis{follow_kayaks:, her face reflecting the calmness that comes with having made a decision}. "And we can keep searching for Julian and Troy after we alert the marine police."        
           
        * [Alexis reaches for the radio.]
        -- Alexis reaches for the radion and checks that it's tuned to the emergency channel—number 16.
            
            ** ["Pan, Pan Pan," she says.]
                -> pan_pan_call_01
            
        = pan_pan_call_01
        -   "Pan, Pan Pan," Alexis says into the transmitter, using the signal (pronounced 'Pahn') for an incident of less gravity than a Mayday signal. (Mayday is reserved for situations where the loss of a vessel or persons is imminent.) 
            
                * ["This is Lakesong, Lakesong, Lakesong."]
                -- Alexis continues the pan-pan distress call. "Whiskey Sierra 2-3-2-3. Midway, south side of Kalkomey Isle bearing north 500 meters.  We have 2 persons in kayaks who are well overdue. Lakesong is a 32 foot cabin cruiser—white hull with a green stripe. Over."
            
                    ** [They wait for a response.] 
                    -> no_response_pan
                    
        = no_response_pan 
        -   There is no immediate response to the pan-pan call, so Alexis waits 15 seconds—per regulation—then repeats the pan-pan distress call on Channel 16. Again there is no response. 
        
            * [She notes the time.]
            
            {
                -stubbornly_persisted:
                Alexis notes that time as well as the fact that the last of the fog has cleared out of the cove. Alexis can see it's empty—No sign of the Julian and Troy in the kayaks.
                
                - else:
               Alexis notes the time and takes a final look around the cove. There is no sign of the Julian and Troy in the kayaks. 
            
            }
            
            
                ** [Alexis pushes the trottle forward.]
                -> leave_cove_after_pan_call
                

== leave_cove_after_pan_call == 
    -   Alexis pushes the throttle forward and puts the boat on a course to exit the cove. 
                
        "Aren't you going to try the radio again?" asks Mia.
        
            * ["We will."]
            "Per the regs, we need to wait two minutes after our first two calls before trying again," says Alexis. "in the meantime I want to get us out into open water. The island may be interfering with our radio signal."
            
                ** [Leave the cove.]
                Once in open water, Alexis repeats the Pan-Pan distress call at the proper two minute mark. 

                    *** [The radio squawks to life.]
                        -> radio_squawk
                    
        
        = radio_squawk
        But what they hear is not what they were expecting. 
        
            * ["MAYDAY, MAYDAY, MAYDAY!"]
            

=== who_rescues_shuffle ===
    -   put the rescue shuffle here

        {shuffle:

            - -> cletus_rescues

            //- -> mia_alexis_rescues

            - -> mac_rescues

            - -> ian_rescues



        }

=== cletus_rescues ===
    - cletus is the rescuer
    ~ rescuer = "Cletus"
    ~ rescue_boat = "Munlock"
    ~ rescue_call_sign = "Romeo Foxtrot 57-80"
    ~ rescue_boat_type = "24 foot Seaark"
    ~ rescue_boat_color = "gray"
    
    -> rescuer_mayday_call

/* === mia_alexis_rescues ===
    - mia and alexis are the rescuer
    will continue in act 5
    -> DONE
*/


=== mac_rescues ===
    - mac is the rescuer
    ~ rescuer = "Mac"
    ~ rescue_boat = "Beachleaf"
    ~ rescue_call_sign = "Delta India 31-40"
    ~ rescue_boat_type = "12 foot all purpose fishing boat"
    ~ rescue_boat_color = "green"
    -> rescuer_mayday_call

=== ian_rescues ===
    - ian is the rescuer
    ~ rescuer = "Ian"
    ~ rescue_boat = "Shamrockit"
    ~ rescue_call_sign = "AM 22-08"
    ~ rescue_boat_type = "18 foot bowrider"
    ~ rescue_boat_color = "red"
    -> rescuer_mayday_call


=== rescuer_mayday_call ===
    It's another boat in distress!
    
    "This is {rescue_boat}, {rescue_boat}, {rescue_boat}, {rescue_call_sign}. Kalkomey Isle bears 270 degrees magnetic distince one-half mile. I've recovered two males from the water with symptoms of extreme hypothermia. Alive but unresponsive. Request immediate emergency medical assistance. {rescue_boat} is {rescue_boat_type} {rescue_boat_color} hull. Over.
    
            * ["Oh my God!" says Mia.] 
              That's Julian and Troy!. Alexis nods, her mouth open, shocked by the news.
              
                ** [The radio sqwuaks a reply.]
                
        = mp_reply
        "Marine Patrol copies that {rescue_boat}. Two males recovered presenting symptoms of extreme hypothermia. Immediate help needed. Please switch to working channel 68 for continued transmission. Over."
              
              Copy Marine Police. [Variable] switching to working channel 68 for continued transmission. Out.
              
              
              
              
              Alexis switches the radio to 68 to follow the transimission and joins it in progress.
              
              "... one caucasion male approximate age 18, one hispanic male maybe 17 or 18 both are unresponsive and breathing is irregular."
              
              Copy that [var]. Medavac chopper en-route. ETA 25 minutes. Over.
              
              [vessel] copies. Awaiting medavac chopper. E-P-I-R-B actviated. Over.
              
              [Vessel] keep channel open for instructions from the helo. Over.
              
              Roger. [vessel] keeping channel open. 
              
              
              Mia begins to sob. 
              Mia begins to sob while Alexis—jaw clenched—instinctively sets a course toward Laketown. 
              
              "They're g-g-gonna be OK, right?" {"Right? They're gonna be OK?" asks Mia but she knows it's a rhetorical question. They have no way of knowing.| second phrase}
              
                .Alexis reaches toward the radio.
                And turns back to channel 16. "We need to tell the marine patrol it's Julian and Troy," she says. 
                
                Mia brightens.
                    "What if it isn't? asks Mia. 
                Alexis turns to Mia, her own eyes filling with tears. 
                
                Alexis grabs the transmitter, and Mia droops. 
                
                "Pan-pan-pan...."
                
        // need a case where Mia and Alexis find them.
                
                
              
              
              
              
              
              
            
            
            
                    
                
               

== call_marine_patrol_now ==   
    -   "Let's call for help now," says Mia. "Better safe than sorry."
        "I agree," says Alexis. "And we can keep searching in the mean time."
        
            Alexis reaches for the radio.
            
                // we'll do a random here on whether they have a chance to call it it in. 
                
                She calls it in.
                    
                Before she can begin her message the radio crackles to life.
                Mayday Mayday 
    
    
== search_more_wait_call ==
// waiting to call has a influence on the medical condition of the boys once they are rescued, otherwise the narrative flow doesn't change. 


    -   temp
    
    -> DONE
    
    
    
    
    