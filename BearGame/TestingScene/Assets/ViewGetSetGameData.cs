using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class ViewGetSetGameData : MonoBehaviour {

    public GameData myGameData;

    void Awake()
    {
        GetData();
    }

    void Update()
    {
        SetData();
    }
    [ContextMenu("Get Data")]

    void GetData()
    {
        GameData.GetData();
        myGameData = GameData.Instance;
        print(myGameData);
    }
    void SetData()
    {
        myGameData.SaveDataFromInstance();
        print(PlayerPrefs.GetString(GameData.dataName));
    }
}
