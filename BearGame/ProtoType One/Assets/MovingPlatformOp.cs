using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingPlatformOp : MonoBehaviour {

	void Update () {
        transform.position = new Vector3(transform.position.x, transform.position.y, -Mathf.PingPong(Time.time, 2) - 3.86f);
    }
}
