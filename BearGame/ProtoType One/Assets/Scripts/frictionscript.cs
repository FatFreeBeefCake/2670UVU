using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class frictionscript : MonoBehaviour {

    public GameObject Player;

    private void OnTriggerStay(Collider other)
    {

        if (other.gameObject.name == "platform")
        {
            transform.parent = other.transform;
        }
    }
}
