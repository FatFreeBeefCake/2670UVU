using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class DoorButtonscript : MonoBehaviour {

    public static Action OpenDoor;

	void OnTriggerEnter (Collider other)
    {
        if (other.tag == "Player")
        {
            OpenDoor();
        }
    }
}
