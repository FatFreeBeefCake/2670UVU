using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoulderFallScript : MonoBehaviour {


    public GameObject Thisplatform;
    Vector3 Startpoint;

    bool Touchonce = true;

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {

            if (Touchonce)
            {
                Touchonce = false;
                Startpoint = new Vector3(transform.position.x, transform.position.y, transform.position.z);
                StartCoroutine(delayAndFall());
            }
        }
    }

    IEnumerator delayAndFall()
    {
        yield return new WaitForSeconds(0.05f);
        Thisplatform.AddComponent<Rigidbody>();
        StartCoroutine(delayAndReset());
    }

    IEnumerator delayAndReset()
    {
        yield return new WaitForSeconds(1.5f);
        Destroy(GetComponent<Rigidbody>());
        transform.position = Startpoint;
        Touchonce = true;
    }
}
