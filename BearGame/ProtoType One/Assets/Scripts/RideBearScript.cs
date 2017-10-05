using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RideBearScript : MonoBehaviour
{

    public Transform Attachpoint;
    public GameObject Player;
    public PlayerMoveScript PMS;

    public float Speed;
    public float gravity;

    private void OnTriggerStay(Collider other)
    {
        if (other.tag == "Player")
        {
            if (Input.GetKeyDown(KeyCode.E))
            {
                ChangeSpeed.SendSpeed(StaticVar.noSpeed, StaticVar.noGravity);
                Player.transform.parent = Attachpoint;
            }
            if (Input.GetKeyDown(KeyCode.W))
            {
                ChangeSpeed.SendSpeed(StaticVar.speed, StaticVar.gravity);
                Player.transform.parent = null;
            }
        }
    }
}
