using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class ActionScript : MonoBehaviour {

    public static Action<float> MoveAction;
    public static Action<float> JumpAction;

	// Update is called once per frame
	void Update () {
        if (MoveAction != null)
        {
            MoveAction(Input.GetAxis("Horizontal"));
        }
        if (JumpAction != null)
        {
            JumpAction(Input.GetAxis("Vertical"));
        }
	}
}
