using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flipscript : MonoBehaviour {

    Quaternion myRotate;
    Vector3 rotValue;

    public GameObject Player;

	// Use this for initialization
	void Start () {

        ActionScript.MoveAction += Flip;

	}

    private void Flip(float Player)
    {

        if (Player > 0)
            rotValue.y = 0;
        if (Player < 0)
            rotValue.y = 180;

        myRotate.eulerAngles = rotValue;
        transform.rotation = myRotate;

    }
}
