using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyNav : MonoBehaviour {

    public Transform Player;
    public NavMeshAgent agent;
	
	void Update () {
        agent.destination = Player.position;
	}
}
