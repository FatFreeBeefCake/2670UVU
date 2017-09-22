using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewMoveScript : MonoBehaviour {
    public float speed = 6.0F;
    public float jumpSpeed = 20.0F;
    //public float gravity = 20.0F;
    private Vector3 moveDirection = Vector3.zero;
    void Update()
    {

        CharacterController controller = GetComponent<CharacterController>();
        if (controller)
        {

            moveDirection = new Vector3(Input.GetAxis("Horizontal"), -0.5f, 0);
            moveDirection = transform.TransformDirection(moveDirection);
            moveDirection *= speed;

            if (Input.GetButtonDown("Jump"))
                moveDirection.y = jumpSpeed; 

        }
       // moveDirection.y -= gravity * Time.deltaTime;
        controller.Move(moveDirection * Time.deltaTime);
    }
}