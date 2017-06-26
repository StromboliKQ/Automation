Feature: Play Track

  When I upload a new song
  I want people to play it
  So I can share good music
  
    Scenario Outline: Direct Play
      Given I play the track <url>
      Then I wait
      
      Examples:
      | url                                                                                     |
      | "https://soundcloud.com/equinox541/paradiso-mix#t=0:01"                                 |
