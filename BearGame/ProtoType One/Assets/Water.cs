using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Water : MonoBehaviour {

    Vector3 WaterStuff;



    void OnTriggerEnter()
    {
        WaterStuff.y = 10;    
    }
}
