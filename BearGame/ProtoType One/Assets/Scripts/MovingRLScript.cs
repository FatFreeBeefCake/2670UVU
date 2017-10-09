using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingRLScript : MonoBehaviour {

	void Update () {

        transform.localPosition = new Vector3(- Mathf.PingPong(Time.time, 2) + 186, transform.localPosition.y, transform.position.z);

    }
}
