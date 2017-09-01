using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class ActionScript : MonoBehaviour {

    public static Action<float> MoveAction;
    public static Action JumpAction;

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
	}
}
