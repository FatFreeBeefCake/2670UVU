﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyObject : MonoBehaviour {
    public GameObject Platform;


    void OnTriggerEnter(Collider other)
    {
        Platform.SetActive(false);
    }

}
