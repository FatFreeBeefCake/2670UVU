using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlipScript : MonoBehaviour {
    Quaternion myRotate;

    Vector3 rotvalue;
	// Use this for initialization
	void Start () {
        PlayButton.Play += OnPlay;
	}

    public void OnPlay()
    {
        TriggersScript.KeyAction += Flip;
        PlayButton.Play -= OnPlay;
    }
    private void Flip(float obj)
    {
        if (obj > 0)
            rotvalue.y = 0;
        if (obj < 0)
            rotvalue.y = 180;

        myRotate.eulerAngles = rotvalue;
        transform.rotation = myRotate;
    }
}
