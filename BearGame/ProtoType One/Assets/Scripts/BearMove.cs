using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearMove : MonoBehaviour {

    public GameObject Honey;
    public GameObject Spawn;
    public GameObject Bear;

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Fruit")
        {
            Bear.SetActive(false);
            Honey.transform.position = Spawn.transform.position;
            Honey.transform.parent = null;
            print("stop touching me");
        }
    }
}
