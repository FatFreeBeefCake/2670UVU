using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Enemyhurt : MonoBehaviour {

    public PlayerMoveScript Character;
    public Image healthbar;
    public Transform Spawn;
    public GameObject Player;
    
    void OnTriggerEnter(Collider other)
    {
        Character = other.gameObject.GetComponent<PlayerMoveScript>();
        other.gameObject.GetComponent<PlayerMoveScript>().Hit(25);

        if (Character.Health < 1)
        {
            print("you Died");
            Player.transform.position = Spawn.position;
            Character.Health = 100;
        }
    }
}
