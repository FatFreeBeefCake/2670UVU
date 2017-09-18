using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class FireingInput : MonoBehaviour {

    public static Action FireAction;

    public static Action StopFire;

 
	public void Fire () {
        FireAction();
	}
	
    public void Stop()
    {
        StopFire();
    }
}
