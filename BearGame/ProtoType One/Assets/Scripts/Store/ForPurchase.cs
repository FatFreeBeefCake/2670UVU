using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ForPurchase : MonoBehaviour {

    public static UnityAction<int, GameObject> PurchaseAction;

    public int price = 20;
    public GameObject item;

    public void MakePurchase() { 
    
        PurchaseAction(price, item);
    }
}
