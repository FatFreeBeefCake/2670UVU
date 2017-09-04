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
    public float pushForce = 2.0f;
    // Use this for initialization
    void Start()
    {
        cc = GetComponent<CharacterController>();

        PlayButton.Play += Onplay;
    }
    void Onplay()
    {
        ActionScript.MoveAction += Move;
        ActionScript.JumpAction = Jump;
        PlayButton.Play -= Onplay;
    }


    private void Jump ()
    {
        if (cc.isGrounded)
        {
            CurrentJump = 0;
        }
        if (CurrentJump < jumpamt)
        {
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
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;

        //checking whether rigidbody is either non-existant or kinematic
        if (body == null || body.isKinematic)
            return;

        if (hit.moveDirection.y < -.3f)
            return;

        //set up push direction for object
        Vector3 pushDirection = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);

        //apply push force to object
        body.velocity = pushForce * pushDirection;
    }

   /* if (cc.isGrounded && m_MotorThrottle.y <= 0.001f)
{
        // Only anti-bump if ground directly under capsule or if there's ground some distance below
        // to take step offset into account. This eliminates the edge-fall bump.
        if (Physics.Raycast(transform.position, -Vector3.up, 1f, raycastMask, allowTriggerRaycastHits))
        {
            m_CurrentAntiBumpOffset = Mathf.Max(Player.StepOffset.Get(), Vector3.Scale(m_MoveDirection, (Vector3.one - Vector3.up)).magnitude);
            m_MoveDirection += m_CurrentAntiBumpOffset* Vector3.down;
}
}*/
}
