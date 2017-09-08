using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RespawnfallScript : MonoBehaviour {

    public Transform Spawn;
    public GameObject Player;

    public void OnTriggerEnter()
    {
        Spawn.Translate(0, 0, 0);
    }
}
