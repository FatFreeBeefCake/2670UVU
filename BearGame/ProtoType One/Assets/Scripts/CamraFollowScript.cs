using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamraFollowScript : MonoBehaviour
{

    public Transform player;

    public Vector3 Camoffset;

    private void Update()
    {
        FollowTarget();
    }

    void FollowTarget()
    {
        this.transform.position = Vector3.Lerp(transform.position, player.position + Camoffset, .99f);
        transform.LookAt(player);
    }

}
