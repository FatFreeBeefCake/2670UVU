using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMoveScript : MonoBehaviour {

    CharacterController cc;

    Vector3 tempMove;

    public float speed = 3;
    public float gravity = 5;

    // Use this for initialization
    void Start()
    {
        cc = GetComponent<CharacterController>();
        ActionScript.MoveAction += Move;
        ActionScript.JumpAction += Jump;
    }

    private void Jump(float _movement)
    {
        tempMove.y = _movement * speed * Time.deltaTime;
        cc.Move(tempMove);
    }

    // Update is called once per frame
    void Move(float _movement)
    {
        tempMove.x = _movement * speed * Time.deltaTime;
        cc.Move(tempMove);
    }
      
}
