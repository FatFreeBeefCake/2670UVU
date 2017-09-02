using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndGameScript : MonoBehaviour {

    public GameObject YouWin;

void OnTriggerEnter()
    {
        YouWin.SetActive(true);
        Time.timeScale = 0;
    }
}
