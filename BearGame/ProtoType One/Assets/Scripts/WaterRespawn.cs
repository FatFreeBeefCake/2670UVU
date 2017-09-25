using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterRespawn : MonoBehaviour {

    public Transform Newspawn;
    public Transform Spawn;
    public GameObject Player;
    public PlayerMoveScript PMS;

    private void OnTriggerEnter(Collider other)
    {
        PMS = other.gameObject.GetComponent<PlayerMoveScript>();

        if (other.tag == "Player")
        {
            Player.transform.position = Newspawn.position;
            other.gameObject.GetComponent<PlayerMoveScript>().Hit(25);

            if (PMS.Health < 1)
            {
                print("you Died");
                PMS.Health = 100;
                Player.transform.position = Spawn.position;
            }
        }
    }
}
