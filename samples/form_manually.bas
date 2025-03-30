REM === Define contact form with smart types ===
FORM contactForm

    FIELD firstName
        LABEL = "First Name"
        REQUIRED = TRUE
    END FIELD

    FIELD lastName
        LABEL = "Last Name"
        REQUIRED = TRUE
    END FIELD

    FIELD email
        LABEL = "E-mail Address"
        TYPE = "email"    REM triggers browser-level email validation
        REQUIRED = TRUE
    END FIELD

    BUTTON submit
        LABEL = "Send Message"
        ACTION = "submit_contact.bas"
    END BUTTON

END FORM
