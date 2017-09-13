using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotationscrpt : MonoBehaviour {
    private float speed = 5;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(0.0f, -Input.GetAxis("Horizontal") * speed, 0.0f);
        transform.Rotate(-Input.GetAxis("Vertical") * speed, 0.0f, 0.0f);
    }
}
