using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KillEnemyScript : MonoBehaviour {

    public GameObject Enemy;

        public void OnTriggerEnter(Collider other)
    {
        Enemy.SetActive(false);
    }
}
