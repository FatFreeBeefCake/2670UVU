using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GetD : MonoBehaviour {

void Start()
    {
        print(GameD.Instance.health);
        GameD.Instance.health = 10;
        print(GameD.Instance.health);
    }

    void OnApplicationQuit()
    {
        GameD.SetData();
    }
}
