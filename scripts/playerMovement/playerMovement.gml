    if(keyboard_check(rightKey)){
        x += 32;
        steps--;
    }else if(keyboard_check(leftKey)){
        x -= 32;
        steps--;
    }else if(keyboard_check(upKey)){
        y -= 32;
        steps--;
    }else if(keyboard_check(downKey)){
        y += 32;
        steps--;
    }
    show_debug_message("steps = " + string(steps));