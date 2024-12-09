Scenario: Successfully sending an email with subject and body
  Given I have opened Gmail
  When I click "Compose"
  And I enter "Incubyte" as the subject
  And I enter "QA test for Incubyte" as the body
  And I enter a valid recipient
  And I click "Send"
  Then the email should be sent successfully
  And it should appear in the "Sent" folder.

Scenario: Draft is saved automatically
  Given I have opened Gmail
  When I click "Compose"
  And I enter "Incubyte" as the subject
  And I enter "QA test for Incubyte" as the body
  And I close the compose window without sending
  Then the email should be saved in the "Drafts" folder.

Scenario: Sending email with an attachment
  Given I have opened Gmail
  When I click "Compose"
  And I attach a file of size less than or equal to 25 MB
  And I enter "Incubyte" as the subject
  And I enter "QA test for Incubyte" as the body
  And I enter a valid recipient
  And I click "Send"
  Then the email should be sent successfully with the attachment.
