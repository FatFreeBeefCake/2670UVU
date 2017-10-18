using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameData : MonoBehaviour {

    public float speed = 6;

    public float dragSpeed = 1.5f;

    public float boostSpeed = 12;

    public float gravity = 40;

    public float dragGravity = 20;

    public float boostgravity = 150;

    public float noGravity = 0;

    public float noSpeed = 0;

    public float Run = 12;

	// Use this for initialization
	void Start () {
        Data.Instance.speed = speed;
        Data.Instance.dragSpeed = dragSpeed;
        Data.Instance.boostSpeed = boostSpeed;
        Data.Instance.Run = Run;
        Data.Instance.noSpeed = noSpeed;    

        Data.Instance.gravity = gravity;
        Data.Instance.boostgravity = boostgravity;
        Data.Instance.dragGravity = dragGravity;
        Data.Instance.noGravity = noGravity;
	}
	
}
