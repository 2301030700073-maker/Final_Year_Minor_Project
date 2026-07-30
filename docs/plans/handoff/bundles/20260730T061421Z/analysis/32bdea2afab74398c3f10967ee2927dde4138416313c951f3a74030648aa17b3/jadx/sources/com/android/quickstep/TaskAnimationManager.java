package com.android.quickstep;

import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import c.a.b.X1;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.TaskAnimationManager;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.Objects;

/* loaded from: classes.dex */
public class TaskAnimationManager implements RecentsAnimationCallbacks.RecentsAnimationListener {
    public RecentsAnimationCallbacks mCallbacks;
    public RecentsAnimationController mController;
    public RemoteAnimationTargetCompat mLastAppearedTaskTarget;
    public GestureState mLastGestureState;
    public RecentsAnimationTargets mTargets;

    /* renamed from: com.android.quickstep.TaskAnimationManager$1, reason: invalid class name */
    public class AnonymousClass1 implements RecentsAnimationCallbacks.RecentsAnimationListener {
        public final /* synthetic */ BaseActivityInterface val$activityInterface;

        public AnonymousClass1(BaseActivityInterface baseActivityInterface) {
            this.val$activityInterface = baseActivityInterface;
        }

        public /* synthetic */ void a(ThumbnailData thumbnailData) {
            TaskAnimationManager.this.cleanUpRecentsAnimation(thumbnailData);
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onRecentsAnimationCanceled(final ThumbnailData thumbnailData) {
            if (thumbnailData != null) {
                this.val$activityInterface.switchRunningTaskViewToScreenshot(thumbnailData, new Runnable() { // from class: c.a.b.i1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaskAnimationManager.AnonymousClass1.this.a(thumbnailData);
                    }
                });
            } else {
                TaskAnimationManager.this.cleanUpRecentsAnimation(null);
            }
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
            TaskAnimationManager.this.cleanUpRecentsAnimation(null);
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
            if (TaskAnimationManager.this.mCallbacks == null) {
                return;
            }
            TaskAnimationManager.this.mController = recentsAnimationController;
            TaskAnimationManager.this.mTargets = recentsAnimationTargets;
            TaskAnimationManager taskAnimationManager = TaskAnimationManager.this;
            taskAnimationManager.mLastAppearedTaskTarget = taskAnimationManager.mTargets.findTask(TaskAnimationManager.this.mLastGestureState.getRunningTaskId());
            TaskAnimationManager.this.mLastGestureState.updateLastAppearedTaskTarget(TaskAnimationManager.this.mLastAppearedTaskTarget);
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onTaskAppeared(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
            if (TaskAnimationManager.this.mController != null) {
                if (TaskAnimationManager.this.mLastAppearedTaskTarget == null || remoteAnimationTargetCompat.taskId != TaskAnimationManager.this.mLastAppearedTaskTarget.taskId) {
                    if (TaskAnimationManager.this.mLastAppearedTaskTarget != null) {
                        TaskAnimationManager.this.mController.removeTaskTarget(TaskAnimationManager.this.mLastAppearedTaskTarget);
                    }
                    TaskAnimationManager.this.mLastAppearedTaskTarget = remoteAnimationTargetCompat;
                    TaskAnimationManager.this.mLastGestureState.updateLastAppearedTaskTarget(TaskAnimationManager.this.mLastAppearedTaskTarget);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanUpRecentsAnimation(ThumbnailData thumbnailData) {
        RecentsAnimationController recentsAnimationController = this.mController;
        if (recentsAnimationController != null && thumbnailData != null) {
            recentsAnimationController.cleanupScreenshot();
        }
        RecentsAnimationTargets recentsAnimationTargets = this.mTargets;
        if (recentsAnimationTargets != null) {
            recentsAnimationTargets.release();
        }
        RecentsAnimationCallbacks recentsAnimationCallbacks = this.mCallbacks;
        if (recentsAnimationCallbacks != null) {
            recentsAnimationCallbacks.removeAllListeners();
        }
        this.mController = null;
        this.mCallbacks = null;
        this.mTargets = null;
        this.mLastGestureState = null;
        this.mLastAppearedTaskTarget = null;
    }

    public /* synthetic */ void a(Intent intent) {
        ActivityManagerWrapper.getInstance().startRecentsActivity(intent, null, this.mCallbacks, null, null);
    }

    public RecentsAnimationCallbacks continueRecentsAnimation(GestureState gestureState) {
        this.mCallbacks.removeListener(this.mLastGestureState);
        this.mLastGestureState = gestureState;
        this.mCallbacks.addListener(gestureState);
        gestureState.setState(GestureState.STATE_RECENTS_ANIMATION_INITIALIZED | GestureState.STATE_RECENTS_ANIMATION_STARTED);
        gestureState.updateLastAppearedTaskTarget(this.mLastAppearedTaskTarget);
        return this.mCallbacks;
    }

    public void dump() {
    }

    public void finishRunningRecentsAnimation(boolean z) {
        Runnable x1;
        if (this.mController != null) {
            this.mCallbacks.notifyAnimationCanceled();
            Handler handler = Executors.MAIN_EXECUTOR.mHandler;
            if (z) {
                final RecentsAnimationController recentsAnimationController = this.mController;
                Objects.requireNonNull(recentsAnimationController);
                x1 = new Runnable() { // from class: c.a.b.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecentsAnimationController.this.finishAnimationToHome();
                    }
                };
            } else {
                RecentsAnimationController recentsAnimationController2 = this.mController;
                Objects.requireNonNull(recentsAnimationController2);
                x1 = new X1(recentsAnimationController2);
            }
            Utilities.postAsyncCallback(handler, x1);
            cleanUpRecentsAnimation(null);
        }
    }

    public boolean isRecentsAnimationRunning() {
        return this.mController != null;
    }

    public void notifyRecentsAnimationState(RecentsAnimationCallbacks.RecentsAnimationListener recentsAnimationListener) {
        if (isRecentsAnimationRunning()) {
            recentsAnimationListener.onRecentsAnimationStart(this.mController, this.mTargets);
        }
    }

    public void preloadRecentsAnimation(final Intent intent) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.j1
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerWrapper.getInstance().startRecentsActivity(intent, null, null, null, null);
            }
        });
    }

    public RecentsAnimationCallbacks startRecentsAnimation(GestureState gestureState, final Intent intent, RecentsAnimationCallbacks.RecentsAnimationListener recentsAnimationListener) {
        if (this.mController != null) {
            Log.e("TaskAnimationManager", "New recents animation started before old animation completed", new Exception());
        }
        finishRunningRecentsAnimation(false);
        BaseActivityInterface activityInterface = gestureState.getActivityInterface();
        this.mLastGestureState = gestureState;
        RecentsAnimationCallbacks recentsAnimationCallbacks = new RecentsAnimationCallbacks(activityInterface.allowMinimizeSplitScreen());
        this.mCallbacks = recentsAnimationCallbacks;
        recentsAnimationCallbacks.addListener(new AnonymousClass1(activityInterface));
        this.mCallbacks.addListener(gestureState);
        this.mCallbacks.addListener(recentsAnimationListener);
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.k1
            @Override // java.lang.Runnable
            public final void run() {
                TaskAnimationManager.this.a(intent);
            }
        });
        gestureState.setState(GestureState.STATE_RECENTS_ANIMATION_INITIALIZED);
        return this.mCallbacks;
    }
}
