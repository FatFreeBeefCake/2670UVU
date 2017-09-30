using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterScript : MonoBehaviour {

    public PlayerMoveScript character;
    public GameData GD;
    void OnTriggerEnter(Collider other)
    {
        character = other.gameObject.GetComponent<PlayerMoveScript>();
        if (other.tag == "Player" && character != null)
        {
           GD.gravity = 100;
            character.JumpHeight = 0;
            GD.speed = 2.5f;
        }
    
	}

    void OnTriggerExit(Collider other)
    {
        character = other.gameObject.GetComponent<PlayerMoveScript>();
        if (other.tag == "Player" && character != null)
        {
            GD.gravity = 40;
            character.JumpHeight = 13;
            GD.speed = 5;
        }

    }
}
