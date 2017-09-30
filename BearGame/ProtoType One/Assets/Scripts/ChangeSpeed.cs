using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ChangeSpeed : MonoBehaviour {

    public static Action<float> SendSpeed;

    public StaticVar.GameSpeed speedType;
    
    void OnTriggerEnter()
    {
        switch (speedType)
        {
            case StaticVar.GameSpeed.DRAG:
                SendSpeed(StaticVar.dragSpeed);
                break;
            case StaticVar.GameSpeed.BOOST:
                SendSpeed(StaticVar.boostSpeed);
                break;
            case StaticVar.GameSpeed.SUPERBOOST:
                SendSpeed(StaticVar.boostSpeed * 2);
                break;
            case StaticVar.GameSpeed.NORMAL:
                SendSpeed(StaticVar.speed);
                break;
        }
    } 

    void OntriggerExit()
    {
        SendSpeed(StaticVar.speed);
    }
}
