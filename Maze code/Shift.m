function Shift(mode)
    global MOTOR_DRIVE;
    global MOTOR_SHIFT;
    global MOTOR_LIFT;
    global brick;
    
    global shiftTurnPos;
    global shiftStraightPos;
    SHIFT_SPEED = 100;
    %MOTOR_SHIFT = 'B';
    if mode == "straight"
        brick.MoveMotor(MOTOR_SHIFT, -100);
        %brick.MoveMotorAngleAbs(MOTOR_SHIFT, SHIFT_SPEED, shiftStraightPos, 'Brake');
        %while (abs(brick.GetMotorAngle(MOTOR_SHIFT) - shiftStraightPos) > 5)
        %    pause(0.05);
        %end
        %brick.WaitForMotor(MOTOR_SHIFT);
        pause(0.1);
    elseif mode == "turn"
        brick.MoveMotor(MOTOR_SHIFT, 100);
%         brick.MoveMotorAngleAbs(MOTOR_SHIFT, SHIFT_SPEED, shiftTurnPos, 'Brake');
%         while (abs(brick.GetMotorAngle(MOTOR_SHIFT) - shiftTurnPos) > 5)
%             pause(0.05);
        %end
        pause(0.1);
        %brick.WaitForMotor(MOTOR_SHIFT); 
    end
end

