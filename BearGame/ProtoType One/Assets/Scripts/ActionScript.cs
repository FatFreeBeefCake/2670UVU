﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class ActionScript : MonoBehaviour {

    public static Action<float> MoveAction;
    public static Action ClimbAction;
    public static Action JumpAction;
    public static Action Crouch;
    public static Action Stand;
    public static Action Run;
    public static Action Walk;
    public static Action<float> BearAction;
    public static Action Pause;

	// Update is called once per frame
	void Update () {
        if (MoveAction != null)
        {
            MoveAction(Input.GetAxis("Horizontal"));
        }
        if (Input.GetKeyDown(KeyCode.Space))
        {
            JumpAction();
        }
        if (Input.GetKeyDown(KeyCode.S))
        {
            Crouch();
        }
        else if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            Crouch();
        }
        if (Input.GetKeyUp(KeyCode.S))
        {
            Stand();
        }
        else if (Input.GetKeyUp(KeyCode.DownArrow))
        {
            Stand();
        }

        if (Input.GetKey(KeyCode.LeftShift))
        {
            Run();
        }
        else if (Input.GetKeyUp(KeyCode.LeftShift))
        {
            Walk();
        }
        if (BearAction != null)
        {
            BearAction(Input.GetAxis("H2"));
        }
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Pause();
        }

	}
}
