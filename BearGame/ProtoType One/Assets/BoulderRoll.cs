using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoulderRoll : MonoBehaviour {

    public GameObject Boulder;

void OnTriggerEnter()
    {
        Boulder.SetActive(false);
    }
}
