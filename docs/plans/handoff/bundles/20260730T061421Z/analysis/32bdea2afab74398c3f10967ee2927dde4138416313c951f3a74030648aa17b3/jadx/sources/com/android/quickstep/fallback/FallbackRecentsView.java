package com.android.quickstep.fallback;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.StateManager;
import com.android.quickstep.FallbackActivityInterface;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.fallback.FallbackRecentsView;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.Task;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;

@TargetApi(30)
/* loaded from: classes.dex */
public class FallbackRecentsView extends RecentsView implements StateManager.StateListener {
    public ActivityManager.RunningTaskInfo mHomeTaskInfo;

    public FallbackRecentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void applyLoadPlan(ArrayList arrayList) {
        boolean z;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mHomeTaskInfo;
        if (runningTaskInfo != null && runningTaskInfo.taskId == this.mRunningTaskId && !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((Task) it.next()).key.id == this.mRunningTaskId) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
                arrayList2.addAll(arrayList);
                arrayList2.add(Task.from(new Task.TaskKey(this.mHomeTaskInfo), this.mHomeTaskInfo, false));
                arrayList = arrayList2;
            }
        }
        super.applyLoadPlan(arrayList);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void init(OverviewActionsView overviewActionsView) {
        super.init(overviewActionsView);
        setOverviewStateEnabled(true);
        setOverlayEnabled(true);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onGestureAnimationEnd() {
        TaskView taskView;
        super.onGestureAnimationEnd();
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mHomeTaskInfo;
        if (runningTaskInfo == null || (taskView = getTaskView(runningTaskInfo.taskId)) == null) {
            return;
        }
        PendingAnimation createTaskDismissAnimation = createTaskDismissAnimation(taskView, true, false, 150L);
        createTaskDismissAnimation.mEndListeners.add(new Consumer() { // from class: c.a.b.Y1.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FallbackRecentsView.this.p((PendingAnimation.EndState) obj);
            }
        });
        runDismissAnimation(createTaskDismissAnimation);
    }

    public void onGestureAnimationStartOnHome(ActivityManager.RunningTaskInfo runningTaskInfo) {
        this.mHomeTaskInfo = runningTaskInfo;
        onGestureAnimationStart(runningTaskInfo == null ? -1 : runningTaskInfo.taskId);
    }

    public /* synthetic */ void p(PendingAnimation.EndState endState) {
        setCurrentTask(-1);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setCurrentTask(int i) {
        super.setCurrentTask(i);
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mHomeTaskInfo;
        if (runningTaskInfo == null || runningTaskInfo.taskId == i) {
            return;
        }
        this.mHomeTaskInfo = null;
        setRunningTaskHidden(false);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setModalStateEnabled(boolean z) {
        super.setModalStateEnabled(z);
        if (z) {
            ((RecentsActivity) this.mActivity).getStateManager().goToState(RecentsState.MODAL_TASK);
        } else if (((RecentsActivity) this.mActivity).isInState(RecentsState.MODAL_TASK)) {
            ((RecentsActivity) this.mActivity).getStateManager().goToState(RecentsState.DEFAULT);
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setOverviewStateEnabled(boolean z) {
        super.setOverviewStateEnabled(z);
        if (z) {
            setDisallowScrollToClearAll(!((RecentsState) ((RecentsActivity) this.mActivity).getStateManager().mState).hasButtons());
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setRunningTaskHidden(boolean z) {
        if (this.mHomeTaskInfo != null) {
            z = true;
        }
        super.setRunningTaskHidden(z);
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean shouldAddDummyTaskView(int i) {
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mHomeTaskInfo;
        if (runningTaskInfo != null && runningTaskInfo.taskId == i && getTaskViewCount() == 0) {
            return false;
        }
        return super.shouldAddDummyTaskView(i);
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean shouldUseMultiWindowTaskSizeStrategy() {
        return false;
    }

    @Override // com.android.quickstep.views.RecentsView
    public void startHome() {
        ((RecentsActivity) this.mActivity).startHome();
    }

    public FallbackRecentsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, FallbackActivityInterface.INSTANCE);
        ((RecentsActivity) this.mActivity).getStateManager().mListeners.add(this);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(RecentsState recentsState) {
        setOverlayEnabled(recentsState == RecentsState.DEFAULT || recentsState == RecentsState.MODAL_TASK);
        setFreezeViewVisibility(false);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionStart(RecentsState recentsState) {
        setOverviewStateEnabled(true);
        setFreezeViewVisibility(true);
    }
}
