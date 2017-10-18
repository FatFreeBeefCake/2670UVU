using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ChangeSpeed : MonoBehaviour {

    public static Action<float, float> SendSpeed;

    public Data.GameSpeed speedType;
    
    void OnTriggerEnter()
    {
        switch (speedType)
        {
            case Data.GameSpeed.DRAG:
                SendSpeed(Data.Instance.dragSpeed, Data.Instance.gravity);
                break;
            case Data.GameSpeed.BOOST:
                SendSpeed(Data.Instance.dragSpeed, Data.Instance.boostgravity);
                break;
            case Data.GameSpeed.SUPERBOOST:
                SendSpeed(Data.Instance.boostSpeed * 2, Data.Instance.gravity);
                break;
            case Data.GameSpeed.NORMAL:
                SendSpeed(Data.Instance.speed, Data.Instance.gravity);
                break;
            case Data.GameSpeed.ROPE:
                SendSpeed(Data.Instance.speed, Data.Instance.noGravity);
                break;

        }
    } 

    void OnTriggerExit()
    {
        SendSpeed(Data.Instance.speed, Data.Instance.gravity);
    }
}
