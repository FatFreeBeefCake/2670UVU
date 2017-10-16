using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UpdateGold : MonoBehaviour {

    Text goldUI;

    private void Awake()
    {

        SetGameData.UpdateGold += GoldHandler;
        goldUI = GetComponent<Text>();
    }

    private void GoldHandler(int _gold)
    {
        goldUI.text = "Gold: $" + _gold.ToString();
    }
}
