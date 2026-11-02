TCL CONDITIONAL STATEMENTS AND LOOPS

18 independent beginner scripts for Tcl 8.6 or later.
These examples work in plain Tcl; no VLSI tool or input files are needed.

Extract the ZIP, open a terminal in this folder, and run:
  tclsh 01_if.tcl
On Windows the executable may be named tclsh86.

Each file includes an explanation, example, expected output and activity.
Run the original example first. Then edit variables and complete the activity.

Syntax reminders:
- Keep conditions and loop bodies inside braces.
- Tcl evaluates braced conditions when if/while/for needs them.
- Put } else { and } elseif { on the same line as shown.
- Use eq/ne for string comparisons, ==/!= for numeric comparisons.
- Tcl has no built-in do-while statement. while may execute zero times.
- break exits the innermost loop; continue skips to its next iteration.
- File names and design metrics here are illustrative data.

Scripts were reviewed; expected outputs are supplied for comparison.
A Tcl interpreter was unavailable in the creation environment, so scripts were not executed there.

01. Basic if: 01_if.tcl
   Activity: Change slack to -0.2. Observe why nothing is printed.

02. if and else: 02_if_else.tcl
   Activity: Set slack to 0 and predict the result before running.

03. Multiple conditions: 03_elseif.tcl
   Activity: Try 40, 80 and 95. Add a separate message for utilization above 100.

04. Nested if: 04_nested_if.tcl
   Activity: Change both variables to exercise all three messages.

05. Logical operators: 05_logical_operators.tcl
   Activity: Change area to 600 and errors to 2. Explain each message.

06. Compare strings: 06_string_conditions.tcl
   Activity: Set design to top. Add a condition for the name alu.

07. switch with exact matching: 07_switch.tcl
   Activity: Try timing and routing. Add a routing branch.

08. switch with wildcard patterns: 08_switch_glob.tcl
   Activity: Add a pattern for SystemVerilog files ending in .sv.

09. for loop: 09_for.tcl
   Activity: Print numbers 2, 4, 6, 8 and 10 using incr i 2.

10. Reverse for loop: 10_for_reverse.tcl
   Activity: Print 10, 8, 6, 4 and 2.

11. while loop: 11_while.tcl
   Activity: Change the limit to 5. Explain why removing incr would prevent termination.

12. foreach over a list: 12_foreach.tcl
   Activity: Append alu.v and print each filename with a number.

13. foreach with pairs: 13_foreach_pairs.tcl
   Activity: Add U4 NOR2 and count the cell instances.

14. Nested loops: 14_nested_loops.tcl
   Activity: Add design mux and corner typical. Predict the number of printed lines.

15. Exit a loop with break: 15_break.tcl
   Activity: Search for alu.v instead. Add a flag to report when a filename is absent.

16. Skip an iteration with continue: 16_continue.tcl
   Activity: Add register.v and debug.log. Print a message for skipped filenames too.

17. Calculate totals in a loop: 17_accumulator.tcl
   Activity: Find the largest area using a loop and if. Guard against an empty list before averaging.

18. Combined timing check: 18_combined_lab.tcl
   Activity: Add two designs. Store failed design names in a list with lappend and display that list.
