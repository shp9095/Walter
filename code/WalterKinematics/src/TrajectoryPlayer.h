/*
 * TrajectoryPlayer.h
 *
 * Runs a trajectory, i.e. a list of trajectory nodes. After a trajectory
 * has been set, it can be applied with music-player like functions (play/step/stop)
 *
 * Author: JochenAlt
 */

#ifndef TRAJECTORYPLAYER_H_
#define TRAJECTORYPLAYER_H_

#include "spatial.h"
#include "Kinematics.h"
#include "Trajectory.h"

class TrajectoryPlayer {
public:
	TrajectoryPlayer();

	// call me upfront before doing anything
	void setup(int pSampleRate_ms);

	// call this often. Does the trajectory computation
	void loop();

	// get currently computed trajectory node
	const TrajectoryNode& getCurrentTrajectoryNode() { return currNode; };

	// get currently computed pose
	const Pose& getCurrentPose() { return currNode.pose; };

	// get the configuration of the current pose
	PoseConfigurationType getCurrentConfiguration() { return Kinematics::computeConfiguration(currNode.pose.angles); };

	// get current angles
	const JointAngles& getCurrentAngles() { return currNode.pose.angles; };

	// retrieve all valid solutions of the latest given pose
	const std::vector<KinematicsSolutionType>& getPossibleSolutions() { return possibleSolutions;}

	// set new angles, compute kinematics and send notification
	void setAngles(const JointAngles& pAngles);

	// set new pose, compute kinematics and send notification
	bool setPose(const Pose& pPose);

	// current trajectory, used for setting a trajectory as well
	Trajectory& getTrajectory() { return trajectory; };

	// start to run the current trajectory
	void playTrajectory();

	// start to stepwise run the current trajectory
	void stepTrajectory();

	// execute one time-based step of a movement
	void step(); // perform one step

	// true if player is running (complete or stepwise)
	bool isOn() { return trajectoryPlayerOn; }

	// set player position to a certain point in time
	void setPlayerPosition(int time_ms);

	// stop it
	void stopTrajectory();

	// reset pose to first position of trajectory
	void resetTrajectory();

	// to be derived. Notification if a new pose has been computed
	virtual void notifyNewPose(const Pose& pose) {};
	int getSampleRate();
private:
	TrajectoryNode currNode;
	JointAngles currentAngles;
	std::vector<KinematicsSolutionType> possibleSolutions;

	milliseconds trajectoryPlayerTime_ms;
	bool trajectoryPlayerOn;
	bool singleStepMode;
	bool playerStopped;
	milliseconds startTime;
	Trajectory trajectory;
	int sampleRate;
};



#endif /* TRAJECTORYPLAYER_H_ */
