TCL LIST OPERATIONS — BEGINNER LAB

18 independent scripts, using VLSI examples.
Requires Tcl 8.6 or later. No VLSI tool is required.

Extract the ZIP. Open a terminal in this folder. Run, for example:
  tclsh 01_create_list.tcl
On Windows, tclsh86 may be the installed executable name.

Each script contains a runnable demonstration, expected output, and an activity.
Read the comments, predict the output, run the example, then add your activity solution.
Scripts require no input files and do not change files or directories.

Key distinction: lappend and lset change a named variable directly.
linsert, lreplace, lsort and concat return a value; assign it to retain it.

01. Create lists — 01_create_list.tcl
    Activity: Create a list containing alu.v, mux.v and a filename with a space.

02. Count elements — 02_llength.tcl
    Activity: Create a list of five modules and display its length.

03. Access elements — 03_lindex.tcl
    Activity: Print the second-last element of a four-element list.

04. Extract a range — 04_lrange.tcl
    Activity: Extract reset, enable and data_in using one lrange command.

05. Append elements — 05_lappend.tcl
    Activity: Start with two clocks and append two more clocks.

06. Insert elements — 06_linsert.tcl
    Activity: Insert start at the beginning and done at the end of a list.

07. Replace one element — 07_lset.tcl
    Activity: Replace the last source filename with chip_top.v.

08. Replace a range — 08_lreplace.tcl
    Activity: Replace two middle elements with one new element.

09. Remove elements — 09_remove_elements.tcl
    Activity: Remove the first element, then remove two adjacent elements.

10. Search for an element — 10_lsearch.tcl
    Activity: Check whether reset occurs in a signal list and print a meaningful message.

11. Sort names — 11_lsort.tcl
    Activity: Sort cell12, cell3 and cell1 using ordinary and dictionary sorting.

12. Sort numbers — 12_numeric_sort.tcl
    Activity: Sort five integer cell counts in descending numeric order.

13. Remove duplicates — 13_unique_elements.tcl
    Activity: Remove duplicates from a list of signal names.

14. Iterate over a list — 14_foreach.tcl
    Activity: Print every clock with a numbered label.

15. Combine lists — 15_concat.tcl
    Activity: Combine three source lists and display the total number of files.

16. Convert between text and lists — 16_split_join.tcl
    Activity: Split alu.v;top.v;mux.v at semicolons and join using a comma and space.

17. Use nested lists — 17_nested_lists.tcl
    Activity: Add a third row for U3 NAND2 with area 10 and print its type.

18. Combine list operations — 18_combined_activity.tcl
    Activity: Add mux.v, remove alu.v if present, and print the final sorted list and count.
