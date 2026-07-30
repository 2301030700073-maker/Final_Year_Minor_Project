package com.android.quickstep;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.animation.Interpolator;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherInitListener;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.DiscoveryBounce;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.util.ShelfPeekAnim;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskMenuView;
import com.android.systemui.plugins.shared.LauncherOverlayManager;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class LauncherActivityInterface extends BaseActivityInterface {
    public static final LauncherActivityInterface INSTANCE = new LauncherActivityInterface();

    public LauncherActivityInterface() {
        super(true, LauncherState.OVERVIEW, LauncherState.BACKGROUND_APP);
    }

    private Launcher getVisibleLauncher() {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity != null && createdActivity.isStarted() && createdActivity.hasWindowFocus()) {
            return createdActivity;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRecentsOfOrientation(RecentsAnimationDeviceState recentsAnimationDeviceState) {
        ((RecentsView) getCreatedActivity().getOverviewPanel()).setLayoutRotation(recentsAnimationDeviceState.getCurrentActiveRotation(), recentsAnimationDeviceState.getDisplayRotation());
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean allowMinimizeSplitScreen() {
        return true;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void closeOverlay() {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        LauncherOverlayManager launcherOverlayManager = createdActivity.mOverlayManager;
        if (!createdActivity.isStarted() || createdActivity.isForceInvisible()) {
            launcherOverlayManager.hideOverlay(false);
        } else {
            launcherOverlayManager.hideOverlay(TaskMenuView.REVEAL_OPEN_DURATION);
        }
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public ActivityInitListener createActivityInitListener(final Predicate predicate) {
        return new LauncherInitListener(new BiPredicate() { // from class: c.a.b.r0
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                boolean test;
                test = predicate.test((Boolean) obj2);
                return test;
            }
        });
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getContainerType() {
        Launcher visibleLauncher = getVisibleLauncher();
        if (visibleLauncher != null) {
            return ((LauncherState) visibleLauncher.getStateManager().mState).containerType;
        }
        return 13;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public DepthController getDepthController() {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return null;
        }
        return createdActivity.mDepthController;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public float getExtraSpace(Context context, DeviceProfile deviceProfile, PagedOrientationHandler pagedOrientationHandler) {
        boolean isVerticalBarLayout = deviceProfile.isVerticalBarLayout();
        float f = RecentsState.NO_OFFSET;
        if ((isVerticalBarLayout && !BaseActivityInterface.showOverviewActions(context)) || SysUINavigationMode.hideShelfInTwoButtonLandscape(context, pagedOrientationHandler)) {
            return RecentsState.NO_OFFSET;
        }
        Resources resources = context.getResources();
        if (!BaseActivityInterface.showOverviewActions(context)) {
            return LayoutUtils.getDefaultSwipeHeight(context, deviceProfile) + deviceProfile.workspacePageIndicatorHeight + resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_extra_vertical_size) + resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_bottom_padding);
        }
        if (!deviceProfile.isVerticalBarLayout()) {
            f = SysUINavigationMode.getMode(context) == SysUINavigationMode.Mode.THREE_BUTTONS ? resources.getDimensionPixelSize(R.dimen.overview_actions_bottom_margin_three_button) : resources.getDimensionPixelSize(R.dimen.overview_actions_bottom_margin_gesture);
        }
        return f + resources.getDimensionPixelSize(R.dimen.overview_actions_height);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public Rect getOverviewWindowBounds(Rect rect, RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        return rect;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getSwipeUpDestinationAndLength(DeviceProfile deviceProfile, Context context, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        calculateTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
        if (!deviceProfile.isVerticalBarLayout() || SysUINavigationMode.getMode(context) == SysUINavigationMode.Mode.NO_BUTTON) {
            return LayoutUtils.getShelfTrackingDistance(context, deviceProfile, pagedOrientationHandler);
        }
        Rect rect2 = deviceProfile.mInsets;
        return deviceProfile.hotseatBarSizePx + (deviceProfile.isSeascape() ? rect2.left : rect2.right);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public RecentsView getVisibleRecentsView() {
        Launcher visibleLauncher = getVisibleLauncher();
        if (visibleLauncher == null || !((LauncherState) visibleLauncher.getStateManager().mState).overviewUi) {
            return null;
        }
        return (RecentsView) visibleLauncher.getOverviewPanel();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean isInLiveTileMode() {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.getStateManager().mState == LauncherState.OVERVIEW && createdActivity.isStarted();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onAssistantVisibilityChanged(float f) {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.mCurrentAssistantVisibility = f;
        float f2 = 1.0f - f;
        LauncherState launcherState = (LauncherState) createdActivity.mStateManager.mState;
        if (launcherState == LauncherState.NORMAL) {
            createdActivity.mAppsView.getAlphaProperty(1).setValue(f2);
        } else if (launcherState == LauncherState.OVERVIEW || launcherState == LauncherState.OVERVIEW_PEEK) {
            createdActivity.mAppsView.getAlphaProperty(1).setValue(f2);
            createdActivity.mScrimView.getAlphaProperty(0).setValue(f2);
        }
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onExitOverview(final RecentsAnimationDeviceState recentsAnimationDeviceState, final Runnable runnable) {
        final StateManager stateManager = getCreatedActivity().getStateManager();
        stateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.quickstep.LauncherActivityInterface.2
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(LauncherState launcherState) {
                if (launcherState == LauncherState.NORMAL) {
                    runnable.run();
                    LauncherActivityInterface.this.notifyRecentsOfOrientation(recentsAnimationDeviceState);
                    stateManager.mListeners.remove(this);
                }
            }
        });
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onLaunchTaskFailed() {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.getStateManager().goToState(LauncherState.OVERVIEW);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onSwipeUpToHomeComplete(RecentsAnimationDeviceState recentsAnimationDeviceState) {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.getStateManager().reapplyState(false);
        LauncherRootView rootView = createdActivity.getRootView();
        rootView.mForceHideBackArrow = false;
        rootView.setDisallowBackGesture(rootView.mDisallowBackGesture);
        notifyRecentsOfOrientation(recentsAnimationDeviceState);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onSwipeUpToRecentsComplete() {
        super.onSwipeUpToRecentsComplete();
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity != null) {
            DiscoveryBounce.showForOverviewIfNeeded(createdActivity, true, ((RecentsView) createdActivity.getOverviewPanel()).getPagedOrientationHandler());
        }
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public BaseActivityInterface.AnimationFactory prepareRecentsUI(RecentsAnimationDeviceState recentsAnimationDeviceState, boolean z, Consumer consumer) {
        notifyRecentsOfOrientation(recentsAnimationDeviceState);
        BaseActivityInterface.DefaultAnimationFactory defaultAnimationFactory = new BaseActivityInterface.DefaultAnimationFactory(consumer) { // from class: com.android.quickstep.LauncherActivityInterface.1
            @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
            public void setShelfState(ShelfPeekAnim.ShelfAnimState shelfAnimState, Interpolator interpolator, long j) {
                ((BaseQuickstepLauncher) this.mActivity).mShelfPeekAnim.setShelfState(shelfAnimState, interpolator, j);
            }

            @Override // com.android.quickstep.BaseActivityInterface.DefaultAnimationFactory
            public void createBackgroundToOverviewAnim(BaseQuickstepLauncher baseQuickstepLauncher, PendingAnimation pendingAnimation) {
                super.createBackgroundToOverviewAnim((StatefulActivity) baseQuickstepLauncher, pendingAnimation);
                if (!baseQuickstepLauncher.getDeviceProfile().isVerticalBarLayout() && SysUINavigationMode.getMode(baseQuickstepLauncher) != SysUINavigationMode.Mode.NO_BUTTON) {
                    pendingAnimation.add(baseQuickstepLauncher.getStateManager().createStateElementAnimation(2, LauncherState.BACKGROUND_APP.getVerticalProgress(baseQuickstepLauncher), LauncherState.OVERVIEW.getVerticalProgress(baseQuickstepLauncher)));
                }
                float depth = LauncherState.BACKGROUND_APP.getDepth(baseQuickstepLauncher);
                float depth2 = LauncherState.OVERVIEW.getDepth(baseQuickstepLauncher);
                pendingAnimation.addFloat(LauncherActivityInterface.this.getDepthController(), new DepthController.ClampedDepthProperty(depth, depth2), depth, depth2, Interpolators.LINEAR);
            }
        };
        ((BaseQuickstepLauncher) defaultAnimationFactory.initUI()).mAppsView.reset(false);
        return defaultAnimationFactory;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void setOnDeferredActivityLaunchCallback(Runnable runnable) {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.mOnDeferredActivityLaunchCallback = runnable;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean switchToRecentsIfVisible(Runnable runnable) {
        Launcher visibleLauncher = getVisibleLauncher();
        if (visibleLauncher == null) {
            return false;
        }
        visibleLauncher.getUserEventDispatcher().logActionCommand(6, getContainerType(), 12);
        visibleLauncher.getStateManager().goToState(LauncherState.OVERVIEW, visibleLauncher.getStateManager().shouldAnimateStateChange(), runnable);
        return true;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void updateOverviewPredictionState() {
        BaseQuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        PredictionUiStateManager predictionUiStateManager = (PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(createdActivity);
        PredictionUiStateManager.Client client = PredictionUiStateManager.Client.OVERVIEW;
        if (client == predictionUiStateManager.mActiveClient) {
            return;
        }
        predictionUiStateManager.mActiveClient = client;
        predictionUiStateManager.dispatchOnChange(true);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public BaseQuickstepLauncher getCreatedActivity() {
        return (BaseQuickstepLauncher) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
    }
}
