using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMove : MonoBehaviour {

    CharacterController cc;

	// Use this for initialization
	void Start () {
        cc = GetComponent<CharacterController>();
        TriggersScript.KeyAction = Move;
	}
	
	// Update is called once per frame
	void Move (float _movement) {
        print(_movement);
	}
}
