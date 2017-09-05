using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class ActionScript : MonoBehaviour {

    public static Action<float> MoveAction;
    public static Action JumpAction;
    public static Action Crouch;
    public static Action Stand;

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

	}
}
