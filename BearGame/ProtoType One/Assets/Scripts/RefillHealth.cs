using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RefillHealth : MonoBehaviour {

    public PlayerMoveScript PMS;
    
    void OnTriggerEnter(Collider other)
    {
        PMS = other.gameObject.GetComponent<PlayerMoveScript>();
        other.gameObject.GetComponent<PlayerMoveScript>().Hit(0);
        PMS.Health = 100;
    }
}
