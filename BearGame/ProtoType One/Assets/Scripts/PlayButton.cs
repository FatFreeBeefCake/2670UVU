using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class PlayButton : MonoBehaviour {

    public static Action Play;
    public GameObject Playscreen;

    public void PushPlay()
    {
        Play();
        Invoke("TurnOffButton", 0.5f);
    }

    void TurnOffButton()
    {
        GetComponent<Button>().interactable = false;
        Playscreen.SetActive(false);

    }

    public void Retry()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex - 0);
    }
}
