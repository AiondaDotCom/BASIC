REM === Check if email is present ===
IF INPUT.email IS EMPTY
    SET OUTPUT.error = "E-mail address is missing."
    STOP
END IF

REM === Compose welcome email ===
SET email.to      = INPUT.email
SET email.subject = "Welcome to our platform!"
SET email.body    = "Hello " + INPUT.firstName + ",\n\nThank you for getting in touch with us.\nWe're happy to have you here!"

REM === Send the email ===
SEND email

REM === Set response ===
SET OUTPUT.success = TRUE
SET OUTPUT.message = "Welcome email sent successfully."
