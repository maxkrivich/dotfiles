# Writing Standards

These rules apply to all text that you write: chat responses, docs, READMEs, commit messages,
PR descriptions, code comments, docstrings, and error messages. The sources are ASD-STE100
(Simplified Technical English), Google Technical Writing One and Two, and Google "Writing
Helpful Error Messages".

## Core rules

- Write for an engineer who is new to the repository. This reader knows the language but does
  not know the project.
- Use the active voice. Make the actor the subject: "The parser rejects the file", not "The file
  is rejected".
- Use one word for one meaning. When you select a term, use it every time. Do not change to a
  synonym for variety.
- Define a project-specific term or acronym when you use it for the first time.
- Use a specific verb. Do not put the action in a noun: "configure", not "perform the
  configuration of".
- Do not put more than three nouns together. Use prepositions to break long noun clusters:
  "the timeout for upload retries", not "the upload retry timeout value".
- Keep sentences short: 20 words maximum for procedures, 25 words maximum for descriptions.
- Put one idea in each sentence. Put one topic in each paragraph, and start the paragraph with
  that topic.
- Use a list for three or more parallel items. Use a numbered list when the order is important.
  Use a table to compare items on two or more attributes.
- Use "it", "this", and "that" only when the noun that they refer to is clear. If it is not
  clear, repeat the noun.
- Use the present tense for what the code does now.
- Use the simple word: "use", not "utilize"; "start", not "commence"; "help", not "facilitate";
  "about", not "with regard to"; "to", not "in order to".
- Remove filler words: "basically", "simply", "just", "actually", "note that", "please note".
- Use plain, factual words. A bug fix is a bug fix, not a "critical stability improvement". Do
  not use: critical, crucial, essential, significant, comprehensive, robust, elegant, seamless,
  leverage, powerful.
- Do not use idioms, jokes, or cultural references in docs or error messages.

## Procedures

These rules apply to steps, how-to guides, runbooks, and instructions to the user.

- Write one instruction in each step. You can put two actions in one step only if the reader
  does them at the same time.
- Start each step with a verb in the imperative: "Run", "Open", "Set".
- Put a condition before its instruction: "If the build fails, run `make clean`."
- Put a warning or caution before the step that it applies to.
- Give the expected result when the reader must make sure that the step worked.

## Documents

- Start with the scope: what the document covers, who it is for, and what it does not cover.
- Put the most important information first.
- Use headings that tell the reader what the section contains.
- Use code format for commands, paths, identifiers, and values.
- Give an example for each concept that is not obvious.

## Chat responses

Use the core rules with these changes:

- Start with the answer or the result. Then give the details that support it.
- The word limits and the one-instruction-per-step rule apply only when you give the user
  steps to do.
- Do not repeat the question. Do not describe what you will do before you do it.
- Tell the user one time, and exactly, what you did not do or did not verify: "I did not run
  the integration tests." Do not add hedge words to every sentence.

## Error messages

An error message answers three questions: what failed, why it failed, and how to fix it.

Template: `<what failed>: <why, with the bad value>. <how to fix>.`

- Identify the cause. Do not write "Invalid input" or "Something went wrong".
- Show the invalid value and its source: the field, file, line, flag, or environment variable.
- State the requirement: the permitted range, format, or type.
- Tell the reader how to fix the problem. If you know the exact command, flag, or value, give it.
- Give an example of a valid value when the format is not obvious.
- Be concise. Put long details in logs or in a linked document.
- Do not blame the reader: "The file has no header row", not "You forgot the header row".
- Do not use humor, exclamation marks, or alarming words such as "illegal" or "catastrophic".
- Do not use double negatives.
- Use the same term for a thing that the UI, docs, and code use.
- Write for the reader of the message. An end user gets the fix. A developer also gets the
  internal context: the operation and the IDs. Do not show secrets or stack traces to end users.
- In a chain of wrapped errors, each layer adds new context. Do not repeat what the inner
  error already says.

Bad:

```text
Error: invalid config
```

Good:

```text
config.yaml line 12: "timeout" is "30x", but it must be a duration such as "30s" or "5m".
Correct the value and run the command again.
```
