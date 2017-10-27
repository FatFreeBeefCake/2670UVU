using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]

public class PowerUp {

    public enum PowerUpTypes
    {
        PowerUP,

        PowerDOWN
    }

    public PowerUpTypes powerUPType = PowerUpTypes.PowerUP;

    public float powerlevel = 10;

}
