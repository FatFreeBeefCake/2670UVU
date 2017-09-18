using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearMove : MonoBehaviour {

    public GameObject Honey;

    void OnTriggerEnter()
    {
        transform.Translate(40, 0, 0);
        Destroy(Honey);
    }
}
