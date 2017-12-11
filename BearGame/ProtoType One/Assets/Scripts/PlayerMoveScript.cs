using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

[RequireComponent(typeof(CharacterController))]
public class PlayerMoveScript : MonoBehaviour {

    CharacterController cc;

    Vector3 tempMove;
    Vector3 Fall;

    public GameObject Artobj;

    private UnityAction OnLandAction;
    private Image healthbar;

    float speed;
    float gravity;
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

        healthbar = transform.Find("BoyANimationsBoy").Find("PlayerCanvas").Find("HealthBarBG").Find("Health").GetComponent<Image>();
        ChangeSpeed.SendSpeed = SendSpeedHandler;
        
    }

    private void SendSpeedHandler(float _speed, float _gravity)
    {
        speed = _speed;
        gravity = _gravity;
    }

    void Onplay()
    {
        ActionScript.MoveAction += Move;
        ActionScript.Run = Run;
        ActionScript.Walk = Walk;
        ActionScript.JumpAction = Jump;
        ActionScript.Crouch += Crouch;
        ActionScript.Stand += Stand;
        PlayButton.Play -= Onplay;
        speed = StaticVar.speed;
        gravity = StaticVar.gravity;
    }

    private void Walk()
    {
        speed = StaticVar.speed;
    }

    private void Run()
    {
        speed = StaticVar.speed * 2;
    }

    private void Stand()
    {
        transform.localScale = new Vector3(0.6f,0.6f,0.6f);
        Artobj.transform.localScale = new Vector3(20, 20, 20);
        AniCont.IsCrouched = false;
        speed = StaticVar.speed;
    }

    private void Crouch()
    {
        transform.localPosition -= new Vector3(0, 0.3f, 0);
        transform.localScale = new Vector3(0.6f, 0.3f, 0.6f);
        Artobj.transform.localScale = new Vector3(20,40,20);
        AniCont.IsCrouched = true;
        speed = StaticVar.speed / 2;
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
            AniCont.IsGrounded = false;
        }
        if (cc.isGrounded)
        {
            if(OnLandAction != null)
            {
                OnLandAction();
                OnLandAction = null;
            }
            AniCont.IsGrounded = true;
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

    }

    public void Update ()
    {
        if (healthbar.fillAmount < 0.10f)
        {
            healthbar.fillAmount = (float)Health / (float)MaxHealth;
        }
    }

}
