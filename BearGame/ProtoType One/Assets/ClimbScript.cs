using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClimbScript : MonoBehaviour {

    Vector3 climbtemp;
    CharacterController cc;
    public GameObject Player;

    public float Climbspeed = 100;

void OnTriggerEnter()
    {
        if (Input.GetKey(KeyCode.W))
        {
            Player.transform.position = new Vector3(0, 10, 0);
            print("I am Climbing");
        }
    }

    

}
