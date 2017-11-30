using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PauseSplash : MonoBehaviour
{
    public static Action ResetObjects;
    //Reset Game Objects
    public Transform Spawn;
    public GameObject Enemy1;
    public GameObject Enemy2;
    public GameObject Enemy3;
    public GameObject Bear1;
    public GameObject Bear2;
    public GameObject Bear3;
    public GameObject Bear4;
    public GameObject Bear5;
    public GameObject Box;
    public GameObject Box2;
    public GameObject Box3;
    public GameObject Box4;
    public GameObject Box5;
    public GameObject Box6;




    public GameObject PauseScreen;
    //public GameObject Gold;
    // Use this for initialization
    void Start()
    {
        ActionScript.Pause = Pause;
    }

    private void Pause()
    {
        //Gold.SetActive(true);
        PauseScreen.SetActive(true);

        Time.timeScale = 0;
    }

    public void Resume()
    {
        //Gold.SetActive(false);  
        PauseScreen.SetActive(false);
        Time.timeScale = 1;
    }

    public void Quit()
    {
        print("Quit");
        Application.Quit();
    }
    // Update is called once per frame
    public void Reset()
    {
        ResetObjects();
        PauseScreen.SetActive(false);
        Time.timeScale = 1;
        Enemy1.SetActive(true);
        Enemy2.SetActive(true);
        Enemy3.SetActive(true);
        Bear1.SetActive(true);
        Bear2.SetActive(true);
        Bear3.SetActive(true);
        Bear4.SetActive(true);
        Bear5.SetActive(true);
        Box.SetActive(true);
        Box2.SetActive(true);
        Box3.SetActive(true);
        Box4.SetActive(true);
        Box5.SetActive(true);
        Box6.SetActive(true);
    }

}
