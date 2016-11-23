Feature: Play Track

  When I upload a new song
  I want people to play it
  So I can get more spins
  
    Scenario Outline: Direct Play
      Given I play the track <url>
      Then I wait
      
      Examples:
      | url                                                                     |
      | "https://soundcloud.com/konquestnow/verseborn-act-like-you-know#t=0:01" |
      | "https://soundcloud.com/konquestnow/totem-freestyle#t=0:01"             |
