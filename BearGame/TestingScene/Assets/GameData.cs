using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]

public class GameData : MonoBehaviour {

    protected GameData ()
    {

    }

    public float health;

    public float speed;

    public Vector3 CheckPoint;

    public List<PowerUp> powerUps;

    public const string dataName = "GameData";

    private static GameData instance;

    public static GameData Instance
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
            instance = new GameData();
        }
        else
        {
            instance = JsonUtility.FromJson<GameData>(PlayerPrefs.GetString(dataName));
        }
    }


    public static void SetData()
    {
        PlayerPrefs.SetString(dataName, JsonUtility.ToJson(instance));
    }

    public void SaveDataFromInstance()
    {
        PlayerPrefs.SetString(dataName, JsonUtility.ToJson(this));
    }
}
