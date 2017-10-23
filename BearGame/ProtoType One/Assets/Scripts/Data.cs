using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]

public class Data
{
    Data()
    {

    }
    public int totalScore;

    public float health;

    public string playerName;

    public Vector3 checkPoint;

    public int gold = 100;

    //Speed

    public  float speed;

    public  float dragSpeed;

    public  float boostSpeed;

    public  float Run;

    public  float noSpeed;

    public  float gravity;

    public  float boostgravity;

    public  float dragGravity;

    public  float noGravity;

    public enum GameSpeed
    {
        NORMAL,

        DRAG,

        BOOST,

        SUPERBOOST,

        ROPE,

    }

    public List<GameObject> puchases;

    private static Data _Instance;

    public static Data Instance
    {
        get
        {
                if (_Instance == null)
                {
                    
                    Data.GetData();
                }
                return _Instance;
        }
    }

    public static void GetData()
    {
        if (string.IsNullOrEmpty(PlayerPrefs.GetString("GameData")))
        {
            _Instance = new Data();
        }else
        {
            _Instance = JsonUtility.FromJson<Data>(PlayerPrefs.GetString("GameData"));
        }
 
    }

    public static void SetData(Data data)
    {
        PlayerPrefs.SetString("GameData", JsonUtility.ToJson(_Instance));
    }
}

