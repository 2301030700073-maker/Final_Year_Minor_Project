package com.android.quickstep;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.ShelfPeekAnim;
import com.android.quickstep.util.SplitScreenBounds;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.function.Consumer;
import java.util.function.Predicate;

@TargetApi(28)
/* loaded from: classes.dex */
public abstract class BaseActivityInterface {
    public final BaseState mBackgroundState;
    public final BaseState mOverviewState;
    public final boolean rotationSupportedByActivity;

    public interface AnimationFactory {
        void createActivityInterface(long j);

        default void onTransitionCancelled() {
        }

        default void setRecentsAttachedToAppWindow(boolean z, boolean z2) {
        }

        default void setShelfState(ShelfPeekAnim.ShelfAnimState shelfAnimState, Interpolator interpolator, long j) {
        }
    }

    public class DefaultAnimationFactory implements AnimationFactory {
        public final StatefulActivity mActivity;
        public final Consumer mCallback;
        public boolean mIsAttachedToWindow;
        public final BaseState mStartState;

        public DefaultAnimationFactory(Consumer consumer) {
            this.mCallback = consumer;
            StatefulActivity createdActivity = BaseActivityInterface.this.getCreatedActivity();
            this.mActivity = createdActivity;
            this.mStartState = createdActivity.getStateManager().mState;
        }

