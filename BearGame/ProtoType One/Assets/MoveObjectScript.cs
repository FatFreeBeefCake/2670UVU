using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveObjectScript : MonoBehaviour {

    Vector3 Box;

	// Use this for initialization
	void Start () {

        DoorButtonscript.OpenDoor += Open;
		
	}

    private void Open()
    {
        StartCoroutine(MoveBox());
    }

    IEnumerator MoveBox()
    {
        while (transform.position.y > -1)
        {
            Box.y = -3f * Time.deltaTime;
            transform.Translate(Box);
            yield return null;
        }
       
    }
}
