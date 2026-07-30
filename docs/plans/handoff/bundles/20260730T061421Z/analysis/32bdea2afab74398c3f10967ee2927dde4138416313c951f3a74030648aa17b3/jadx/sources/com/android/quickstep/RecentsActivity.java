package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.app.ActivityOptions;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.FallbackRecentsStateController;
import com.android.quickstep.fallback.FallbackRecentsView;
import com.android.quickstep.fallback.RecentsDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RecentsAtomicAnimationFactory;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityOptionsCompat;
import com.android.systemui.shared.system.RemoteAnimationAdapterCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* loaded from: classes.dex */
public final class RecentsActivity extends StatefulActivity {
    public static final ActivityTracker ACTIVITY_TRACKER = new ActivityTracker();
    public OverviewActionsView mActionsView;
    public RecentsDragLayer mDragLayer;
    public FallbackRecentsView mFallbackRecentsView;
    public Configuration mOldConfig;
    public StateManager mStateManager;
    public Handler mUiHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    public AnimatorSet composeRecentsLaunchAnimator(TaskView taskView, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
        AnimatorSet animatorSet = new AnimatorSet();
        boolean taskIsATargetWithMode = TaskUtils.taskIsATargetWithMode(remoteAnimationTargetCompatArr, getTaskId(), 1);
        PendingAnimation pendingAnimation = new PendingAnimation(336L);
        TaskViewUtils.createRecentsWindowAnimator(taskView, !taskIsATargetWithMode, remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, null, pendingAnimation);
        animatorSet.play(pendingAnimation.buildAnim());
        if (taskIsATargetWithMode) {
            AnimatorSet createAdjacentPageAnimForTaskLaunch = this.mFallbackRecentsView.createAdjacentPageAnimForTaskLaunch(taskView);
            createAdjacentPageAnimForTaskLaunch.setInterpolator(Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
            createAdjacentPageAnimForTaskLaunch.setDuration(336L);
            createAdjacentPageAnimForTaskLaunch.addListener(resetStateListener());
            animatorSet.play(createAdjacentPageAnimForTaskLaunch);
        }
        return animatorSet;
    }

    private void initDeviceProfile() {
        this.mDeviceProfile = createDeviceProfile();
        onDeviceProfileInitiated();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AnimatorListenerAdapter resetStateListener() {
        return new AnimatorListenerAdapter() { // from class: com.android.quickstep.RecentsActivity.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RecentsActivity.this.mFallbackRecentsView.resetTaskVisuals();
                RecentsActivity.this.mStateManager.reapplyState(false);
            }
        };
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager.AtomicAnimationFactory createAtomicAnimationFactory() {
        return new RecentsAtomicAnimationFactory(this, 0);
    }

    public DeviceProfile createDeviceProfile() {
        DeviceProfile deviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(this)).getDeviceProfile(this);
        return (this.mDragLayer == null || !isInMultiWindowMode()) ? deviceProfile.toBuilder(this).build() : deviceProfile.getMultiWindowProfile(this, getMultiWindowDisplaySize());
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager.StateHandler[] createStateHandlers() {
        return new StateManager.StateHandler[]{new FallbackRecentsStateController(this)};
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.println(str + "Misc:");
        dumpMisc(str + "\t", printWriter);
    }

    public OverviewActionsView getActionsView() {
        return this.mActionsView;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public ActivityOptions getActivityLaunchOptions(View view) {
        if (!(view instanceof TaskView)) {
            return null;
        }
        final TaskView taskView = (TaskView) view;
        return ActivityOptionsCompat.makeRemoteAnimation(new RemoteAnimationAdapterCompat(new LauncherAnimationRunner(this.mUiHandler, true) { // from class: com.android.quickstep.RecentsActivity.1
            @Override // com.android.launcher3.LauncherAnimationRunner, com.android.launcher3.WrappedAnimationRunnerImpl
            public void onCreateAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, LauncherAnimationRunner.AnimationResult animationResult) {
                AnimatorSet composeRecentsLaunchAnimator = RecentsActivity.this.composeRecentsLaunchAnimator(taskView, remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2);
                composeRecentsLaunchAnimator.addListener(RecentsActivity.this.resetStateListener());
                animationResult.setAnimation(composeRecentsLaunchAnimator, RecentsActivity.this);
            }
        }, 336L, 120L));
    }

    @Override // com.android.launcher3.views.ActivityContext
    public BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public View getOverviewPanel() {
        return this.mFallbackRecentsView;
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager getStateManager() {
        return this.mStateManager;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        startHome();
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if ((configuration.diff(this.mOldConfig) & 1152) != 0) {
            onHandleConfigChanged();
        }
        this.mOldConfig.setTo(configuration);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mStateManager = new StateManager(this, RecentsState.DEFAULT);
        this.mOldConfig = new Configuration(getResources().getConfiguration());
        initDeviceProfile();
        setupViews();
        getSystemUiController().updateUiState(0, W.getAttrBoolean(this, R.attr.isWorkspaceDarkText));
        ActivityTracker activityTracker = ACTIVITY_TRACKER;
        Objects.requireNonNull(activityTracker);
        activityTracker.mCurrentActivity = new WeakReference(this);
        activityTracker.handleIntent(this, getIntent(), false);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ActivityTracker activityTracker = ACTIVITY_TRACKER;
        if (activityTracker.mCurrentActivity.get() == this) {
            activityTracker.mCurrentActivity.clear();
        }
    }

    @Override // android.app.Activity
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        ((RecentsModel) RecentsModel.INSTANCE.b(this)).getThumbnailCache().getHighResLoadingState().setVisible(true);
    }

    public void onHandleConfigChanged() {
        this.mUserEventDispatcher = null;
        initDeviceProfile();
        AbstractFloatingView.closeOpenViews(this, true, 3467);
        dispatchDeviceProfileChanged();
        reapplyUi();
        this.mDragLayer.recreateControllers();
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        onHandleConfigChanged();
        super.onMultiWindowModeChanged(z, configuration);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        ActivityTracker activityTracker = ACTIVITY_TRACKER;
        Objects.requireNonNull(activityTracker);
        activityTracker.handleIntent(this, intent, isStarted());
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        W.sendStateEventToTest(getBaseContext(), 2);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onStart() {
        this.mFallbackRecentsView.setContentAlpha(1.0f);
        super.onStart();
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        onTrimMemory(20);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        ((RecentsModel) RecentsModel.INSTANCE.b(this)).onTrimMemory(i);
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void returnToHomescreen() {
        super.returnToHomescreen();
    }

    public void setupViews() {
        inflateRootView(R.layout.fallback_recents_activity);
        setContentView(getRootView());
        this.mDragLayer = (RecentsDragLayer) findViewById(R.id.drag_layer);
        this.mFallbackRecentsView = (FallbackRecentsView) findViewById(R.id.overview_panel);
        this.mActionsView = (OverviewActionsView) findViewById(R.id.overview_actions_view);
        this.mDragLayer.recreateControllers();
        this.mFallbackRecentsView.init(this.mActionsView);
    }

    public void startHome() {
        startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setFlags(268435456));
    }
}
