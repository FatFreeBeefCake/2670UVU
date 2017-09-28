using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingPScriptNew : MonoBehaviour {


	void Update () {
        transform.position = new Vector3(transform.position.x, Mathf.PingPong(Time.time, 3) + 3, transform.position.z);
    }
}
