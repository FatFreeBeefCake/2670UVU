using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterController))]
public class PlayerMoveScript : MonoBehaviour {

    CharacterController cc;

    Vector3 tempMove;
    Vector3 Fall;

    private Action OnLandAction;
    private Image healthbar;

    public float speed = 3;
    public float gravity = 1;
    public float JumpHeight = 100;
    public int CurrentJump = 0;
    public int jumpamt = 2;
    public float pushForce = 2.0f;
    public int Health, MaxHealth;


    // Use this for initialization
    void Start()
    {
        Health = 100;
        MaxHealth = 100;

        cc = GetComponent<CharacterController>();

        PlayButton.Play += Onplay;

        healthbar = transform.Find("PlayerCanvas").Find("HealthBarBG").Find("Health").GetComponent<Image>();
    }
    void Onplay()
    {
        ActionScript.MoveAction += Move;
        ActionScript.JumpAction = Jump;
        ActionScript.Crouch += Crouch;
        ActionScript.Stand += Stand;
        PlayButton.Play -= Onplay;
    }

    private void Stand()
    {
        transform.localScale = new Vector3(0.6f, 0.6f, 0.6f);
    }

    private void Crouch()
    {
        transform.localScale = new Vector3(0.6f, 0.3f, 0.6f);
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

      
        tempMove.x = _movement * speed;
        cc.Move(tempMove * Time.deltaTime);

        if (!cc.isGrounded)
        {
            tempMove.y -= gravity * Time.deltaTime;
            if (OnLandAction == null)
            {
                OnLandAction += restGravity;
            }
        }
        if (cc.isGrounded)
        {
            if(OnLandAction != null)
            {
                OnLandAction();
                OnLandAction = null;
            }
        }
        if (transform.position.z != 0)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y, 0);
        }
    }

    void restGravity()
    {
        tempMove.y = -.1f;
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
    public void Hit(int Damage)
    {
        Health -= Damage;
        healthbar.fillAmount = (float)Health/(float)MaxHealth;
        if (healthbar.fillAmount < 0.10f)
        {
            healthbar.fillAmount = (float)Health / (float)MaxHealth;
        }
    }

}
