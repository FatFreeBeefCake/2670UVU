using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimateCharacter : MonoBehaviour {
    Animator anims;
	// Use this for initialization
	void Start () {
        anims = GetComponent<Animator>();
        PlayButton.Play += Onplay;
	}

    void Onplay()
    {
        TriggersScript.KeyAction += Animate;
        PlayButton.Play -= Onplay;
    }

    private void Animate(float obj)
    {
        anims.SetFloat("Walk", obj);
    }
}
