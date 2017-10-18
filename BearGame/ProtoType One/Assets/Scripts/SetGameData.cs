using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class SetGameData : MonoBehaviour {


    public static Action<int> UpdateGold;

    void Awake()
    {
        ForPurchase.PurchaseAction += PurchaseHandler;
        BuyGold.BuyGoldAction += BuyGoldHandler;

    }

    private void BuyGoldHandler(int _gold)
    {
        Data.Instance.gold += _gold;
        UpdateGold(Data.Instance.gold);
    }

    private void PurchaseHandler(int _price, GameObject _item)
    {
        if (Data.Instance.gold >= _price)
        {
            Data.Instance.gold -= _price;
            UpdateGold(Data.Instance.gold);

            Data.Instance.puchases.Add(_item);
        }
    }

    void Start()
    {
        UpdateGold(Data.Instance.gold);
    }
    void OnApplicationQuit()
    {
        Data.SetData(Data.Instance);
    }
}
