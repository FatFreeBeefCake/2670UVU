using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearMovingScript : MonoBehaviour
{
    CharacterController cc;
    Vector3 tempMove;
    public float speed = 6;


    void Start()
    {
        cc = GetComponent<CharacterController>();
        ActionScript.BearAction += Movement;
    }

    void Movement(float _movement)
    {
        tempMove.x = _movement * speed;
        cc.Move(tempMove * Time.deltaTime);
    }
}
