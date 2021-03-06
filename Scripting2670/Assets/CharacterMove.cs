﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class CharacterMove : MonoBehaviour {

    CharacterController cc;

    Vector3 tempMove;

    public float speed = 3;

	// Use this for initialization
	void Start () {
        cc = GetComponent<CharacterController>();
        PlayButton.Play += Onplay;
	}
	void Onplay()
    {
        TriggersScript.KeyAction += Move;
        PlayButton.Play -= Onplay;
    }
	// Update is called once per frame
	void Move (float _movement) {
        tempMove.x = _movement * speed * Time.deltaTime;
        cc.Move(tempMove);
	}
}
