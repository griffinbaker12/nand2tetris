// Initialize color to white (0)
@color
M=0

(LOOP)
    // Initialize pixel address to start of screen
    @SCREEN
    D=A
    @pixels
    M=D

(COLOR_SCREEN)
    // Check keyboard input
    @KBD
    D=M
    @SET_WHITE
    D;JEQ   // If no key pressed, set color to white
    
    // Set color to black
    @color
    M=-1
    @CONTINUE
    0;JMP

(SET_WHITE)
    // Set color to white
    @color
    M=0

(CONTINUE)
    // Color current pixel
    @color
    D=M
    @pixels
    A=M
    M=D

    // Move to next pixel
    @pixels
    M=M+1
    D=M

    // Check if we've reached the end of the screen
    @24576
    D=A-D
    @COLOR_SCREEN
    D;JGT   // If not at end, continue coloring

    // If we've colored the whole screen, go back to main loop
    @LOOP
    0;JMP
