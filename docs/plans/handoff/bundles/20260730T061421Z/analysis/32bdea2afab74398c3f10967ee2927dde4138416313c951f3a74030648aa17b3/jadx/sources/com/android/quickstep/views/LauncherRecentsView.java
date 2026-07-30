package com.android.quickstep.views;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.os.Trace;
import android.os.UserHandle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.views.ScrimView;
import com.android.quickstep.LauncherActivityInterface;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.LauncherRecentsView;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.RecentsExtraCard;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.recents.model.Task;
import java.util.Objects;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class LauncherRecentsView extends RecentsView implements StateManager.StateListener {
    public RecentsExtraCard mRecentsExtraCardPlugin;
    public PluginListener mRecentsExtraCardPluginListener;
    public RecentsExtraViewContainer mRecentsExtraViewContainer;
    public final TransformParams mTransformParams;

    public LauncherRecentsView(Context context) {
        this(context, null);
    }

    private boolean canComputeScrollX() {
        return (this.mRecentsExtraCardPlugin == null || getTaskViewCount() <= 0 || this.mDisallowScrollToClearAll) ? false : true;
    }

    private int computeScrollX() {
        int taskViewStartIndex = getTaskViewStartIndex() - 1;
        while (taskViewStartIndex >= 0 && (getChildAt(taskViewStartIndex) instanceof RecentsExtraViewContainer) && ((RecentsExtraViewContainer) getChildAt(taskViewStartIndex)).isScrollable()) {
            taskViewStartIndex--;
        }
        return getScrollForPage(taskViewStartIndex + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createRecentsExtraCard() {
        this.mRecentsExtraViewContainer = new RecentsExtraViewContainer(getContext());
        this.mRecentsExtraViewContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.mRecentsExtraViewContainer.setScrollable(true);
        addView(this.mRecentsExtraViewContainer, 0);
    }

    @Override // com.android.quickstep.views.RecentsView, com.android.launcher3.PagedView
    public int computeMaxScroll() {
        return (canComputeScrollX() && this.mIsRtl) ? computeScrollX() : super.computeMaxScroll();
    }

    @Override // com.android.quickstep.views.RecentsView, com.android.launcher3.PagedView
    public int computeMinScroll() {
        return (!canComputeScrollX() || this.mIsRtl) ? super.computeMinScroll() : computeScrollX();
    }

    @Override // com.android.quickstep.views.RecentsView
    public AnimatorSet createAdjacentPageAnimForTaskLaunch(TaskView taskView) {
        AnimatorSet createAdjacentPageAnimForTaskLaunch = super.createAdjacentPageAnimForTaskLaunch(taskView);
        if (!SysUINavigationMode.getMode(this.mActivity).hasGestures) {
            return createAdjacentPageAnimForTaskLaunch;
        }
        float f = 1.3059858f;
        if ((((LauncherState) ((BaseQuickstepLauncher) this.mActivity).getStateManager().mState).getVisibleElements((Launcher) this.mActivity) & 8) != 0) {
            float f2 = ((BaseQuickstepLauncher) this.mActivity).getDeviceProfile().heightPx;
            f = ((f2 - ((BaseQuickstepLauncher) this.mActivity).mAllAppsController.mShiftRange) / f2) + 1.0f;
        }
        createAdjacentPageAnimForTaskLaunch.play(ObjectAnimator.ofFloat(((BaseQuickstepLauncher) this.mActivity).mAllAppsController, AllAppsTransitionController.ALL_APPS_PROGRESS, f));
        ObjectAnimator ofInt = ObjectAnimator.ofInt(((BaseQuickstepLauncher) this.mActivity).mScrimView, ScrimView.DRAG_HANDLE_ALPHA, 0);
        ofInt.setInterpolator(Interpolators.ACCEL_2);
        createAdjacentPageAnimForTaskLaunch.play(ofInt);
        return createAdjacentPageAnimForTaskLaunch;
    }

    @Override // com.android.quickstep.views.RecentsView
    public DepthController getDepthController() {
        return ((BaseQuickstepLauncher) this.mActivity).mDepthController;
    }

    @Override // com.android.quickstep.views.RecentsView
    public TransformParams getLiveTileParams(boolean z) {
        if (!this.mEnableDrawingLiveTile || this.mRecentsAnimationController == null || this.mRecentsAnimationTargets == null) {
            return null;
        }
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView != null) {
            runningTaskView.getThumbnail().getGlobalVisibleRect(this.mTempRect);
            int scaleX = (int) ((getScaleX() * (runningTaskView.getScaleX() * this.mTaskWidth)) - this.mTempRect.width());
            int scaleY = (int) ((getScaleY() * (runningTaskView.getScaleY() * this.mTaskHeight)) - this.mTempRect.height());
            if ((this.mCurrentPage != 0 || z) && scaleX > 0) {
                Rect rect = this.mTempRect;
                int i = rect.left;
                if (i - scaleX < 0) {
                    rect.left = i - scaleX;
                } else {
                    rect.right += scaleX;
                }
            }
            if (z && scaleY > 0) {
                this.mTempRect.top -= scaleY;
            }
            this.mTransformParams.setProgress(1.0f).setTargetAlpha(runningTaskView.getAlpha()).setSyncTransactionApplier(this.mSyncTransactionApplier).setTargetSet(this.mRecentsAnimationTargets);
        }
        return this.mTransformParams;
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean hasRecentsExtraCard() {
        return this.mRecentsExtraViewContainer != null;
    }

    @Override // com.android.quickstep.views.RecentsView
    public void init(OverviewActionsView overviewActionsView) {
        super.init(overviewActionsView);
        setContentAlpha(RecentsState.NO_OFFSET);
    }

    @Override // com.android.quickstep.views.RecentsView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).addPluginListener(this.mRecentsExtraCardPluginListener, RecentsExtraCard.class);
    }

    @Override // com.android.quickstep.views.RecentsView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PluginManagerWrapper pluginManagerWrapper = (PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext());
        pluginManagerWrapper.mPluginManager.removePluginListener(this.mRecentsExtraCardPluginListener);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onTaskLaunchAnimationEnd(boolean z) {
        if (z) {
            ((BaseQuickstepLauncher) this.mActivity).getStateManager().goToState((BaseState) LauncherState.NORMAL, false);
        } else {
            LauncherState launcherState = (LauncherState) ((BaseQuickstepLauncher) this.mActivity).getStateManager().mState;
            AllAppsTransitionController allAppsTransitionController = ((BaseQuickstepLauncher) this.mActivity).mAllAppsController;
            allAppsTransitionController.setProgress(launcherState.getVerticalProgress(allAppsTransitionController.mLauncher));
            allAppsTransitionController.setAlphas(launcherState, new StateAnimationConfig(), PropertySetter.NO_ANIM_PROPERTY_SETTER);
            allAppsTransitionController.onProgressAnimationEnd();
        }
        super.onTaskLaunchAnimationEnd(z);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onTaskLaunchAnimationUpdate(float f, TaskView taskView) {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            if (taskView.isRunningTask()) {
                this.mTransformParams.setProgress(1.0f - f).setSyncTransactionApplier(this.mSyncTransactionApplier);
            } else {
                redrawLiveTile(true);
            }
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onTaskLaunched(Task task) {
        ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(getContext())).onStartApp(task.getTopComponent(), UserHandle.of(task.key.userId), AppLaunchTracker.CONTAINER_OVERVIEW);
    }

    public /* synthetic */ void p() {
        ((BaseQuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.NORMAL);
    }

    public /* synthetic */ void q() {
        finishRecentsAnimation(true, new Runnable() { // from class: c.a.b.d2.g
            @Override // java.lang.Runnable
            public final void run() {
                LauncherRecentsView.this.p();
            }
        });
    }

    @Override // com.android.quickstep.views.RecentsView
    public void reset() {
        super.reset();
        setLayoutRotation(0, 0);
        PredictionUiStateManager predictionUiStateManager = (PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(getContext());
        PredictionUiStateManager.Client client = PredictionUiStateManager.Client.HOME;
        if (client == predictionUiStateManager.mActiveClient) {
            return;
        }
        predictionUiStateManager.mActiveClient = client;
        predictionUiStateManager.dispatchOnChange(true);
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void scrollTo(int i, int i2) {
        super.scrollTo(i, i2);
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && this.mEnableDrawingLiveTile) {
            redrawLiveTile(true);
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setContentAlpha(float f) {
        super.setContentAlpha(f);
        RecentsExtraViewContainer recentsExtraViewContainer = this.mRecentsExtraViewContainer;
        if (recentsExtraViewContainer != null) {
            recentsExtraViewContainer.setAlpha(f);
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setModalStateEnabled(boolean z) {
        super.setModalStateEnabled(z);
        if (z) {
            ((BaseQuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.OVERVIEW_MODAL_TASK);
        } else if (((BaseQuickstepLauncher) this.mActivity).isInState(LauncherState.OVERVIEW_MODAL_TASK)) {
            ((BaseQuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.OVERVIEW);
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setOverviewStateEnabled(boolean z) {
        super.setOverviewStateEnabled(z);
        if (z) {
            setDisallowScrollToClearAll(!((((LauncherState) ((BaseQuickstepLauncher) this.mActivity).getStateManager().mState).getVisibleElements((Launcher) this.mActivity) & 64) != 0));
        }
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            LauncherState launcherState = (LauncherState) ((BaseQuickstepLauncher) this.mActivity).getStateManager().mState;
            if (launcherState == LauncherState.OVERVIEW || launcherState == LauncherState.ALL_APPS) {
                redrawLiveTile(false);
            }
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean shouldStealTouchFromSiblingsBelow(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return super.shouldStealTouchFromSiblingsBelow(motionEvent);
        }
        Hotseat hotseat = ((BaseQuickstepLauncher) this.mActivity).mHotseat;
        return !(hotseat.isShown() && ((BaseQuickstepLauncher) this.mActivity).mDragLayer.isEventOverView(hotseat, motionEvent, this));
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean shouldUseMultiWindowTaskSizeStrategy() {
        BaseQuickstepLauncher baseQuickstepLauncher = (BaseQuickstepLauncher) this.mActivity;
        Objects.requireNonNull(baseQuickstepLauncher);
        Trace.beginSection("isInMultiWindowMode");
        try {
            Boolean valueOf = Boolean.valueOf(baseQuickstepLauncher.isInMultiWindowMode());
            Trace.endSection();
            return valueOf.booleanValue();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void startHome() {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            switchToScreenshot(null, new Runnable() { // from class: c.a.b.d2.f
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherRecentsView.this.q();
                }
            });
        } else {
            ((BaseQuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.NORMAL);
        }
    }

    public LauncherRecentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(LauncherState launcherState) {
        if (launcherState == LauncherState.NORMAL || launcherState == LauncherState.SPRING_LOADED) {
            reset();
        }
        setOverlayEnabled(launcherState == LauncherState.OVERVIEW || launcherState == LauncherState.OVERVIEW_MODAL_TASK);
        setFreezeViewVisibility(false);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionStart(LauncherState launcherState) {
        setOverviewStateEnabled(launcherState.overviewUi);
        setFreezeViewVisibility(true);
    }

    public LauncherRecentsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, LauncherActivityInterface.INSTANCE);
        this.mTransformParams = new TransformParams();
        this.mRecentsExtraCardPluginListener = new PluginListener() { // from class: com.android.quickstep.views.LauncherRecentsView.1
            @Override // com.android.systemui.plugins.PluginListener
            public void onPluginConnected(RecentsExtraCard recentsExtraCard, Context context2) {
                LauncherRecentsView.this.createRecentsExtraCard();
                LauncherRecentsView.this.mRecentsExtraCardPlugin = recentsExtraCard;
                LauncherRecentsView.this.mRecentsExtraCardPlugin.setupView(context2, LauncherRecentsView.this.mRecentsExtraViewContainer, LauncherRecentsView.this.mActivity);
            }

            @Override // com.android.systemui.plugins.PluginListener
            public void onPluginDisconnected(RecentsExtraCard recentsExtraCard) {
                LauncherRecentsView launcherRecentsView = LauncherRecentsView.this;
                launcherRecentsView.removeView(launcherRecentsView.mRecentsExtraViewContainer);
                LauncherRecentsView.this.mRecentsExtraCardPlugin = null;
                LauncherRecentsView.this.mRecentsExtraViewContainer = null;
            }
        };
        ((BaseQuickstepLauncher) this.mActivity).getStateManager().mListeners.add(this);
    }
}
