using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetObject : MonoBehaviour {


    private Vector3 Startposition;
    private Vector3 StartRotation;
	// Use this for initialization
	void Start () {
        PauseSplash.ResetObjects += OnReset;
        Startposition = this.transform.position;
        StartRotation = this.transform.eulerAngles;
	}
	
    void OnReset()
    {
        this.transform.position = Startposition;
        this.transform.eulerAngles = StartRotation;
    }
}
