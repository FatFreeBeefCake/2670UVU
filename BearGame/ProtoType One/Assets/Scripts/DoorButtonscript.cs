using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.Events;

public class DoorButtonscript : MonoBehaviour {

    public static UnityAction OpenDoor;

	void OnTriggerEnter (Collider other)
    {
        if (other.tag == "Player")
        {
            OpenDoor();
        }
    }
}
