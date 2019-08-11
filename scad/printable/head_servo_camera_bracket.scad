/*
 * Copyright (c) 2019, Vigibot
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 *   * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * 
 * Description: OpenSCAD design for the smiling pan & tilt smiling head, part of the Vigibot robot "Minus"
 * Design:      Quillès Jonathan / Pascal Piazzalungua
 * Author:      Quillès Jonathan
 */

PRECISION = 100;

$fn = PRECISION;

HEAD_Z = 13.7;
HEAD_TOP_X = 32;
HEAD_BOT_X = 30; 
HEAD_BOT_Y = 19.75;
HEAD_TOP_Y = 16.25;
HEAD_CHAMFER = (HEAD_TOP_X - HEAD_BOT_X) / 2;

SERVO_BOX_X = 23;
SERVO_BOX_Z = 12.5;
SERVO_STAND_THICKNESS = 2.8;
SERVO_STAND_LENGTH = 33;
SERVO_STAND_OFFSET = 5.9;
SERVO_HEAD_WIDTH = 14.75;
SERVO_HEAD_HEIGHT = 5;
SERVO_CENTER_Z = 6.25;

module head () {
    difference() {
        linear_extrude (height = HEAD_Z)
            polygon ([
                [0,0], 
                [HEAD_BOT_X,0], 
                [HEAD_BOT_X, HEAD_BOT_Y],
                [HEAD_BOT_X + HEAD_CHAMFER,     HEAD_BOT_Y + HEAD_CHAMFER], 
                [HEAD_BOT_X + HEAD_CHAMFER,     HEAD_BOT_Y + HEAD_CHAMFER + HEAD_TOP_Y],
                [HEAD_BOT_X + HEAD_CHAMFER, HEAD_BOT_Y + HEAD_CHAMFER + HEAD_TOP_Y],
                [HEAD_BOT_X, HEAD_BOT_Y + 2 * HEAD_CHAMFER + HEAD_TOP_Y ],
                [0, HEAD_BOT_Y + 2 * HEAD_CHAMFER + HEAD_TOP_Y ],
                [-HEAD_CHAMFER,  HEAD_BOT_Y + HEAD_CHAMFER + HEAD_TOP_Y],
                [-HEAD_CHAMFER,  HEAD_BOT_Y + HEAD_CHAMFER],
                [0,  HEAD_BOT_Y]            
        ]);
        chamfer();
    }
}


module chamfer() {
    translate ([-5, -0.5, HEAD_Z + 0.5])
    rotate([0, 90, 0])
    linear_extrude (height = HEAD_TOP_X + 10)
        polygon ([
            [2.2,0], 
            [0,2.2], 
            [0,0]
        ]);
}

module servoInHeadBracket () {
    //Servo Box
    cube([SERVO_BOX_X, SERVO_BOX_X, SERVO_BOX_Z], center = true);
    
    //Servo Stand
    translate ([-SERVO_STAND_OFFSET, 0, 0])
        cube([SERVO_STAND_THICKNESS, SERVO_STAND_LENGTH, SERVO_BOX_Z], center = true);
    
    //Servo Head 
    translate ([-SERVO_BOX_X /2 - SERVO_HEAD_HEIGHT/2 + 0.1, SERVO_HEAD_WIDTH/2 - SERVO_BOX_X /2, 0])
        cube([SERVO_HEAD_HEIGHT, SERVO_HEAD_WIDTH, SERVO_BOX_Z], center = true);
    
    //Space for wires
        translate ([SERVO_BOX_X /2 - 4, -SERVO_BOX_X /2, 0])
        cube([8, 6, SERVO_BOX_Z], center = true);
    
}

module drillThread (t = 5) {
    cylinder (r = 0.9, h = t, center = true);
}

module drillHead (h = 5) {
    cylinder (r = 1.1, h = h, center = true);
}

module drillScrew (h=5, t=10) {
    drillHead (h = h);
    drillThread (t = t);
}


module servoScrewHoles() {

    // Stand holes
    translate ([0, 2.5, SERVO_CENTER_Z]) {
        rotate ([0, 90, 0])
            drillScrew (20, 33);
    }
    
    translate ([0, 33 - 2.5, SERVO_CENTER_Z]) {
        rotate ([0, 90, 0])
            drillScrew (20, 33);
    }

    // Counter axis hole
    translate ([33, 11.1, SERVO_CENTER_Z]) {
        rotate([0, 90, 0])
            drillScrew (0, 20);
    }
}

module cameraHoles () {
    ENTRAXEA = 27.5;
    ENTRAXEB = 13.5;
    translate ([ENTRAXEA/2, ENTRAXEB/2, 0])
        cylinder (r = 1.2, 20, center = true);
    translate ([-ENTRAXEA/2, ENTRAXEB/2, 0])
        cylinder (r = 1.2, 20, center = true);
    translate ([ENTRAXEA/2, -ENTRAXEB/2, 0])
        cylinder (r = 1.2, 20, center = true);
    translate ( [-ENTRAXEA/2, -ENTRAXEB/2, 0])
        cylinder ( r = 1.2, 20, center = true);
}

module smile () {
    difference() {
        cylinder (r = 10, 8, center = true ); 
        translate ([0, 6, 0])
            cube([20, 20, 10], center = true);
        
    } 
}

module smilingHead() {
    difference () {
        head();
        translate ([HEAD_BOT_X/2, 33/2, SERVO_CENTER_Z])
            servoInHeadBracket ();
        servoScrewHoles();
        translate ([HEAD_BOT_X/2, 28.75, SERVO_CENTER_Z])
           cameraHoles ();
        translate ([HEAD_BOT_X/2, 15, 12])
        smile ();
    }
}

rotate([180, 0, 0])
    smilingHead();

//%import( "../../stl/head_servo_camera_braket.stl" );

