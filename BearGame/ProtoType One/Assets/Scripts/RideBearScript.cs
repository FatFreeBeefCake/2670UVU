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
                ChangeSpeed.SendSpeed(Data.Instance.noSpeed, Data.Instance.noGravity);
                Player.transform.parent = Attachpoint;
            }
            if (Input.GetKeyDown(KeyCode.W))
            {
                ChangeSpeed.SendSpeed(Data.Instance.speed, Data.Instance.gravity);
                Player.transform.parent = null;
            }
        }
    }
}
