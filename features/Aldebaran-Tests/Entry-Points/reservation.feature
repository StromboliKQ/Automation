@Reserv
Feature:

     Background:
     Given the app is running
     And I am authenticated

          @re1
          Scenario: Successful reserve
                  Given I send and accept JSON
                  And I am authenticated
                  When I send a POST request to "http://localhost/reserve" with:
                     | name               | Content     | filename       | Content-Type  |
                     | metaData[body]     | lorem ipsum |                |               |
                     | file[attachment]   |             | file_copy2.txt | text/plain    |
                  Then the response status should be "200"
                  And the JSON response should be:
                     """
                     {"status":"RESERVED","transactionId":"936485fc-99ac-4be7-9882-5209f6b50cfa"}
                     """

          @re2
          Scenario: Unsuccessful reserve
                  Given I send and accept JSON
                  When I send a multipart "POST" request to "http://localhost/reserve" with:
                    """
                    {
                        "metaData":[
                          {
                            "txId": "936485FC-99AC-4BE7-9882-5209F6B50CFA",
                            "gpId":"9999998",
                            "expenseId":"2",
                            "historyText":"test",
                            "historyUrl":"testUrl",
                            "campaignId":"2DEB0F32-ABD4-41FA-98E6-7C9738B0352F",
                            "pattern":"123"
                          }
                         ]
                       }
                       """
                  Then the response status should be "200"
                  Then the JSON response should be:
                     """
                     {"status":"ERROR","errors":[{"code":"ER0006","message":"Null OR Blank file passed in"}]}
                     """

           @re3
           Scenario: Unsuccessful reserve
                  Given I send and accept JSON
                  And I am authenticated
                  When I send a multipart POST request to "http://localhost:8080" with:
                     | name               |  Content  | filename       | Content-Type  |
                     | metaData           | [Payload] |                |               |
                     | file[attachment]   |           | file_copy2.txt | text/plain    |
                  Then the JSON response should be:
                     """
                     {"status":"ERROR","errors":[{"code":"ER0006","message":"Null OR Blank file passed in"}]}
                     """



            Scenario: Unsuccessful reserve
                  Given I send and accept JSON
                  And I am authenticated
                  When I send a POST request to "http://localhost/reserve" with:
                     | name               |  Content  | filename       | Content-Type  |
                     | metaData           | [Payload] |                |               |
                     | file[attachment]   |           | file_copy2.txt | text/plain    |
                  Then the JSON response should be:
                     """
                     {"status":"ERROR","errors":[{"code":"ER0006","message":"Null OR Blank file passed in"}]}
                     """


           Scenario: Unsuccessful reserve
                  Given I send and accept JSON
                  And I am authenticated
                  When I send a POST request to "http://localhost/reserve" with:
                     | name               |  Content  | filename       | Content-Type  |
                     | metaData           | [Payload] |                |               |
                     | file[attachment]   |           | file_copy2.txt | text/plain    |
                  Then the JSON response should be:
                     """
                     {"status":"ERROR","errors":[{"code":"ER0006","message":"Null OR Blank file passed in"}]}
                     """

           @post
           Scenario: <enter scenario title>
                  Given I send and accept JSON
                  And I am authenticated
                  And I POST file and:
                  """
                    {
                        "metaData":[
                          {
                            "txId": "936485FC-99AC-4BE7-9882-5209F6B50CFA",
                            "gpId":"9999998",
                            "expenseId":"2",
                            "historyText":"test",
                            "historyUrl":"testUrl",
                            "campaignId":"2DEB0F32-ABD4-41FA-98E6-7C9738B0352F",
                            "pattern":"123"
                          }
                         ]
                       }
                       """


           @post2
           Scenario: <enter scenario title>
                  Given I send and accept JSON
                  When I send a POST request to "http://localhost/reserve" with the following:

