package com.android.quickstep;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Intent;
import c.a.c.a.a;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

@TargetApi(30)
/* loaded from: classes.dex */
public class GestureState implements RecentsAnimationCallbacks.RecentsAnimationListener {
    public static final String TAG = "GestureState";
    public final BaseActivityInterface mActivityInterface;
    public GestureEndTarget mEndTarget;
    public final int mGestureId;
    public final Intent mHomeIntent;
    public RemoteAnimationTargetCompat mLastAppearedTaskTarget;
    public int mLastStartedTaskId;
    public final Intent mOverviewIntent;
    public Set mPreviouslyAppearedTaskIds;
    public ActivityManager.RunningTaskInfo mRunningTask;
    public final MultiStateCallback mStateCallback;
    public static final ArrayList STATE_NAMES = new ArrayList();
    public static final GestureState DEFAULT_STATE = new GestureState();
    public static int FLAG_COUNT = 0;
    public static final int STATE_END_TARGET_SET = getFlagForIndex("STATE_END_TARGET_SET");
    public static final int STATE_END_TARGET_ANIMATION_FINISHED = getFlagForIndex("STATE_END_TARGET_ANIMATION_FINISHED");
    public static final int STATE_RECENTS_ANIMATION_INITIALIZED = getFlagForIndex("STATE_RECENTS_ANIMATION_INITIALIZED");
    public static final int STATE_RECENTS_ANIMATION_STARTED = getFlagForIndex("STATE_RECENTS_ANIMATION_STARTED");
    public static final int STATE_RECENTS_ANIMATION_CANCELED = getFlagForIndex("STATE_RECENTS_ANIMATION_CANCELED");
    public static final int STATE_RECENTS_ANIMATION_FINISHED = getFlagForIndex("STATE_RECENTS_ANIMATION_FINISHED");
    public static final int STATE_RECENTS_ANIMATION_ENDED = getFlagForIndex("STATE_RECENTS_ANIMATION_ENDED");
    public static final int STATE_OVERSCROLL_WINDOW_CREATED = getFlagForIndex("STATE_OVERSCROLL_WINDOW_CREATED");
    public static final int STATE_RECENTS_SCROLLING_FINISHED = getFlagForIndex("STATE_RECENTS_SCROLLING_FINISHED");

    public enum GestureEndTarget {
        HOME(true, 1, false),
        RECENTS(true, 12, true),
        NEW_TASK(false, 13, true),
        LAST_TASK(false, 13, true);

        public final int containerType;
        public final boolean isLauncher;
        public final boolean recentsAttachedToAppWindow;

        GestureEndTarget(boolean z, int i, boolean z2) {
            this.isLauncher = z;
            this.containerType = i;
            this.recentsAttachedToAppWindow = z2;
        }
    }

    public GestureState(OverviewComponentObserver overviewComponentObserver, int i) {
        this.mPreviouslyAppearedTaskIds = new HashSet();
        this.mLastStartedTaskId = -1;
        this.mHomeIntent = overviewComponentObserver.getHomeIntent();
        this.mOverviewIntent = overviewComponentObserver.getOverviewIntent();
        this.mActivityInterface = overviewComponentObserver.getActivityInterface();
        this.mStateCallback = new MultiStateCallback((String[]) STATE_NAMES.toArray(new String[0]));
        this.mGestureId = i;
    }

    public static int getFlagForIndex(String str) {
        int i = FLAG_COUNT;
        int i2 = 1 << i;
        FLAG_COUNT = i + 1;
        return i2;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("GestureState:");
        printWriter.println("  gestureID=" + this.mGestureId);
        printWriter.println("  runningTask=" + this.mRunningTask);
        printWriter.println("  endTarget=" + this.mEndTarget);
        printWriter.println("  lastAppearedTaskTargetId=" + getLastAppearedTaskId());
        printWriter.println("  lastStartedTaskId=" + this.mLastStartedTaskId);
        printWriter.println("  isRecentsAnimationRunning=" + isRecentsAnimationRunning());
    }

    public BaseActivityInterface getActivityInterface() {
        return this.mActivityInterface;
    }

    public GestureEndTarget getEndTarget() {
        return this.mEndTarget;
    }

    public int getGestureId() {
        return this.mGestureId;
    }

    public Intent getHomeIntent() {
        return this.mHomeIntent;
    }

    public int getLastAppearedTaskId() {
        RemoteAnimationTargetCompat remoteAnimationTargetCompat = this.mLastAppearedTaskTarget;
        if (remoteAnimationTargetCompat != null) {
            return remoteAnimationTargetCompat.taskId;
        }
        return -1;
    }

