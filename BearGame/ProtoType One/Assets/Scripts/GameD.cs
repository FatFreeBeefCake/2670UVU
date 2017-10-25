using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]

public class GameD : MonoBehaviour {

    public float health = 1;



    protected GameD ()
    {

    }

    protected static string dataName = "GameD";

    private static GameD instance;

    public static GameD Instance
    {
        get
        {
            if (instance == null)
            {
                GetData();
            }
            return instance;
        }
    }

    public static void GetData()
    {
        if (string.IsNullOrEmpty(PlayerPrefs.GetString(dataName)))
        {
            instance = new GameD();
        }
        else
        {
            instance = JsonUtility.FromJson<GameD>(PlayerPrefs.GetString(dataName));
        }
    }

    public static void SetData()
    {
        PlayerPrefs.SetString(dataName, JsonUtility.ToJson(instance));
    }
}
