using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearMove : MonoBehaviour {

    public GameObject Honey;

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Fruit")
        {
            transform.Translate(40, 0, 0);
            Destroy(Honey);
            print("stop touching me");
        }
    }
}
