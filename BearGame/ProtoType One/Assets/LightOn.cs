using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightOn : MonoBehaviour {

    public GameObject Light;
    public GameObject Light2;

        private void OnTriggerEnter()
    {
        Light.SetActive(true);
        Light2.SetActive(true);

    }
    
       
}
