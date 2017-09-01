using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMoveScript : MonoBehaviour {

    CharacterController cc;

    Vector3 tempMove;

    public float speed = 3;
    public float gravity = 0.5f;
    public float JumpHeight = 100;
    int CurrentJump = 0;
    public int jumpamt = 2;

    // Use this for initialization
    void Start()
    {
        cc = GetComponent<CharacterController>();
        ActionScript.MoveAction += Move;
        ActionScript.JumpAction = Jump;
    }

    private void Jump ()
    {
        if (cc.isGrounded)
        {
            CurrentJump = 0;
        }
        if (CurrentJump < jumpamt)
        {
            print("jump");
            tempMove.y = JumpHeight;
            CurrentJump++;
        }
    }

    // Update is called once per frame
    void Move(float _movement)
    {
        tempMove.y -= gravity * Time.deltaTime;
        tempMove.x = _movement * speed * Time.deltaTime;
        cc.Move(tempMove);
    }
      
}
