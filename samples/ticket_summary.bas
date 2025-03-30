REM This script demonstrates how to load from database, use AI to summarize data, and display the result
LOAD tickets WHERE status = "open" INTO openTickets

FOR EACH ticket IN openTickets
    SHOW ticket.title, ticket.created_at
END

SET newTicket.title = "Issue with invoice"
SET newTicket.customer_id = 42
SET newTicket.status = "open"
SAVE newTicket INTO tickets

ASK "Summarize all open tickets" WITH openTickets INTO summary
SHOW summary
