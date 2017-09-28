using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightOn : MonoBehaviour {

    public GameObject Light;

        private void OnTriggerEnter()
    {
        Light.SetActive(true);
    }
    
       
}
