using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearAnimation : MonoBehaviour {

    public Animator Bearani;

    public bool Bear;

    void Start()
    {
        Bearani = GetComponent<Animator>();

    }
    void OnTriggerEnter(Collider other)
    {


        if (other.tag == "Player")
        {
            Bearani.SetTrigger("BearAttack");
        }
    }

}
