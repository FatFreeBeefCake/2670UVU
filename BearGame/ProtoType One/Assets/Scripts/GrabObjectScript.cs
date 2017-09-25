using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabObjectScript : MonoBehaviour {

    public Transform attachObject;
    public Rigidbody RB;
    public GameObject Player;
    //public GameObject assetArt;



    /*void Awake()

    {

        SendWeaponAttach.SendAttachPoint += AttachPointHandler;

    }
    */


    void AttachPointHandler(Transform _transform)
    {

        attachObject = _transform;

    }



    void OnTriggerStay(Collider other)

    {
        if (other.tag == "Player")
        {
            if (Input.GetKeyDown(KeyCode.E))
            {
                transform.parent = attachObject;

                RB.useGravity = false;
                RB.isKinematic = true;

                transform.localPosition = Vector3.zero;

                transform.localRotation = Quaternion.identity;
                //assetArt.SetActive(StaticVars.weaponsEnabled);
            }

            if (Input.GetKey(KeyCode.W))
            {
                transform.parent = null;
                RB.isKinematic = false;
                RB.useGravity = true;
            }
        }
    }
     void OnTriggerExit()
    {
        RB.useGravity = true;
        RB.isKinematic = true;

    }
}
