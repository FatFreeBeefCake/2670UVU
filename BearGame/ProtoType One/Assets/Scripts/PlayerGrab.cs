using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerGrab : MonoBehaviour
{
    public Transform attachObject;
    public GameObject ThisFruit;
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



    void OnTriggerStay()

    {

            if (Input.GetKey(KeyCode.E))
            {
                transform.parent = attachObject;

                transform.localPosition = Vector3.zero;

                transform.localRotation = Quaternion.identity;
            }
            else if (Input.GetKey(KeyCode.W))
            {
                transform.parent = null;
            }
            //assetArt.SetActive(StaticVars.weaponsEnabled);
    }

}
