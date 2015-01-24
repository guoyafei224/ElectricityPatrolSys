package team.ElectricityPatrolSys.action;

import java.util.List;

import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.BeHeTask;

@Controller("deElimTaskAction")
public class DeElimTaskAction extends ActionBase {

	private BeHeTask beHeTask;
	private List<BeHeTask> beHeTasks;

	public BeHeTask getBeHeTask() {
		return beHeTask;
	}

	public void setBeHeTask(BeHeTask beHeTask) {
		this.beHeTask = beHeTask;
	}

	public List<BeHeTask> getBeHeTasks() {
		return beHeTasks;
	}

	public void setBeHeTasks(List<BeHeTask> beHeTasks) {
		this.beHeTasks = beHeTasks;
	}

}
