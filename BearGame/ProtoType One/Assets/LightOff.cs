using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightOff : MonoBehaviour {

    public GameObject Light;

    private void OnTriggerEnter()
    {
        Light.SetActive(false);
    }
}
