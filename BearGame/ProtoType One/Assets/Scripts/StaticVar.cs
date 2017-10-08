using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StaticVar {

    public static float speed;

    public static float dragSpeed;

    public static float boostSpeed;

    public static float Run;

    public static float noSpeed;

    public static float gravity;

    public static float boostgravity;

    public static float dragGravity;

    public static float noGravity;



    public enum GameSpeed
    {
        NORMAL,

        DRAG,

        BOOST,

        SUPERBOOST,

        ROPE,

    }
}
