using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggersScript : MonoBehaviour {

    public int Number = 10;
    public GameObject Cube;
    // Use this for initialization
	void OnTriggerEnter () {
        print(Number + 12);

	}
	
	// Update is called once per frame
	void OnTriggerExit () {
        print(Number + 11);
	}
}
