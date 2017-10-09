using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trigger : MonoBehaviour {

    public GameObject Box;

    void OnTriggerEnter()
    {
        Box.SetActive(true);
    }

     void OnTriggerExit()
    {
        Box.SetActive(false);
    }


}
