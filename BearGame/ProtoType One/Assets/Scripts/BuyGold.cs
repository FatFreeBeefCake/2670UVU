using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class BuyGold : MonoBehaviour {

    public static Action<int> BuyGoldAction;


    public void BuyGoldButton(int _value)
    {
        BuyGoldAction(_value);
    }
}
