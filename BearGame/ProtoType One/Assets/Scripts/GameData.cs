using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameData : MonoBehaviour {

    public float speed = 6;

    public float dragSpeed = 1.5f;

    public float boostSpeed = 12;

    public float gravity = 40;

    public float dragGravity = 20;

    public float boostGravity = 30;

    public float noGravity = 0;

    public float Run = 12;

	// Use this for initialization
	void Start () {
        StaticVar.speed = speed;
        StaticVar.dragSpeed = dragSpeed;
        StaticVar.boostSpeed = boostSpeed;
        StaticVar.Run = Run;

        StaticVar.gravity = gravity;
        StaticVar.boostGravity = boostGravity;
        StaticVar.dragGravity = dragGravity;
        StaticVar.noGravity = noGravity;
	}
	
}
