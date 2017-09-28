using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingRLScript : MonoBehaviour {

	void Update () {

        transform.position = new Vector3(- Mathf.PingPong(Time.time, 2) - 3, transform.position.y, transform.position.z);

    }
}
