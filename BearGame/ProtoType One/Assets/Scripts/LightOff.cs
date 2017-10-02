using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightOff : MonoBehaviour {

    public GameObject Light;
    public GameObject Light2;

    private void OnTriggerEnter()
    {
        Light.SetActive(false);
        Light2.SetActive(false);
    }
}
