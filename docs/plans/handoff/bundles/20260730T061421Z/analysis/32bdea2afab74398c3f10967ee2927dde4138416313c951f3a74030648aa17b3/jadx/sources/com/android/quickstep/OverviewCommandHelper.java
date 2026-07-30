package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.SystemClock;
import android.view.ViewConfiguration;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.util.Executors;
import com.android.quickstep.OverviewCommandHelper;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.RemoteAnimationProvider;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.LatencyTrackerCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.function.Predicate;

@TargetApi(28)
/* loaded from: classes.dex */
public class OverviewCommandHelper {
    public final Context mContext;
    public final RecentsAnimationDeviceState mDeviceState;
    public long mLastToggleTime;
    public final OverviewComponentObserver mOverviewComponentObserver;
    public final RecentsModel mRecentsModel;

    public class HideRecentsCommand extends RecentsActivityCommand {
        public HideRecentsCommand() {
            super();
        }

        @Override // com.android.quickstep.OverviewCommandHelper.RecentsActivityCommand
        public boolean handleCommand(long j) {
            RecentsView visibleRecentsView = this.mActivityInterface.getVisibleRecentsView();
            if (visibleRecentsView == null) {
                return false;
            }
            int nextPage = visibleRecentsView.getNextPage();
            if (nextPage < 0 || nextPage >= visibleRecentsView.getTaskViewCount()) {
                visibleRecentsView.startHome();
            } else {
                ((TaskView) visibleRecentsView.getPageAt(nextPage)).launchTask(true);
            }
            return true;
        }
    }

    public class RecentsActivityCommand implements Runnable {
        public final BaseActivityInterface mActivityInterface;
        public final AppToOverviewAnimationProvider mAnimationProvider;
        public ActivityInitListener mListener;
        public boolean mUserEventLogged;
        public final long mToggleClickedTime = SystemClock.uptimeMillis();
        public final long mCreateTime = SystemClock.elapsedRealtime();

        public RecentsActivityCommand() {
            this.mActivityInterface = OverviewCommandHelper.this.mOverviewComponentObserver.getActivityInterface();
            this.mAnimationProvider = new AppToOverviewAnimationProvider(this.mActivityInterface, RecentsModel.getRunningTaskId(), OverviewCommandHelper.this.mDeviceState);
            OverviewCommandHelper.this.mRecentsModel.getTasks(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AnimatorSet createWindowAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
            if (LatencyTrackerCompat.isEnabled(OverviewCommandHelper.this.mContext)) {
                LatencyTrackerCompat.logToggleRecents((int) (SystemClock.uptimeMillis() - this.mToggleClickedTime));
            }
            this.mListener.unregister();
            AnimatorSet createWindowAnimation = this.mAnimationProvider.createWindowAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2);
            createWindowAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.OverviewCommandHelper.RecentsActivityCommand.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RecentsActivityCommand.this.onTransitionComplete();
                }
            });
            return createWindowAnimation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean onActivityReady(Boolean bool) {
            StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
            if (!this.mUserEventLogged) {
                createdActivity.getUserEventDispatcher().logActionCommand(6, this.mActivityInterface.getContainerType(), 12);
                this.mUserEventLogged = true;
            }
            PredictionUiStateManager predictionUiStateManager = (PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(createdActivity);
            PredictionUiStateManager.Client client = PredictionUiStateManager.Client.OVERVIEW;
            if (client != predictionUiStateManager.mActiveClient) {
                predictionUiStateManager.mActiveClient = client;
                predictionUiStateManager.dispatchOnChange(true);
            }
            return this.mAnimationProvider.onActivityReady(createdActivity, bool);
        }

        public boolean handleCommand(long j) {
            RecentsView visibleRecentsView = this.mActivityInterface.getVisibleRecentsView();
            if (visibleRecentsView == null) {
                return j < ((long) ViewConfiguration.getDoubleTapTimeout());
            }
            visibleRecentsView.showNextTask();
            return true;
        }

        public void onTransitionComplete() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long j = this.mCreateTime - OverviewCommandHelper.this.mLastToggleTime;
            OverviewCommandHelper.this.mLastToggleTime = this.mCreateTime;
            if (handleCommand(j) || this.mActivityInterface.switchToRecentsIfVisible(new Runnable() { // from class: c.a.b.a
                @Override // java.lang.Runnable
                public final void run() {
                    OverviewCommandHelper.RecentsActivityCommand.this.onTransitionComplete();
                }
            })) {
                return;
            }
            ActivityInitListener createActivityInitListener = this.mActivityInterface.createActivityInitListener(new Predicate() { // from class: c.a.b.v0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean onActivityReady;
                    onActivityReady = OverviewCommandHelper.RecentsActivityCommand.this.onActivityReady((Boolean) obj);
                    return onActivityReady;
                }
            });
            this.mListener = createActivityInitListener;
            createActivityInitListener.registerAndStartActivity(OverviewCommandHelper.this.mOverviewComponentObserver.getOverviewIntent(), new RemoteAnimationProvider() { // from class: com.android.quickstep.OverviewCommandHelper.RecentsActivityCommand.1
                @Override // com.android.quickstep.util.RemoteAnimationProvider
                public AnimatorSet createWindowAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
                    return RecentsActivityCommand.this.createWindowAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2);
                }
            }, OverviewCommandHelper.this.mContext, Executors.MAIN_EXECUTOR.mHandler, this.mAnimationProvider.getRecentsLaunchDuration());
        }
    }

    public class ShowRecentsCommand extends RecentsActivityCommand {
        public final boolean mTriggeredFromAltTab;

        public ShowRecentsCommand(boolean z) {
            super();
            this.mTriggeredFromAltTab = z;
        }

        @Override // com.android.quickstep.OverviewCommandHelper.RecentsActivityCommand
        public boolean handleCommand(long j) {
            return this.mActivityInterface.getVisibleRecentsView() != null;
        }

        @Override // com.android.quickstep.OverviewCommandHelper.RecentsActivityCommand
        public void onTransitionComplete() {
            RecentsView visibleRecentsView;
            if (!this.mTriggeredFromAltTab || (visibleRecentsView = this.mActivityInterface.getVisibleRecentsView()) == null) {
                return;
            }
            TaskView nextTaskView = visibleRecentsView.getNextTaskView();
            if (nextTaskView != null) {
                nextTaskView.requestFocus();
            } else if (visibleRecentsView.getTaskViewCount() > 0) {
                visibleRecentsView.getTaskViewAt(0).requestFocus();
            } else {
                visibleRecentsView.requestFocus();
            }
        }
    }

    public OverviewCommandHelper(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, OverviewComponentObserver overviewComponentObserver) {
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        this.mRecentsModel = (RecentsModel) RecentsModel.INSTANCE.b(context);
        this.mOverviewComponentObserver = overviewComponentObserver;
    }

    public /* synthetic */ void a(int i, int i2) {
        UserEventDispatcher.newInstance(this.mContext).logActionTip(i, i2);
    }

    public void onOverviewHidden() {
        Executors.MAIN_EXECUTOR.execute(new HideRecentsCommand());
    }

    public void onOverviewShown(boolean z) {
        if (z) {
            ActivityManagerWrapper.getInstance().closeSystemWindows(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
        }
        Executors.MAIN_EXECUTOR.execute(new ShowRecentsCommand(z));
    }

    public void onOverviewToggle() {
        if (this.mDeviceState.isScreenPinningActive()) {
            return;
        }
        ActivityManagerWrapper.getInstance().closeSystemWindows(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
        Executors.MAIN_EXECUTOR.execute(new RecentsActivityCommand());
    }

    public void onTip(final int i, final int i2) {
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.u0
            @Override // java.lang.Runnable
            public final void run() {
                OverviewCommandHelper.this.a(i, i2);
            }
        });
    }
}
