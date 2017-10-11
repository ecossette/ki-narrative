/*------------------------

ACT 04
SCENE 01

*/

-> day_two_begins

=== day_two_begins ===
-   Troy arrives at the dock the early the following morning and begins work on swapping the damaged radio with a new one. The time passes quickly for Troy as he focuses on his task.

        * Suddenly there is a great commotion.
        
    = commotion
    "Fire!" he hears someone shout. "There's at the storage shed!"
    
    Troy looks and sees that a small fire has broken out on next to one of the storage sheds on the marina. Since he is closest to the fire, he grabs one of the fire extinguishers from the boat and rushes to the shed. 
    
        * [Put out the fire.]
            FPO: The fire suppression minimage launches here.
                **[OK.]
                    -> fire_contained
                    
== fire_contained ==
// need add to emergency procedures achievment here

    -   With the fire extinguished, Troy returns to the Lakesong, leaving the investigation to the cause of the fire with the fire department who arrived moments ago and thanked Troy for his quick action. 
    
        //* [Meanwhile, Mia, Alexis, and Julian arrive at the marina.]
        
    //= friends_arrive_
    - The three friends pass the boat ramp where there is a lot of morning activity. Some boaters are removing their boats—perhaps due to the robberies—while others putting their boats in the water for the day.   
       
      * ["Ahoy, Troy!"]
        
    = ahoy_troy
    -   Troy sees Mia, Alexis, and Julian approaching the Lakesong. 
    
        * ["Good morning!" says Troy. "Ready and rested?"]
    
    == kayaks_racked ==
    Alexis notices that two kayaks are now in the Lakesong's racks instead of the paddleboards from yesterday. 
     - (opts)
                *    ["So 'Operation Kayak' is a go?" says Alexis.]
                    -- CHR_TRO_REL
                     "Yes, we just need do our pre-departure check, fuel up, and then our plan is in motion," he says. -> smaller
    
                *    (smaller) ["They're smaller than I'd expected," says Mia.] {Troy looks at the kayaks and a sly grin appears on his face. "The kayaks are small, manueverable, and quiet. Exactly what we need."|"The kayaks are going to be perfect for investigating that cove."}
    
                *    {smaller} ["Any luck with the radio?" asks Julian.] -> radio_fix_complete

        -     -> opts

        = radio_fix_complete
        - "I think so," says Troy, flipping the radio on. "It turns on but I'm going to need to test voltage, reception, and transmission. While I do that, let's have you three do the same pre-departure checks as you did yesterday, but Alexis..."
        
                * [Alexis turns to Troy.]
        
        = alexis_backfire
        -  "I've already checked the lights, but I haven't checked the backfire flame arrestor yet, so can you check it instead?"
        
            * ["Got it!" says Alexis]
                FPO: Link to study guide for backfire flame arrestor 
                    ** [OK.]
            
            
    
        
    
        