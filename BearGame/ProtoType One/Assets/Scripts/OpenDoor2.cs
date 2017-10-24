using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class OpenDoor2 : MonoBehaviour {

    public static Action OpenDoorTwo;

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            OpenDoorTwo();
        }
    }
}
