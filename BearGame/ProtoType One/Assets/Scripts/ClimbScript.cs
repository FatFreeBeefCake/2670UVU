using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClimbScript : MonoBehaviour {

    Vector3 climbtemp;
    CharacterController cc;
    public GameObject Player;
    public PlayerMoveScript PM;
    public GameData GD;

    public float Climbspeed = 100;

void OnTriggerEnter(Collider other)
    {
        PM = other.gameObject.GetComponent<PlayerMoveScript>();
        if (other.tag == "Player" && PM != null)
        {
            GD.gravity = 0;
            PM.JumpHeight = 6;
        }

    }

    void OnTriggerExit (Collider other)
    {
        if (other.tag == "Player" && PM != null)
        {
            GD.gravity = 40;
            PM.JumpHeight = 13;
        }
        }

    

}
