using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class foodClass : MonoBehaviour {

    public int ammoCount = 100;
    public float fireRate = 1;
    public float ammPower = 0.1f;
    public bool canFire = true;

    private void Awake()
    {
        FireingInput.FireAction += FireHandler;
        FireingInput.StopFire += StopHandler;
    }

    void StopHandler()
    {
        StopAllCoroutines();
    }

    // Use this for initialization
    void FireHandler () {
        StartCoroutine(Throw());
	}
	
	// Update is called once per frame
	public IEnumerator Throw () {
        while (canFire)
        {
            if (ammoCount > 0)
            {
                print(ammoCount);
                ammoCount--;
                yield return new WaitForSeconds(fireRate);
               
            } else
            {
                canFire = false;
            }
        }
        print("No More Fruit");

	}
}
