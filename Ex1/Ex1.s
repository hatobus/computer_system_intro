# To print sum of 1 to "n" value.
  .text
  .globl main
main:
  li $t0 7 # set to n for 7
  li $t1 0 # set to iterator $t2 at 0
  li $t2 0 # set to sum $t2 at 0

loop:
  addi $t1, $t1, 1
  add  $t2, $t2, $t1
  blt $t1, $t0, loop

  # to print value of sum of 1 to 7
  li $v0, 1
  move $a0, $t2
  syscall

  jr $ra #finish
