﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trigger : MonoBehaviour {

    public Transform Spawnpoint;
    public GameObject Prefab;
    public GameObject Destroys;

    void OnTriggerEnter()
    {
       GameObject clone = (GameObject)Instantiate (Prefab, Spawnpoint.position, Spawnpoint.rotation);
    }


}
