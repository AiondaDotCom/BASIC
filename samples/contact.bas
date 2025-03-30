REM Validate contact form input
IF INPUT.firstName IS EMPTY
    SET OUTPUT.error = "First name is required."
    STOP
END IF

REM Check if email is valid
IF NOT INPUT.email MATCHES REGEX "[^@]+@[^.]+\..+"
    SET OUTPUT.error = "Invalid email address."
    STOP
END IF

BEGIN REM
You could extend this later to:
- check for duplicates
- send welcome emails
- log analytics events
END REM

SAVE newContact INTO contacts
