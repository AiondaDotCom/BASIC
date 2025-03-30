# BASIC – Language Reference

> Version: v0.1  
> Last updated: March 30, 2025

BASIC is a modern low-code programming language designed to be readable, beginner-friendly, and powerful through built-in AI, form generation, and automatic typing. Inspired by classic BASIC, it focuses on clarity and simplicity.

---

## 🧠 Language Philosophy

- Human-readable syntax
- One instruction per line
- AI-native: prompt-to-code is built-in
- Everything is typed automatically unless explicitly needed
- Executes directly, without boilerplate or setup

---

## 🔤 Keywords

### General Commands

| Keyword   | Description                          |
|-----------|--------------------------------------|
| `SET`     | Assigns a value to a variable        |
| `SHOW`    | Displays a value in the UI/console   |
| `SAVE`    | Saves an object to the database      |
| `LOAD`    | Loads records from the database      |
| `UPDATE`  | Updates an existing object in the DB |
| `DELETE`  | Deletes an object from the DB        |
| `STOP`    | Halts execution immediately          |

---

### Control Structures

| Keyword      | Description                              |
|--------------|------------------------------------------|
| `IF`         | Starts a conditional block               |
| `ELSE`       | Optional else clause                     |
| `END IF`     | Closes an `IF` block                     |
| `FOR EACH`   | Loop over list items                     |
| `END`        | Ends a `FOR EACH` loop                   |

---

### Built-in Variables

| Variable | Purpose                                  |
|----------|------------------------------------------|
| `INPUT`  | Contains incoming user or API data       |
| `OUTPUT` | Used to return data from logic/scripts   |

---

### AI Integration

| Keyword  | Description                                                |
|----------|------------------------------------------------------------|
| `ASK`    | Sends a natural language prompt to the AI to generate logic, forms, or content |
| `EXEC`   | Executes a script or logic object stored in memory         |
| `SAVE ... AS` | Saves an AI-generated object (script/form) as a `.bas` file |

---

### Comments
```basic
REM This is a comment
SET x = 10   REM inline comment

BEGIN REM
Multiline comment block
END REM
```

### Forms
```basic
REM This is a comment
SET x = 10   REM inline comment

BEGIN REM
Multiline comment block
END REM

FORM contactForm

    FIELD name
        LABEL = "Full Name"
        REQUIRED = TRUE
    END FIELD

    FIELD email
        LABEL = "E-mail"
        TYPE = "email"
        REQUIRED = TRUE
    END FIELD

    BUTTON submit
        LABEL = "Send"
        ACTION = "submit_contact.bas"
    END BUTTON

END FORM
```

Notes:
- TYPE is optional; default is "text" unless otherwise specified
- Forms are auto-rendered when created

### Logic Example

```basic
IF INPUT.email IS EMPTY
SET OUTPUT.error = "Email is required."
STOP
END IF

SET name = INPUT.name
SAVE name INTO users

SET OUTPUT.success = TRUE
SET OUTPUT.message = "User saved successfully."
```

### ASK + EXEC Flow (AI Integration with Caching)

```basic
ASK "Generate the logic to calculate area from INPUT.radius" INTO logic1
EXEC logic1
```

### Type System

| Type     | Automatically Detected | Notes                        |
|----------|------------------------|------------------------------|
| STRING   | ✅ Yes                 | Text values in quotes        |
| NUMBER   | ✅ Yes                 | Integer or decimal           |
| BOOLEAN  | ✅ Yes                 | TRUE, FALSE                  |
| OBJECT   | ✅ Yes                 | e.g. user.name = "Alice"     |
| LIST     | ✅ Yes                 | When iterating with FOR EACH |
| FORM     | via FORM or ASK        | UI component                 |
| SCRIPT   | via ASK                | Executable AI-generated logic|

### Files & Caching
- AI-generated content is stored automatically in /cache/
- The engine checks for prompt duplicates and reuses existing files
- Developers don’t need to manage files manually unless desired

### Summary

BASIC is:
- Easy to learn
- Safe to use
- Powerful through simplicity
- Designed for makers, not just developers

Code less. Think clearly. Build smarter.
