# There are two types of sections you need to be familiar with in MIPS. The
# first is the data section and the other is the text section. The data section
# is used to allocate data statically while the text section is used for holding
# your code.

# Labels are names used to identify sections of memory. These names can be used
# by the programmer to refer to memory locations abstractly. The assembler will
# eventually translate them into appropriate addresses in the binary.
# Here, sections of memory can mean either space for data or code. When used for
# data, you often think of them as named variables that you can read from and
# write to. When used for code, you often think of them as procedure names or
# jump/branch destinations.

# This is what's known as a directive. Directives always start with a period.
# This one begins the data section. No code goes here, just static data.
# Typically, we leave section directives unindented and alone on the line
# when considering style so that we can see the section changes quickly.
.data

# This is a label. Labels are a single string without whitespace beginning  followed by a
# colon. They can be indented but typically are not. This label will be the
# address of a single statically allocated byte (discussed later). Labels need
# not be alone on their line therefore either of these is acceptable code.
exampleLabel1:
  .space 1

exampleLabel2: .space 1

# This directive begins the text section (for code).
.text

# This label can be a destination for a jump or branch. Execution will begin at
# the first instruction following the colon. If there is an instruction on the
# same line, as some styles prefer, execution will begin there, otherwise it
# will begin at the instruction directly after the label.

# This starts execution at the following line.
foo:
  jr    $ra # Foo starts here.

# This starts execution on the same line.
bar: jr    $ra # Bar starts here.

# This starts execution many lines later.
baz:


  jr    $ra # Baz starts here.