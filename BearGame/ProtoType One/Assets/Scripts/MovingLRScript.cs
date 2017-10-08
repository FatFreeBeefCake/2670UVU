using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingLRScript : MonoBehaviour {

	// Update is called once per frame
	void Update () {

        transform.position = new Vector3(Mathf.PingPong(Time.time, 2), transform.position.y, transform.position.z);

    }
}
