package com.android.quickstep;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class FallbackActivityInterface extends BaseActivityInterface {
    public static final FallbackActivityInterface INSTANCE = new FallbackActivityInterface();

    public FallbackActivityInterface() {
        super(false, RecentsState.DEFAULT, RecentsState.BACKGROUND_APP);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean allowMinimizeSplitScreen() {
        return false;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public ActivityInitListener createActivityInitListener(final Predicate predicate) {
        return new ActivityInitListener(new BiPredicate() { // from class: c.a.b.g0
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                boolean test;
                test = predicate.test((Boolean) obj2);
                return test;
            }
        }, RecentsActivity.ACTIVITY_TRACKER);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean deferStartingActivity(RecentsAnimationDeviceState recentsAnimationDeviceState, MotionEvent motionEvent) {
        return !recentsAnimationDeviceState.isFullyGesturalNavMode() || super.deferStartingActivity(recentsAnimationDeviceState, motionEvent);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getContainerType() {
        RecentsActivity createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.isStarted() && createdActivity.hasWindowFocus() ? 15 : 13;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public float getExtraSpace(Context context, DeviceProfile deviceProfile, PagedOrientationHandler pagedOrientationHandler) {
        return BaseActivityInterface.showOverviewActions(context) ? context.getResources().getDimensionPixelSize(R.dimen.overview_actions_height) : RecentsState.NO_OFFSET;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public Rect getOverviewWindowBounds(Rect rect, RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        return remoteAnimationTargetCompat.screenSpaceBounds;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getSwipeUpDestinationAndLength(DeviceProfile deviceProfile, Context context, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        calculateTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
        if (!deviceProfile.isVerticalBarLayout() || ((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(context)).getMode() == SysUINavigationMode.Mode.NO_BUTTON) {
            return deviceProfile.heightPx - rect.bottom;
        }
        Rect rect2 = deviceProfile.mInsets;
        return deviceProfile.hotseatBarSizePx + (deviceProfile.isSeascape() ? rect2.left : rect2.right);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public RecentsView getVisibleRecentsView() {
        RecentsActivity createdActivity = getCreatedActivity();
        if (createdActivity == null || !createdActivity.hasWindowFocus()) {
            return null;
        }
        return (RecentsView) createdActivity.getOverviewPanel();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean isInLiveTileMode() {
        return false;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onAssistantVisibilityChanged(float f) {
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onExitOverview(RecentsAnimationDeviceState recentsAnimationDeviceState, Runnable runnable) {
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onLaunchTaskFailed() {
        RecentsActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        ((RecentsView) createdActivity.getOverviewPanel()).startHome();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onSwipeUpToHomeComplete(RecentsAnimationDeviceState recentsAnimationDeviceState) {
        onSwipeUpToRecentsComplete();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public BaseActivityInterface.AnimationFactory prepareRecentsUI(RecentsAnimationDeviceState recentsAnimationDeviceState, boolean z, Consumer consumer) {
        BaseActivityInterface.DefaultAnimationFactory defaultAnimationFactory = new BaseActivityInterface.DefaultAnimationFactory(consumer);
        defaultAnimationFactory.initUI();
        return defaultAnimationFactory;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean switchToRecentsIfVisible(Runnable runnable) {
        return false;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public RecentsActivity getCreatedActivity() {
        return (RecentsActivity) RecentsActivity.ACTIVITY_TRACKER.getCreatedActivity();
    }
}
