using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AniCont : MonoBehaviour {

    public Animator animator;

    public float Speed;
    public float YSpeed;

    public static bool IsGrounded;
    public static bool IsCrouched;

	// Use this for initialization
	void Start () {
        animator = GetComponent<Animator>();
        ActionScript.MoveAction += animate;
	}

    private void animate(float obj)
    {
        animator.SetFloat("Speed", Mathf.Abs(obj));
        animator.SetBool("Grounded", IsGrounded);
        animator.SetBool("Crouched", IsCrouched);
    }

    // Update is called once per frame
    void Update () {
		
	}
}
