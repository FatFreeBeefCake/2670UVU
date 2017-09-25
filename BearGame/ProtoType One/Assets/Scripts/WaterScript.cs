using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterScript : MonoBehaviour {

    public PlayerMoveScript character;

    void OnTriggerEnter(Collider other)
    {
        character = other.gameObject.GetComponent<PlayerMoveScript>();
        if (other.tag == "Player" && character != null)
        {
            character.gravity = 100;
            character.JumpHeight = 0;
            character.speed = 2.5f;
        }
    
	}

    void OnTriggerExit(Collider other)
    {
        character = other.gameObject.GetComponent<PlayerMoveScript>();
        if (other.tag == "Player" && character != null)
        {
            character.gravity = 40;
            character.JumpHeight = 13;
            character.speed = 5;
        }

    }
}
