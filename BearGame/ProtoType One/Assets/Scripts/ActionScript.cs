using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.Events;
public class ActionScript : MonoBehaviour {

    public static UnityAction<float> MoveAction;
    public static UnityAction ClimbAction;
    public static UnityAction JumpAction;
    public static UnityAction Crouch;
    public static UnityAction Stand;
    public static UnityAction Run;
    public static UnityAction Walk;
    public static UnityAction<float> BearAction;
    public static UnityAction Pause;

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