    public int getLastStartedTaskId() {
        return this.mLastStartedTaskId;
    }

    public Intent getOverviewIntent() {
        return this.mOverviewIntent;
    }

    public Set getPreviouslyAppearedTaskIds() {
        return this.mPreviouslyAppearedTaskIds;
    }

    public ActivityManager.RunningTaskInfo getRunningTask() {
        return this.mRunningTask;
    }

    public int getRunningTaskId() {
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRunningTask;
        if (runningTaskInfo != null) {
            return runningTaskInfo.taskId;
        }
        return -1;
    }

    public boolean hasState(int i) {
        return this.mStateCallback.hasStates(i);
    }

    public boolean isRecentsAnimationRunning() {
        return this.mStateCallback.hasStates(STATE_RECENTS_ANIMATION_INITIALIZED) && !this.mStateCallback.hasStates(STATE_RECENTS_ANIMATION_ENDED);
    }

    public boolean isRunningAnimationToLauncher() {
        GestureEndTarget gestureEndTarget;
        return isRecentsAnimationRunning() && (gestureEndTarget = this.mEndTarget) != null && gestureEndTarget.isLauncher;
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(ThumbnailData thumbnailData) {
        this.mStateCallback.a(STATE_RECENTS_ANIMATION_CANCELED);
        this.mStateCallback.a(STATE_RECENTS_ANIMATION_ENDED);
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
        this.mStateCallback.a(STATE_RECENTS_ANIMATION_FINISHED);
        this.mStateCallback.a(STATE_RECENTS_ANIMATION_ENDED);
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        this.mStateCallback.a(STATE_RECENTS_ANIMATION_STARTED);
    }

    public void runOnceAtState(int i, Runnable runnable) {
        this.mStateCallback.runOnceAtState(i, runnable);
    }

    public void setEndTarget(GestureEndTarget gestureEndTarget) {
        setEndTarget(gestureEndTarget, true);
    }

    public void setState(int i) {
        this.mStateCallback.a(i);
    }

    public void updateLastAppearedTaskTarget(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        this.mLastAppearedTaskTarget = remoteAnimationTargetCompat;
        if (remoteAnimationTargetCompat != null) {
            this.mPreviouslyAppearedTaskIds.add(Integer.valueOf(remoteAnimationTargetCompat.taskId));
        }
    }

    public void updateLastStartedTaskId(int i) {
        this.mLastStartedTaskId = i;
    }

    public void updatePreviouslyAppearedTaskIds(Set set) {
        this.mPreviouslyAppearedTaskIds = set;
    }

    public void updateRunningTask(ActivityManager.RunningTaskInfo runningTaskInfo) {
        this.mRunningTask = runningTaskInfo;
    }

    public void setEndTarget(GestureEndTarget gestureEndTarget, boolean z) {
        this.mEndTarget = gestureEndTarget;
        this.mStateCallback.a(STATE_END_TARGET_SET);
        ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
        StringBuilder f = a.f("setEndTarget ");
        f.append(this.mEndTarget);
        activeGestureLog.addLog(f.toString());
        if (z) {
            this.mStateCallback.a(STATE_END_TARGET_ANIMATION_FINISHED);
        }
    }

    public GestureState(GestureState gestureState) {
        this.mPreviouslyAppearedTaskIds = new HashSet();
        this.mLastStartedTaskId = -1;
        this.mHomeIntent = gestureState.mHomeIntent;
        this.mOverviewIntent = gestureState.mOverviewIntent;
        this.mActivityInterface = gestureState.mActivityInterface;
        this.mStateCallback = gestureState.mStateCallback;
        this.mGestureId = gestureState.mGestureId;
        this.mRunningTask = gestureState.mRunningTask;
        this.mEndTarget = gestureState.mEndTarget;
        this.mLastAppearedTaskTarget = gestureState.mLastAppearedTaskTarget;
        this.mPreviouslyAppearedTaskIds = gestureState.mPreviouslyAppearedTaskIds;
        this.mLastStartedTaskId = gestureState.mLastStartedTaskId;
    }

    public GestureState() {
        this.mPreviouslyAppearedTaskIds = new HashSet();
        this.mLastStartedTaskId = -1;
        this.mHomeIntent = new Intent();
        this.mOverviewIntent = new Intent();
        this.mActivityInterface = null;
        this.mStateCallback = new MultiStateCallback((String[]) STATE_NAMES.toArray(new String[0]));
        this.mGestureId = -1;
    }
}
