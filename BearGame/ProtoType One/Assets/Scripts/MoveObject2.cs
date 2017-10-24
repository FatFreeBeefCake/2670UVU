using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveObject2 : MonoBehaviour {

    Vector3 Box;

    // Use this for initialization
    void Start()
    {

        OpenDoor2.OpenDoorTwo += Open;

    }

    private void Open()
    {
        StartCoroutine(MoveBox());
    }

    IEnumerator MoveBox()
    {
        while (transform.position.y > -1f)
        {
            Box.y = -1f * Time.deltaTime;
            transform.Translate(Box);
            yield return null;
        }

    }
}
