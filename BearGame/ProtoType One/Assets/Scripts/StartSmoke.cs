using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartSmoke : MonoBehaviour {

    public GameObject Particles;

    void OnTriggerEnter()
    {
        Particles.SetActive(true);
    }
}
