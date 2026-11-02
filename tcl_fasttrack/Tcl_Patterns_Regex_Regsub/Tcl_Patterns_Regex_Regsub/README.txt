TCL GLOB PATTERNS, REGEXP AND REGSUB

21 individual scripts for Tcl 8.6 or later, grouped by topic.
Extract the ZIP. Open a terminal in one topic folder and run a script:
  tclsh 01_star.tcl
Each script includes notes, expected output and an activity. No VLSI tool is needed.
The two glob file-search scripts independently create a unique temporary directory
with practice files and leave it for inspection. Other scripts do not write files.

PATTERN DIFFERENCES
string match: glob-style matching against an entire string; returns 1 or 0.
glob: searches real file/directory names; returns a list of paths or names.
regexp: regex search; by default matches any substring; returns 1 or 0.
regsub: regex-based replacement; returns updated text unless an output variable is supplied.

Glob *.v means any filename ending in .v.
Regex {\.v$} means a literal .v at the end of a string.
Glob ? means one character; regex ? makes the previous item optional.
Glob * matches any character sequence; regex * repeats the previous item.
Brace patterns containing [ ] to avoid Tcl command substitution.
Brace regex and backreference replacements to preserve backslashes.
Use -nocomplain with glob if zero matches are acceptable. glob is not recursive by default.

Examples have been reviewed, but not executed here because Tcl is unavailable.
Compare your local output with the supplied expected output. Temporary paths vary.

01_Glob_Patterns/01_star.tcl
  Wildcard star
  Activity: Match only names beginning with counter.

01_Glob_Patterns/02_question_mark.tcl
  Wildcard question mark
  Activity: Create a pattern matching exactly two characters between unit and .v.

01_Glob_Patterns/03_character_sets.tcl
  Character sets and ranges
  Activity: Match unitA.v, unitB.v and unitC.v using a range.

01_Glob_Patterns/04_nocase.tcl
  Case-insensitive matching
  Activity: Check names beginning with clk regardless of letter case.

01_Glob_Patterns/05_glob_files.tcl
  Find files with glob
  Activity: Find only unit?.v and explain why unit10.v is excluded.

01_Glob_Patterns/06_glob_multiple.tcl
  Multiple patterns and no matches
  Activity: Create a .rpt file in the generated directory and list the report files.

02_Regexp/07_basic.tcl
  Basic regexp
  Activity: Check whether a report line contains Slack.

02_Regexp/08_anchors.tcl
  Start and end anchors
  Activity: Allow an optional leading minus sign. Decide whether the empty string should match.

02_Regexp/09_quantifiers.tcl
  Quantifiers
  Activity: Accept a module name consisting of cell followed by 2 to 4 digits.

02_Regexp/10_extract.tcl
  Extract captured values
  Activity: Extract the number from Area: 450.

02_Regexp/11_decimal.tcl
  Extract a signed decimal
  Activity: Try positive and integer slack values. Extend the pattern to allow a leading plus sign.

02_Regexp/12_alternation.tcl
  Alternation and escaped dots
  Activity: Also accept .vhd files and ignore letter case with -nocase.

02_Regexp/13_all_matches.tcl
  Find all matches
  Activity: Extract every integer from the string Area=120 Cells=50 Errors=0.

02_Regexp/14_line_mode.tcl
  Match lines in a multiline string
  Activity: Count warning lines separately from error lines.

03_Regsub/15_first.tcl
  Replace the first match
  Activity: Replace the first occurrence of counter with timer in a sentence.

03_Regsub/16_all.tcl
  Replace all matches
  Activity: Replace all hyphens in clk-main reset-main with underscores.

03_Regsub/17_whitespace.tcl
  Normalize whitespace
  Activity: Normalize a report row containing tabs and multiple spaces.

03_Regsub/18_captures.tcl
  Use captures in replacements
  Activity: Reformat counter:PASS as Design=counter Status=PASS.

03_Regsub/19_count.tcl
  Count substitutions
  Activity: Try text without ERROR. Check both the returned count and updated text.

03_Regsub/20_whole_match.tcl
  Use the full match in a replacement
  Activity: Wrap every number in parentheses using &.

04_Combined_Activity/21_report_parser.tcl
  Parse and clean timing results
  Activity: Accept .sv files too, add a new failing design, count passes/failures and report skipped lines.