        public /* synthetic */ void a(AnimatorPlaybackController animatorPlaybackController) {
            StateManager stateManager = this.mActivity.getStateManager();
            double interpolatedProgress = animatorPlaybackController.getInterpolatedProgress();
            BaseActivityInterface baseActivityInterface = BaseActivityInterface.this;
            stateManager.goToState(interpolatedProgress > 0.5d ? baseActivityInterface.mOverviewState : baseActivityInterface.mBackgroundState, false);
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public void createActivityInterface(long j) {
            PendingAnimation pendingAnimation = new PendingAnimation(j * 2);
            createBackgroundToOverviewAnim(this.mActivity, pendingAnimation);
            final AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
            this.mActivity.getStateManager().setCurrentUserControlledAnimation(createPlaybackController);
            createPlaybackController.mEndAction = new Runnable() { // from class: c.a.b.n
                @Override // java.lang.Runnable
                public final void run() {
                    BaseActivityInterface.DefaultAnimationFactory.this.a(createPlaybackController);
                }
            };
            this.mCallback.accept(createPlaybackController);
            if (SysUINavigationMode.getMode(this.mActivity) == SysUINavigationMode.Mode.NO_BUTTON) {
                setRecentsAttachedToAppWindow(this.mIsAttachedToWindow, false);
            }
        }

        public void createBackgroundToOverviewAnim(StatefulActivity statefulActivity, PendingAnimation pendingAnimation) {
            RecentsView recentsView = (RecentsView) statefulActivity.getOverviewPanel();
            pendingAnimation.addFloat(recentsView, LauncherAnimUtils.SCALE_PROPERTY, recentsView.getMaxScaleForFullScreen(), 1.0f, Interpolators.LINEAR);
            pendingAnimation.addFloat(recentsView, RecentsView.FULLSCREEN_PROGRESS, 1.0f, RecentsState.NO_OFFSET, Interpolators.LINEAR);
        }

        public StatefulActivity initUI() {
            BaseState baseState = this.mStartState;
            if (baseState.shouldDisableRestore()) {
                baseState = this.mActivity.getStateManager().getRestState();
            }
            this.mActivity.getStateManager().mRestState = baseState;
            this.mActivity.getStateManager().goToState(BaseActivityInterface.this.mBackgroundState, false);
            return this.mActivity;
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public void onTransitionCancelled() {
            this.mActivity.getStateManager().goToState(this.mStartState, false);
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public void setRecentsAttachedToAppWindow(boolean z, boolean z2) {
            if (this.mIsAttachedToWindow == z && z2) {
                return;
            }
            this.mIsAttachedToWindow = z;
            RecentsView recentsView = (RecentsView) this.mActivity.getOverviewPanel();
            StateManager stateManager = this.mActivity.getStateManager();
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.0f;
            Animator createStateElementAnimation = stateManager.createStateElementAnimation(0, fArr);
            float f = z ? 1.0f : 0.0f;
            float f2 = z ? 0.0f : 1.0f;
            this.mActivity.getStateManager().cancelStateElementAnimation(1);
            if (recentsView.isShown() || !z2) {
                f = ((Float) RecentsView.ADJACENT_PAGE_OFFSET.get(recentsView)).floatValue();
            } else {
                RecentsView.ADJACENT_PAGE_OFFSET.set((FloatProperty) recentsView, Float.valueOf(f));
            }
            if (z2) {
                this.mActivity.getStateManager().createStateElementAnimation(1, f, f2).start();
            } else {
                RecentsView.ADJACENT_PAGE_OFFSET.set((FloatProperty) recentsView, Float.valueOf(f2));
            }
            createStateElementAnimation.setInterpolator(z ? Interpolators.INSTANT : Interpolators.ACCEL_2);
            createStateElementAnimation.setDuration(z2 ? 300L : 0L).start();
        }
    }

    public BaseActivityInterface(boolean z, BaseState baseState, BaseState baseState2) {
        this.rotationSupportedByActivity = z;
        this.mOverviewState = baseState;
        this.mBackgroundState = baseState2;
    }

    private void calculateTaskSizeInternal(Context context, DeviceProfile deviceProfile, float f, float f2, float f3, float f4, Rect rect) {
        float f5;
        int i;
        Rect rect2 = deviceProfile.mInsets;
        if (deviceProfile.isMultiWindowMode) {
            Point point = SplitScreenBounds.INSTANCE.getSecondaryWindowBounds(context).availableSize;
            f5 = point.x;
            i = point.y;
        } else {
            f5 = deviceProfile.availableWidthPx;
            i = deviceProfile.availableHeightPx;
        }
        float f6 = i;
        int i2 = (deviceProfile.widthPx - rect2.left) - rect2.right;
        float f7 = (deviceProfile.heightPx - rect2.top) - rect2.bottom;
        float f8 = ((f7 - f4) - f) - f3;
        float f9 = i2;
        float min = Math.min((f9 - f2) / f5, f8 / f6);
        float f10 = f5 * min;
        float f11 = min * f6;
        float f12 = ((f9 - f10) / 2.0f) + rect2.left;
        float max = Math.max(f4, ((f7 - f) - f11) / 2.0f) + rect2.top;
        rect.set(Math.round(f12), Math.round(max), Math.round(f10) + Math.round(f12), Math.round(f11) + Math.round(max));
    }

    public static boolean showOverviewActions(Context context) {
        return FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(context);
    }

    public abstract boolean allowMinimizeSplitScreen();

    public final void calculateModalTaskSize(Context context, DeviceProfile deviceProfile, Rect rect) {
        calculateTaskSizeInternal(context, deviceProfile, getOverviewActionsHeight(context), context.getResources().getDimension(deviceProfile.isMultiWindowMode ? R.dimen.multi_window_task_card_horz_space : deviceProfile.isVerticalBarLayout() ? R.dimen.landscape_task_card_horz_space : R.dimen.portrait_modal_task_card_horz_space), RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, rect);
    }

    public final void calculateTaskSize(Context context, DeviceProfile deviceProfile, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        calculateTaskSize(context, deviceProfile, getExtraSpace(context, deviceProfile, pagedOrientationHandler), rect, pagedOrientationHandler);
    }

    public void closeOverlay() {
    }

    public abstract ActivityInitListener createActivityInitListener(Predicate predicate);

    public boolean deferStartingActivity(RecentsAnimationDeviceState recentsAnimationDeviceState, MotionEvent motionEvent) {
        return recentsAnimationDeviceState.isInDeferredGestureRegion(motionEvent);
    }

    public abstract int getContainerType();

    public abstract StatefulActivity getCreatedActivity();

    public DepthController getDepthController() {
        return null;
    }

    public abstract float getExtraSpace(Context context, DeviceProfile deviceProfile, PagedOrientationHandler pagedOrientationHandler);

    public final float getOverviewActionsHeight(Context context) {
        Resources resources = context.getResources();
        return (SysUINavigationMode.getMode(context) == SysUINavigationMode.Mode.THREE_BUTTONS ? resources.getDimensionPixelSize(R.dimen.overview_actions_bottom_margin_three_button) : resources.getDimensionPixelSize(R.dimen.overview_actions_bottom_margin_gesture)) + resources.getDimensionPixelSize(R.dimen.overview_actions_height);
    }

    public abstract Rect getOverviewWindowBounds(Rect rect, RemoteAnimationTargetCompat remoteAnimationTargetCompat);

    public abstract int getSwipeUpDestinationAndLength(DeviceProfile deviceProfile, Context context, Rect rect, PagedOrientationHandler pagedOrientationHandler);

    public abstract RecentsView getVisibleRecentsView();

    public abstract boolean isInLiveTileMode();

    public final boolean isResumed() {
        StatefulActivity createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.hasBeenResumed();
    }

    public final boolean isStarted() {
        StatefulActivity createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.isStarted();
    }

    public abstract void onAssistantVisibilityChanged(float f);

    public abstract void onExitOverview(RecentsAnimationDeviceState recentsAnimationDeviceState, Runnable runnable);

    public abstract void onLaunchTaskFailed();

    public void onLaunchTaskSuccess() {
        StatefulActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.getStateManager().moveToRestState();
    }

    public abstract void onSwipeUpToHomeComplete(RecentsAnimationDeviceState recentsAnimationDeviceState);

    public void onSwipeUpToRecentsComplete() {
        StatefulActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.getStateManager().reapplyState(false);
    }

    public void onTransitionCancelled(boolean z) {
        StatefulActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.getStateManager().goToState(createdActivity.getStateManager().getRestState(), z);
    }

    public abstract AnimationFactory prepareRecentsUI(RecentsAnimationDeviceState recentsAnimationDeviceState, boolean z, Consumer consumer);

    public void setOnDeferredActivityLaunchCallback(Runnable runnable) {
    }

    public void switchRunningTaskViewToScreenshot(ThumbnailData thumbnailData, Runnable runnable) {
        StatefulActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        RecentsView recentsView = (RecentsView) createdActivity.getOverviewPanel();
        if (recentsView != null) {
            recentsView.switchToScreenshot(thumbnailData, runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public abstract boolean switchToRecentsIfVisible(Runnable runnable);

    public void updateOverviewPredictionState() {
    }

    private void calculateTaskSize(Context context, DeviceProfile deviceProfile, float f, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        Resources resources = context.getResources();
        boolean z = showOverviewActions(context) || SysUINavigationMode.hideShelfInTwoButtonLandscape(context, pagedOrientationHandler);
        calculateTaskSizeInternal(context, deviceProfile, f, resources.getDimension(deviceProfile.isMultiWindowMode ? R.dimen.multi_window_task_card_horz_space : deviceProfile.isVerticalBarLayout() ? R.dimen.landscape_task_card_horz_space : z ? R.dimen.portrait_task_card_horz_space_big_overview : R.dimen.portrait_task_card_horz_space), z ? RecentsState.NO_OFFSET : resources.getDimension(R.dimen.task_card_vert_space), resources.getDimension(R.dimen.task_thumbnail_top_margin), rect);
    }
}
