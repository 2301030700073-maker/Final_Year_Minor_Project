package com.android.launcher3;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.CancellationSignal;
import c.a.a.C0230a0;
import c.a.a.C0239h;
import c.a.a.N0.Y;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.model.WellbeingModel;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.proxy.ProxyActivityStarter;
import com.android.launcher3.proxy.StartActivityParams;
import com.android.launcher3.statehandlers.BackButtonAlphaHandler;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.uioverrides.RecentsViewStateController;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.UiThreadHelper;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.QuickstepOnboardingPrefs;
import com.android.quickstep.util.RemoteAnimationProvider;
import com.android.quickstep.util.RemoteFadeOutAnimationListener;
import com.android.quickstep.util.ShelfPeekAnim;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public abstract class BaseQuickstepLauncher extends Launcher implements SysUINavigationMode.NavigationModeChangeListener {
    public static final UiThreadHelper.AsyncCommand SET_BACK_BUTTON_ALPHA = C0239h.f1863a;
    public OverviewActionsView mActionsView;
    public HotseatPredictionController mHotseatPredictionController;
    public DepthController mDepthController = new DepthController(this);
    public final ShelfPeekAnim mShelfPeekAnim = new ShelfPeekAnim(this);

    @Override // com.android.launcher3.Launcher
    public void closeOpenViews(boolean z) {
        AbstractFloatingView.closeAllOpenViews(this, z);
        ActivityManagerWrapper.getInstance().closeSystemWindows(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY);
    }

    @Override // com.android.launcher3.Launcher
    public OnboardingPrefs createOnboardingPrefs(SharedPreferences sharedPreferences) {
        return new QuickstepOnboardingPrefs(this, sharedPreferences);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public StateManager.StateHandler[] createStateHandlers() {
        return new StateManager.StateHandler[]{this.mAllAppsController, this.mWorkspace, this.mDepthController, new RecentsViewStateController(this), new BackButtonAlphaHandler(this)};
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.model.BgDataModel.Callbacks
    public void finishBindingItems(int i) {
        super.finishBindingItems(i);
        WellbeingModel.INSTANCE.b(this);
    }

    @Override // com.android.launcher3.Launcher
    public float[] getNormalOverviewScaleAndOffset() {
        return SysUINavigationMode.getMode(this) == SysUINavigationMode.Mode.NO_BUTTON ? new float[]{1.0f, 1.0f} : new float[]{1.1f, RecentsState.NO_OFFSET};
    }

    @Override // com.android.launcher3.Launcher
    public Stream getSupportedShortcuts() {
        Stream supportedShortcuts = super.getSupportedShortcuts();
        SystemShortcut.Factory factory = WellbeingModel.SHORTCUT_FACTORY;
        return Stream.concat(supportedShortcuts, Stream.of(Y.f1508a));
    }

    public final boolean isOverviewActionsEnabled() {
        return FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(this);
    }

    @Override // com.android.launcher3.BaseActivity
    public void onActivityFlagsChanged(int i) {
        if ((i & 72) != 0) {
            onLauncherStateOrFocusChanged();
        }
        if ((i & 1) != 0) {
            this.mDepthController.setActivityStarted(isStarted());
        }
        super.onActivityFlagsChanged(i);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(this)).addModeChangeListener(this);
        addMultiWindowModeChangedListener(this.mDepthController);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public void onDeferredResumed() {
        super.onDeferredResumed();
        if (this.mPendingActivityRequestCode == -1 || !isInState(LauncherState.NORMAL)) {
            return;
        }
        onActivityResult(this.mPendingActivityRequestCode, 0, null);
        startActivity(ProxyActivityStarter.getLaunchIntent(this, null));
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        ((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(this)).removeModeChangeListener(this);
        super.onDestroy();
    }

    @Override // com.android.launcher3.Launcher
    public void onDragLayerHierarchyChanged() {
        onLauncherStateOrFocusChanged();
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        ((RecentsModel) RecentsModel.INSTANCE.b(this)).getThumbnailCache().getHighResLoadingState().setVisible(true);
    }

    public final void onLauncherStateOrFocusChanged() {
        boolean shouldBackButtonBeHidden = shouldBackButtonBeHidden((LauncherState) getStateManager().mState);
        UiThreadHelper.setBackButtonAlphaAsync(this, C0239h.f1863a, shouldBackButtonBeHidden ? RecentsState.NO_OFFSET : 1.0f, true);
        if (this.mDragLayer != null) {
            getRootView().setDisallowBackGesture(shouldBackButtonBeHidden);
        }
    }

    @Override // com.android.quickstep.SysUINavigationMode.NavigationModeChangeListener
    public void onNavigationModeChanged(SysUINavigationMode.Mode mode) {
        this.mDragLayer.recreateControllers();
        if (this.mActionsView == null || !isOverviewActionsEnabled()) {
            return;
        }
        this.mActionsView.updateVerticalMargin(mode);
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        ((RecentsModel) RecentsModel.INSTANCE.b(this)).onTrimMemory(i);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onUiChangedWhileSleeping() {
        ActivityManagerWrapper.getInstance().invalidateHomeTaskSnapshot(this);
    }

    @Override // com.android.launcher3.Launcher
    public void setupViews() {
        super.setupViews();
        ((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(this)).updateMode();
        this.mActionsView = (OverviewActionsView) findViewById(R.id.overview_actions_view);
        ((RecentsView) getOverviewPanel()).init(this.mActionsView);
        if (isOverviewActionsEnabled()) {
            getOverviewPanel().bringToFront();
            this.mActionsView.bringToFront();
            this.mActionsView.updateVerticalMargin(SysUINavigationMode.getMode(this));
        }
    }

    public boolean shouldBackButtonBeHidden(LauncherState launcherState) {
        boolean z = SysUINavigationMode.getMode(this).hasGestures && launcherState.hasFlag(LauncherState.FLAG_HIDE_BACK_BUTTON) && hasWindowFocus() && (getActivityFlags() & 64) == 0;
        if (z) {
            return AbstractFloatingView.getTopOpenViewWithType(this, 3607) == null;
        }
        return z;
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            super.startActivityForResult(intent, i, bundle);
            return;
        }
        this.mPendingActivityRequestCode = i;
        StartActivityParams startActivityParams = new StartActivityParams(this, i);
        startActivityParams.intent = intent;
        startActivityParams.options = bundle;
        startActivity(ProxyActivityStarter.getLaunchIntent(this, startActivityParams));
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (i == -1) {
            super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        this.mPendingActivityRequestCode = i;
        StartActivityParams startActivityParams = new StartActivityParams(this, i);
        startActivityParams.intentSender = intentSender;
        startActivityParams.fillInIntent = intent;
        startActivityParams.flagsMask = i2;
        startActivityParams.flagsValues = i3;
        startActivityParams.extraFlags = i4;
        startActivityParams.options = bundle;
        startActivity(ProxyActivityStarter.getLaunchIntent(this, startActivityParams));
    }

    @Override // com.android.launcher3.Launcher
    public void useFadeOutAnimationForLauncherStart(final CancellationSignal cancellationSignal) {
        QuickstepAppTransitionManagerImpl quickstepAppTransitionManagerImpl = (QuickstepAppTransitionManagerImpl) this.mAppTransitionManager;
        RemoteAnimationProvider remoteAnimationProvider = new RemoteAnimationProvider(this) { // from class: com.android.launcher3.BaseQuickstepLauncher.1
            @Override // com.android.quickstep.util.RemoteAnimationProvider
            public AnimatorSet createWindowAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
                cancellationSignal.cancel();
                ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, RecentsState.NO_OFFSET);
                ofFloat.addUpdateListener(new RemoteFadeOutAnimationListener(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(ofFloat);
                return animatorSet;
            }
        };
        quickstepAppTransitionManagerImpl.mRemoteAnimationProvider = remoteAnimationProvider;
        cancellationSignal.setOnCancelListener(new C0230a0(quickstepAppTransitionManagerImpl, remoteAnimationProvider));
    }
}
