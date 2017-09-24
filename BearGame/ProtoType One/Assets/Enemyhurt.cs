using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemyhurt : MonoBehaviour {

    public PlayerMoveScript Character;

    public Transform Spawn;
    public GameObject Player;

    void OnTriggerEnter(Collider other)
    {
        Character = other.gameObject.GetComponent<PlayerMoveScript>();
        Character.Health -= 50;

        if (Character.Health < 1)
        {
            print("you Died");
            Player.transform.position = Spawn.position;
            Character.Health = 100;
        }
    }
}
