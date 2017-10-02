using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamraFollowScript : MonoBehaviour
{

    public GameObject player;

    public float OSX = 0;
    public float OSY = 0;
    public float OSZ = 0;

    void LateUpdate()
    {
        this.transform.position = new Vector3(player.transform.position.x + OSX, player.transform.position.y + OSY, player.transform.position.z + OSZ);
    }
}
