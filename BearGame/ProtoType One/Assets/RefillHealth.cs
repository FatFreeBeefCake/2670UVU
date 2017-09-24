using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RefillHealth : MonoBehaviour {


    void OnTriggerEnter(Collider other)
    {
        other.gameObject.GetComponent<PlayerMoveScript>().Hit(0);
    }
}
