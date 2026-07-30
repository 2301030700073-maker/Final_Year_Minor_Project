package com.android.quickstep.views;

import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.UserHandle;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Property;
import android.util.SparseBooleanArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.ListView;
import b.l.W;
import c.a.b.d2.C0270b;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.PagedView;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.SpringProperty;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.DynamicResource;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.OverScroller;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.util.ViewPool;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskThumbnailCache;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.ViewUtils;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.SplitScreenBounds;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.plugins.ResourceProvider;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.IPinnedStackAnimationListener;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.PackageManagerWrapper;
import com.android.systemui.shared.system.TaskStackChangeListener;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

@TargetApi(28)
/* loaded from: classes.dex */
public abstract class RecentsView extends PagedView implements Insettable, TaskThumbnailCache.HighResLoadingState.HighResLoadingStateChangedCallback, InvariantDeviceProfile.OnIDPChangeListener, RecentsModel.TaskVisualsChangeListener, SplitScreenBounds.OnChangeListener {
    public static final int ADDITION_TASK_DURATION = 200;
    public static final int DISMISS_TASK_DURATION = 300;
    public static final float UPDATE_SYSUI_FLAGS_THRESHOLD = 0.85f;
    public OverviewActionsView mActionsView;
    public final StatefulActivity mActivity;
    public float mAdjacentPageOffset;
    public final ClearAllButton mClearAllButton;
    public final Rect mClearAllButtonDeadZoneRect;

    @ViewDebug.ExportedProperty(category = "launcher")
    public float mContentAlpha;
    public boolean mDisallowScrollToClearAll;
    public int mDownX;
    public int mDownY;
    public boolean mDwbToastShown;
    public final Drawable mEmptyIcon;
    public final CharSequence mEmptyMessage;
    public final int mEmptyMessagePadding;
    public final TextPaint mEmptyMessagePaint;
    public Layout mEmptyTextLayout;
    public boolean mEnableDrawingLiveTile;
    public final float mFastFlingVelocity;
    public boolean mFreezeViewVisibility;

    @ViewDebug.ExportedProperty(category = "launcher")
    public float mFullscreenProgress;
    public boolean mHandleTaskStackChanges;
    public final SparseBooleanArray mHasVisibleTaskData;
    public final PinnedStackAnimationListener mIPinnedStackAnimationListener;
    public final InvariantDeviceProfile mIdp;
    public int mIgnoreResetTaskId;
    public final Point mLastMeasureSize;
    public LayoutTransition mLayoutTransition;
    public boolean mLiveTileOverlayAttached;
    public final RecentsModel mModel;
    public BaseActivity.MultiWindowModeChangedListener mMultiWindowModeChangedListener;
    public OnEmptyMessageUpdatedListener mOnEmptyMessageUpdatedListener;
    public RecentsOrientedState mOrientationState;
    public boolean mOverlayEnabled;
    public boolean mOverviewStateEnabled;
    public PendingAnimation mPendingAnimation;
    public RecentsAnimationController mRecentsAnimationController;
    public RecentsAnimationTargets mRecentsAnimationTargets;
    public boolean mRunningTaskIconScaledDown;
    public int mRunningTaskId;
    public boolean mRunningTaskTileHidden;
    public final ScrollState mScrollState;
    public boolean mShowEmptyMessage;
    public final BaseActivityInterface mSizeStrategy;
    public final float mSquaredTouchSlop;
    public boolean mSwipeDownShouldLaunchApp;
    public SurfaceTransactionApplier mSyncTransactionApplier;
    public int mTaskHeight;
    public int mTaskListChangeId;

    @ViewDebug.ExportedProperty(category = "launcher")
    public float mTaskModalness;
    public final TaskStackChangeListener mTaskStackListener;
    public final int mTaskTopMargin;
    public final Rect mTaskViewDeadZoneRect;
    public final ViewPool mTaskViewPool;
    public int mTaskViewStartIndex;
    public int mTaskWidth;
    public final PointF mTempPointF;
    public final Rect mTempRect;
    public Task mTmpRunningTask;
    public boolean mTouchDownToStartHome;
    public static final String TAG = RecentsView.class.getSimpleName();
    public static final FloatProperty CONTENT_ALPHA = new FloatProperty("contentAlpha") { // from class: com.android.quickstep.views.RecentsView.1
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.getContentAlpha());
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f) {
            recentsView.setContentAlpha(f);
        }
    };
    public static final FloatProperty FULLSCREEN_PROGRESS = new FloatProperty("fullscreenProgress") { // from class: com.android.quickstep.views.RecentsView.2
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.mFullscreenProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f) {
            recentsView.setFullscreenProgress(f);
        }
    };
    public static final FloatProperty TASK_MODALNESS = new FloatProperty("taskModalness") { // from class: com.android.quickstep.views.RecentsView.3
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.mTaskModalness);
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f) {
            recentsView.setTaskModalness(f);
        }
    };
    public static final FloatProperty ADJACENT_PAGE_OFFSET = new FloatProperty("adjacentPageOffset") { // from class: com.android.quickstep.views.RecentsView.4
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.mAdjacentPageOffset);
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f) {
            if (recentsView.mAdjacentPageOffset != f) {
                recentsView.mAdjacentPageOffset = f;
                recentsView.updatePageOffsets();
            }
        }
    };

    /* renamed from: com.android.quickstep.views.RecentsView$5, reason: invalid class name */
    public class AnonymousClass5 extends TaskStackChangeListener {
        public AnonymousClass5() {
        }

        public /* synthetic */ void a(TaskView taskView) {
            RecentsView.this.dismissTask(taskView, true, false);
        }

        public /* synthetic */ void b(TaskView taskView) {
            RecentsView.this.dismissTask(taskView, true, false);
        }

        public /* synthetic */ void c(Handler handler, final TaskView taskView, Task.TaskKey taskKey) {
            if (taskKey == null) {
                handler.post(new Runnable() { // from class: c.a.b.d2.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecentsView.AnonymousClass5.this.b(taskView);
                    }
                });
            }
        }

        public /* synthetic */ void d(int i) {
            final Handler handler;
            final TaskView taskView = RecentsView.this.getTaskView(i);
            if (taskView == null || (handler = taskView.getHandler()) == null) {
                return;
            }
            Task.TaskKey taskKey = taskView.getTask().key;
            if (PackageManagerWrapper.getInstance().getActivityInfo(taskKey.getComponent(), taskKey.userId) == null) {
                handler.post(new Runnable() { // from class: c.a.b.d2.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecentsView.AnonymousClass5.this.a(taskView);
                    }
                });
            } else {
                RecentsView.this.mModel.findTaskWithId(taskKey.id, new Consumer() { // from class: c.a.b.d2.j
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RecentsView.AnonymousClass5.this.c(handler, taskView, (Task.TaskKey) obj);
                    }
                });
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityPinned(String str, int i, int i2, int i3) {
            TaskView taskView;
            if (RecentsView.this.mHandleTaskStackChanges && TaskUtils.checkCurrentOrManagedUserId(i, RecentsView.this.getContext()) && (taskView = RecentsView.this.getTaskView(i2)) != null) {
                RecentsView.this.removeView(taskView);
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityUnpinned() {
            if (RecentsView.this.mHandleTaskStackChanges) {
                RecentsView.this.reloadIfNeeded();
                RecentsView.this.enableLayoutTransitions();
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onTaskRemoved(final int i) {
            if (RecentsView.this.mHandleTaskStackChanges) {
                Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.d2.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecentsView.AnonymousClass5.this.d(i);
                    }
                });
            }
        }
    }

    /* renamed from: com.android.quickstep.views.RecentsView$7, reason: invalid class name */
    public class AnonymousClass7 implements Consumer {
        public final /* synthetic */ int val$draggedIndex;
        public final /* synthetic */ boolean val$shouldRemoveTask;
        public final /* synthetic */ TaskView val$taskView;

        public AnonymousClass7(TaskView taskView, boolean z, int i) {
            this.val$taskView = taskView;
            this.val$shouldRemoveTask = z;
            this.val$draggedIndex = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onEnd, reason: merged with bridge method [inline-methods] */
        public void a(PendingAnimation.EndState endState) {
            if (endState.isSuccess) {
                if (this.val$shouldRemoveTask) {
                    RecentsView.this.removeTask(this.val$taskView, this.val$draggedIndex, endState);
                }
                int i = RecentsView.this.mCurrentPage;
                if (this.val$draggedIndex < i || i == RecentsView.this.getTaskViewCount() - 1) {
                    i--;
                }
                RecentsView.this.removeViewInLayout(this.val$taskView);
                if (RecentsView.this.getTaskViewCount() == 0) {
                    RecentsView recentsView = RecentsView.this;
                    recentsView.removeViewInLayout(recentsView.mClearAllButton);
                    RecentsView.this.startHome();
                } else {
                    RecentsView.this.snapToPageImmediately(i);
                }
                RecentsView recentsView2 = RecentsView.this;
                recentsView2.onLayout(false, recentsView2.getLeft(), RecentsView.this.getTop(), RecentsView.this.getRight(), RecentsView.this.getBottom());
            }
            RecentsView.this.resetTaskVisuals();
            RecentsView.this.mPendingAnimation = null;
        }

        @Override // java.util.function.Consumer
        public void accept(final PendingAnimation.EndState endState) {
            if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && this.val$taskView.isRunningTask() && endState.isSuccess) {
                RecentsView.this.finishRecentsAnimation(true, new Runnable() { // from class: c.a.b.d2.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecentsView.AnonymousClass7.this.a(endState);
                    }
                });
            } else {
                a(endState);
            }
        }
    }

    public interface OnEmptyMessageUpdatedListener {
        void onEmptyMessageUpdated(boolean z);
    }

    public interface PageCallbacks {
        default void onPageScroll(ScrollState scrollState) {
        }
    }

    public class PinnedStackAnimationListener extends IPinnedStackAnimationListener.Stub {
        public BaseActivity mActivity;

        public PinnedStackAnimationListener() {
        }

        @Override // com.android.systemui.shared.recents.IPinnedStackAnimationListener
        public void onPinnedStackAnimationStarted() {
            this.mActivity.clearForceInvisibleFlag(9);
        }

        public void setActivity(BaseActivity baseActivity) {
            this.mActivity = baseActivity;
        }
    }

    public class ScrollState extends PagedOrientationHandler.CurveProperties {
        public float linearInterpolation;
        public float scrollFromEdge;

        public void updateInterpolation(float f, int i) {
            this.linearInterpolation = Math.min(1.0f, Math.abs(this.screenCenter - (f + this.halfPageSize)) / ((this.halfScreenSize + r0) + i));
        }
    }

    public RecentsView(Context context, AttributeSet attributeSet, int i, BaseActivityInterface baseActivityInterface) {
        super(context, attributeSet, i);
        this.mEnableDrawingLiveTile = false;
        this.mTempRect = new Rect();
        this.mTempPointF = new PointF();
        this.mClearAllButtonDeadZoneRect = new Rect();
        this.mTaskViewDeadZoneRect = new Rect();
        this.mScrollState = new ScrollState();
        this.mHasVisibleTaskData = new SparseBooleanArray();
        this.mAdjacentPageOffset = RecentsState.NO_OFFSET;
        this.mTaskStackListener = new AnonymousClass5();
        this.mIPinnedStackAnimationListener = new PinnedStackAnimationListener();
        this.mTaskListChangeId = -1;
        this.mRunningTaskId = -1;
        this.mRunningTaskIconScaledDown = false;
        this.mContentAlpha = 1.0f;
        this.mFullscreenProgress = RecentsState.NO_OFFSET;
        this.mTaskModalness = RecentsState.NO_OFFSET;
        this.mIgnoreResetTaskId = -1;
        this.mLastMeasureSize = new Point();
        this.mTaskViewStartIndex = 0;
        this.mMultiWindowModeChangedListener = new BaseActivity.MultiWindowModeChangedListener() { // from class: c.a.b.d2.s
            @Override // com.android.launcher3.BaseActivity.MultiWindowModeChangedListener
            public final void onMultiWindowModeChanged(boolean z) {
                RecentsView.this.m(z);
            }
        };
        setPageSpacing(getResources().getDimensionPixelSize(R.dimen.recents_page_spacing));
        setEnableFreeScroll(true);
        this.mSizeStrategy = baseActivityInterface;
        this.mActivity = (StatefulActivity) BaseActivity.fromContext(context);
        RecentsOrientedState recentsOrientedState = new RecentsOrientedState(context, this.mSizeStrategy, new IntConsumer() { // from class: c.a.b.d2.i
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                RecentsView.this.animateRecentsRotationInPlace(i2);
            }
        });
        this.mOrientationState = recentsOrientedState;
        recentsOrientedState.setActivityConfiguration(context.getResources().getConfiguration());
        this.mFastFlingVelocity = getResources().getDimensionPixelSize(R.dimen.recents_fast_fling_velocity);
        this.mModel = (RecentsModel) RecentsModel.INSTANCE.b(context);
        this.mIdp = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(context);
        ClearAllButton clearAllButton = (ClearAllButton) LayoutInflater.from(context).inflate(R.layout.overview_clear_all_button, (ViewGroup) this, false);
        this.mClearAllButton = clearAllButton;
        clearAllButton.setOnClickListener(new View.OnClickListener() { // from class: c.a.b.d2.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentsView.this.dismissAllTasks(view);
            }
        });
        this.mTaskViewPool = new ViewPool(context, this, R.layout.task, 20, 10);
        boolean recentsRtlSetting = this.mOrientationHandler.getRecentsRtlSetting(getResources());
        this.mIsRtl = recentsRtlSetting;
        setLayoutDirection(recentsRtlSetting ? 1 : 0);
        this.mTaskTopMargin = getResources().getDimensionPixelSize(R.dimen.task_thumbnail_top_margin);
        this.mSquaredTouchSlop = Utilities.squaredTouchSlop(context);
        Drawable drawable = context.getDrawable(R.drawable.ic_empty_recents);
        this.mEmptyIcon = drawable;
        drawable.setCallback(this);
        this.mEmptyMessage = context.getText(R.string.recents_empty_message);
        TextPaint textPaint = new TextPaint();
        this.mEmptyMessagePaint = textPaint;
        textPaint.setColor(W.getAttrColor(context, android.R.attr.textColorPrimary));
        this.mEmptyMessagePaint.setTextSize(getResources().getDimension(R.dimen.recents_empty_message_text_size));
        TextPaint textPaint2 = this.mEmptyMessagePaint;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(android.R.style.TextAppearance.DeviceDefault, new int[]{android.R.attr.fontFamily});
        String string = obtainStyledAttributes.getString(0);
        obtainStyledAttributes.recycle();
        textPaint2.setTypeface(Typeface.create(string, 0));
        this.mEmptyMessagePadding = getResources().getDimensionPixelSize(R.dimen.recents_empty_message_text_padding);
        setWillNotDraw(false);
        updateEmptyMessage();
        this.mOrientationHandler = this.mOrientationState.getOrientationHandler();
        this.mActivity.getViewCache().setCacheSize(R.layout.digital_wellbeing_toast, 5);
    }

    private void addDismissedTaskAnimations(View view, long j, PendingAnimation pendingAnimation) {
        pendingAnimation.setFloat(view, LauncherAnimUtils.VIEW_ALPHA, RecentsState.NO_OFFSET, Interpolators.ACCEL_2);
        FloatProperty secondaryViewTranslate = this.mOrientationHandler.getSecondaryViewTranslate();
        int secondaryDimension = this.mOrientationHandler.getSecondaryDimension(view);
        int taskDismissDirectionFactor = this.mOrientationHandler.getTaskDismissDirectionFactor();
        ResourceProvider provider = DynamicResource.provider(this.mActivity);
        SpringProperty springProperty = new SpringProperty(2);
        springProperty.mDampingRatio = provider.getFloat(R.dimen.dismiss_task_trans_y_damping_ratio);
        springProperty.mStiffness = provider.getFloat(R.dimen.dismiss_task_trans_y_stiffness);
        ObjectAnimator duration = ObjectAnimator.ofFloat(view, secondaryViewTranslate, taskDismissDirectionFactor * secondaryDimension).setDuration(j);
        duration.setInterpolator(Interpolators.LINEAR);
        pendingAnimation.mAnim.play(duration.setDuration(pendingAnimation.mDuration));
        AnimatorPlaybackController.addAnimationHoldersRecur(duration, pendingAnimation.mDuration, springProperty, pendingAnimation.mAnimHolders);
    }

    private void animateActionsViewIn() {
        this.mActionsView.updateHiddenFlags(16, false);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mActionsView.getVisibilityAlpha(), MultiValueAlpha.VALUE, RecentsState.NO_OFFSET, 1.0f);
        ofFloat.setDuration(120L);
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateRecentsRotationInPlace(final int i) {
        if (this.mOrientationState.canRecentsActivityRotate()) {
            return;
        }
        AnimatorSet recentsChangedOrientation = setRecentsChangedOrientation(true);
        recentsChangedOrientation.addListener(AnimationSuccessListener.forRunnable(new Runnable() { // from class: c.a.b.d2.y
            @Override // java.lang.Runnable
            public final void run() {
                RecentsView.this.c(i);
            }
        }));
        recentsChangedOrientation.start();
    }

    private void applyRunningTaskIconScale() {
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView != null) {
            runningTaskView.setIconScaleAndDim(this.mRunningTaskIconScaledDown ? RecentsState.NO_OFFSET : 1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableLayoutTransitions() {
        setLayoutTransition(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissAllTasks(View view) {
        runDismissAnimation(createAllTasksDismissAnimation(300L));
        this.mActivity.getUserEventDispatcher().logActionOnControl(0, 13);
    }

    private void dismissCurrentTask() {
        TaskView nextPageTaskView = getNextPageTaskView();
        if (nextPageTaskView != null) {
            dismissTask(nextPageTaskView, true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableLayoutTransitions() {
        if (this.mLayoutTransition == null) {
            LayoutTransition layoutTransition = new LayoutTransition();
            this.mLayoutTransition = layoutTransition;
            layoutTransition.enableTransitionType(2);
            this.mLayoutTransition.setDuration(200L);
            this.mLayoutTransition.setStartDelay(2, 0L);
            this.mLayoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.android.quickstep.views.RecentsView.6
                @Override // android.animation.LayoutTransition.TransitionListener
                public void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i) {
                    if (view instanceof TaskView) {
                        RecentsView.this.snapToPage(0);
                        RecentsView.this.disableLayoutTransitions();
                    }
                }

                @Override // android.animation.LayoutTransition.TransitionListener
                public void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i) {
                }
            });
        }
        setLayoutTransition(this.mLayoutTransition);
    }

    public static /* synthetic */ boolean f(TaskView taskView, View view) {
        return (view.getVisibility() == 8 || view == taskView) ? false : true;
    }

    private TaskView getTaskViewAtByAbsoluteIndex(int i) {
        if (i >= getChildCount() || i < 0) {
            return null;
        }
        View childAt = getChildAt(i);
        if (childAt instanceof TaskView) {
            return (TaskView) childAt;
        }
        return null;
    }

    private boolean isModal() {
        return this.mTaskModalness > RecentsState.NO_OFFSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeTask(TaskView taskView, int i, PendingAnimation.EndState endState) {
        if (taskView.getTask() != null) {
            ActivityManagerWrapper.getInstance().removeTask(taskView.getTask().key.id);
            this.mActivity.getUserEventDispatcher().logTaskLaunchOrDismiss(endState.logAction, 1, i, TaskUtils.getLaunchComponentKeyForTask(taskView.getTask().key));
            this.mActivity.getStatsLogManager().logger().withItemInfo(taskView.getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_DISMISS_SWIPE_UP);
        }
    }

    private void removeTasksViewsAndClearAllButton() {
        for (int taskViewCount = getTaskViewCount() - 1; taskViewCount >= 0; taskViewCount--) {
            removeView(getTaskViewAt(taskViewCount));
        }
        if (indexOfChild(this.mClearAllButton) != -1) {
            removeView(this.mClearAllButton);
        }
    }

    private void resetPaddingFromTaskSize() {
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        getTaskSize(this.mTempRect);
        this.mTaskWidth = this.mTempRect.width();
        this.mTaskHeight = this.mTempRect.height();
        Rect rect = this.mTempRect;
        int i = rect.top - this.mTaskTopMargin;
        rect.top = i;
        int i2 = rect.left;
        Rect rect2 = this.mInsets;
        setPadding(i2 - rect2.left, i - rect2.top, (deviceProfile.widthPx - rect2.right) - rect.right, (deviceProfile.heightPx - rect2.bottom) - rect.bottom);
    }

    private void rotateAllChildTasks() {
        for (int i = 0; i < getTaskViewCount(); i++) {
            getTaskViewAt(i).setOrientationState(this.mOrientationState);
        }
    }

    private void setRunningTaskViewShowScreenshot(boolean z) {
        TaskView runningTaskView;
        if (!FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() || (runningTaskView = getRunningTaskView()) == null) {
            return;
        }
        runningTaskView.setShowScreenshot(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTaskModalness(float f) {
        this.mTaskModalness = f;
        updatePageOffsets();
        if (getCurrentPageTaskView() != null) {
            getCurrentPageTaskView().setModalness(f);
        }
        this.mActionsView.updateHiddenFlags(4, f < 1.0f && (!this.mOrientationState.canRecentsActivityRotate() && this.mOrientationState.getTouchRotation() != 0));
    }

    private boolean snapToPageRelative(int i, int i2, boolean z) {
        if (i == 0) {
            return false;
        }
        int nextPage = getNextPage() + i2;
        if (!z && (nextPage < 0 || nextPage >= i)) {
            return false;
        }
        snapToPage((nextPage + i) % i);
        getChildAt(getNextPage()).requestFocus();
        return true;
    }

    private void unloadVisibleTaskData() {
        TaskView taskView;
        for (int i = 0; i < this.mHasVisibleTaskData.size(); i++) {
            if (this.mHasVisibleTaskData.valueAt(i) && (taskView = getTaskView(this.mHasVisibleTaskData.keyAt(i))) != null) {
                taskView.onTaskListVisibilityChanged(false);
            }
        }
        this.mHasVisibleTaskData.clear();
    }

    private void updateDeadZoneRects() {
        this.mClearAllButtonDeadZoneRect.setEmpty();
        if (this.mClearAllButton.getWidth() > 0) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.recents_clear_all_deadzone_vertical_margin);
            this.mClearAllButton.getHitRect(this.mClearAllButtonDeadZoneRect);
            this.mClearAllButtonDeadZoneRect.inset((-getPaddingRight()) / 2, -dimensionPixelSize);
        }
        this.mTaskViewDeadZoneRect.setEmpty();
        int taskViewCount = getTaskViewCount();
        if (taskViewCount > 0) {
            TaskView taskViewAt = getTaskViewAt(0);
            getTaskViewAt(taskViewCount - 1).getHitRect(this.mTaskViewDeadZoneRect);
            this.mTaskViewDeadZoneRect.union(taskViewAt.getLeft(), taskViewAt.getTop(), taskViewAt.getRight(), taskViewAt.getBottom());
        }
    }

    private void updateEmptyStateUi(boolean z) {
        boolean z2 = getWidth() > 0 && getHeight() > 0;
        if (z && z2) {
            this.mEmptyTextLayout = null;
            this.mLastMeasureSize.set(getWidth(), getHeight());
        }
        if (this.mShowEmptyMessage && z2 && this.mEmptyTextLayout == null) {
            int i = this.mLastMeasureSize.x;
            int i2 = this.mEmptyMessagePadding;
            int i3 = (i - i2) - i2;
            CharSequence charSequence = this.mEmptyMessage;
            StaticLayout build = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.mEmptyMessagePaint, i3).setAlignment(Layout.Alignment.ALIGN_CENTER).build();
            this.mEmptyTextLayout = build;
            int intrinsicHeight = this.mEmptyIcon.getIntrinsicHeight() + build.getHeight() + this.mEmptyMessagePadding;
            Point point = this.mLastMeasureSize;
            int i4 = (point.y - intrinsicHeight) / 2;
            int intrinsicWidth = (point.x - this.mEmptyIcon.getIntrinsicWidth()) / 2;
            Drawable drawable = this.mEmptyIcon;
            drawable.setBounds(intrinsicWidth, i4, drawable.getIntrinsicWidth() + intrinsicWidth, this.mEmptyIcon.getIntrinsicHeight() + i4);
        }
    }

    private void updateEnabledOverlays() {
        int nextPage = this.mOverlayEnabled ? getNextPage() : -1;
        int taskViewCount = getTaskViewCount();
        int i = this.mTaskViewStartIndex;
        while (i < this.mTaskViewStartIndex + taskViewCount) {
            getTaskViewAtByAbsoluteIndex(i).setOverlayEnabled(i == nextPage);
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateOrientationHandler() {
        PagedOrientationHandler orientationHandler = this.mOrientationState.getOrientationHandler();
        this.mOrientationHandler = orientationHandler;
        boolean recentsRtlSetting = orientationHandler.getRecentsRtlSetting(getResources());
        this.mIsRtl = recentsRtlSetting;
        setLayoutDirection(recentsRtlSetting ? 1 : 0);
        this.mClearAllButton.setLayoutDirection(!this.mIsRtl ? 1 : 0);
        this.mClearAllButton.setRotation(this.mOrientationHandler.getDegreesRotated());
        this.mActivity.getDragLayer().recreateControllers();
        this.mActionsView.updateHiddenFlags(4, !this.mOrientationState.canRecentsActivityRotate() && (this.mOrientationState.getTouchRotation() != 0 || this.mOrientationState.getRecentsActivityRotation() != 0) == true);
        resetPaddingFromTaskSize();
        requestLayout();
        setCurrentPage(this.mCurrentPage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePageOffsets() {
        float width = this.mAdjacentPageOffset * getWidth();
        float interpolation = Interpolators.ACCEL_0_75.getInterpolation(this.mTaskModalness) * getWidth();
        if (this.mIsRtl) {
            width = -width;
            interpolation = -interpolation;
        }
        int childCount = getChildCount();
        int i = this.mRunningTaskId;
        TaskView taskView = (i == -1 || !this.mRunningTaskTileHidden) ? null : getTaskView(i);
        int indexOfChild = taskView != null ? indexOfChild(taskView) : -1;
        int currentPage = getCurrentPage();
        int i2 = 0;
        while (i2 < childCount) {
            float f = RecentsState.NO_OFFSET;
            float f2 = i2 == indexOfChild ? 0.0f : i2 < indexOfChild ? -width : width;
            if (i2 != currentPage) {
                f = i2 < currentPage ? -interpolation : interpolation;
            }
            getChildAt(i2).setTranslationX(f2 + f);
            i2++;
        }
        updateCurveProperties();
    }

    private void updateTaskStackListenerState() {
        boolean z = this.mOverviewStateEnabled && isAttachedToWindow() && getWindowVisibility() == 0;
        if (z != this.mHandleTaskStackChanges) {
            this.mHandleTaskStackChanges = z;
            if (z) {
                reloadIfNeeded();
            }
        }
    }

    private void updateTaskStartIndex(View view) {
        if ((view instanceof TaskView) || (view instanceof ClearAllButton)) {
            return;
        }
        int childCount = getChildCount();
        this.mTaskViewStartIndex = 0;
        while (true) {
            int i = this.mTaskViewStartIndex;
            if (i >= childCount || (getChildAt(i) instanceof TaskView)) {
                return;
            } else {
                this.mTaskViewStartIndex++;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addChildrenForAccessibility(ArrayList arrayList) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            arrayList.add(getChildAt(childCount));
        }
    }

    public void animateUpRunningTaskIconScale() {
        animateUpRunningTaskIconScale(RecentsState.NO_OFFSET);
    }

    public void applyLoadPlan(final ArrayList arrayList) {
        PendingAnimation pendingAnimation = this.mPendingAnimation;
        if (pendingAnimation != null) {
            pendingAnimation.mEndListeners.add(new Consumer() { // from class: c.a.b.d2.h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RecentsView.this.d(arrayList, (PendingAnimation.EndState) obj);
                }
            });
            return;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            removeTasksViewsAndClearAllButton();
            onTaskStackUpdated();
            return;
        }
        unloadVisibleTaskData();
        int i = this.mIgnoreResetTaskId;
        TaskView taskView = i == -1 ? null : getTaskView(i);
        int size = arrayList.size();
        if (getTaskViewCount() != size) {
            if (indexOfChild(this.mClearAllButton) != -1) {
                removeView(this.mClearAllButton);
            }
            for (int taskViewCount = getTaskViewCount(); taskViewCount < size; taskViewCount++) {
                addView(this.mTaskViewPool.getView());
            }
            while (getTaskViewCount() > size) {
                removeView(getChildAt(getChildCount() - 1));
            }
            if (size > 0) {
                addView(this.mClearAllButton);
            }
        }
        for (int i2 = size - 1; i2 >= 0; i2--) {
            ((TaskView) getChildAt(((size - i2) - 1) + this.mTaskViewStartIndex)).bind((Task) arrayList.get(i2), this.mOrientationState);
        }
        if (this.mNextPage == -1) {
            TaskView runningTaskView = getRunningTaskView();
            if (runningTaskView != null) {
                setCurrentPage(indexOfChild(runningTaskView));
            } else if (getTaskViewCount() > 0) {
                setCurrentPage(indexOfChild(getTaskViewAt(0)));
            }
        }
        int i3 = this.mIgnoreResetTaskId;
        if (i3 != -1 && getTaskView(i3) != taskView) {
            this.mIgnoreResetTaskId = -1;
        }
        resetTaskVisuals();
        onTaskStackUpdated();
        updateEnabledOverlays();
    }

    public /* synthetic */ void c(int i) {
        setLayoutRotation(i, this.mOrientationState.getDisplayRotation());
        this.mActivity.getDragLayer().recreateControllers();
        rotateAllChildTasks();
        setRecentsChangedOrientation(false).start();
    }

    public void clearIgnoreResetTask(int i) {
        if (this.mIgnoreResetTaskId == i) {
            this.mIgnoreResetTaskId = -1;
        }
    }

    @Override // com.android.launcher3.PagedView
    public int computeMaxScroll() {
        return getTaskViewCount() > 0 ? this.mDisallowScrollToClearAll ? this.mIsRtl ? getScrollForPage(this.mTaskViewStartIndex) : getScrollForPage(indexOfChild(getTaskViewAt(getTaskViewCount() - 1))) : this.mIsRtl ? getScrollForPage(this.mTaskViewStartIndex) : getScrollForPage(indexOfChild(getTaskViewAt(getTaskViewCount() - 1)) + 1) : super.computeMaxScroll();
    }

    @Override // com.android.launcher3.PagedView
    public int computeMinScroll() {
        return getTaskViewCount() > 0 ? this.mDisallowScrollToClearAll ? this.mIsRtl ? getScrollForPage(indexOfChild(getTaskViewAt(getTaskViewCount() - 1))) : getScrollForPage(this.mTaskViewStartIndex) : this.mIsRtl ? getScrollForPage(indexOfChild(getTaskViewAt(getTaskViewCount() - 1)) + 1) : getScrollForPage(this.mTaskViewStartIndex) : super.computeMinScroll();
    }

    @Override // com.android.launcher3.PagedView
    public boolean computeScrollHelper() {
        boolean computeScrollHelper = super.computeScrollHelper();
        updateCurveProperties();
        boolean z = false;
        if (computeScrollHelper || isHandlingTouch()) {
            if (computeScrollHelper && this.mScroller.mScroller.mCurrVelocity > this.mFastFlingVelocity) {
                z = true;
            }
            loadVisibleTaskData();
        }
        this.mModel.getThumbnailCache().getHighResLoadingState().setFlingingFast(z);
        return computeScrollHelper;
    }

    public AnimatorSet createAdjacentPageAnimForTaskLaunch(TaskView taskView) {
        AnimatorSet animatorSet = new AnimatorSet();
        int indexOfChild = indexOfChild(taskView);
        int currentPage = getCurrentPage();
        boolean z = indexOfChild == currentPage;
        float maxScaleForFullScreen = getMaxScaleForFullScreen();
        if (z) {
            RecentsView recentsView = taskView.getRecentsView();
            animatorSet.play(ObjectAnimator.ofFloat(recentsView, LauncherAnimUtils.SCALE_PROPERTY, maxScaleForFullScreen));
            animatorSet.play(ObjectAnimator.ofFloat(recentsView, FULLSCREEN_PROGRESS, 1.0f));
        } else {
            float curveScale = (maxScaleForFullScreen - taskView.getCurveScale()) * taskView.getWidth();
            View pageAt = getPageAt(currentPage);
            Property property = ViewGroup.TRANSLATION_X;
            float[] fArr = new float[1];
            fArr[0] = this.mIsRtl ? -curveScale : curveScale;
            animatorSet.play(ObjectAnimator.ofFloat(pageAt, (Property<View, Float>) property, fArr));
            int i = (currentPage - indexOfChild) + currentPage;
            if (i >= 0 && i < getPageCount()) {
                ArrayList arrayList = new ArrayList();
                if (this.mIsRtl) {
                    curveScale = -curveScale;
                }
                arrayList.add(PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, curveScale));
                arrayList.add(PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, 1.0f));
                arrayList.add(PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, 1.0f));
                animatorSet.play(ObjectAnimator.ofPropertyValuesHolder(getPageAt(i), (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[arrayList.size()])));
            }
        }
        return animatorSet;
    }

    public PendingAnimation createAllTasksDismissAnimation(long j) {
        PendingAnimation pendingAnimation = new PendingAnimation(j);
        int taskViewCount = getTaskViewCount();
        for (int i = 0; i < taskViewCount; i++) {
            addDismissedTaskAnimations(getTaskViewAt(i), j, pendingAnimation);
        }
        this.mPendingAnimation = pendingAnimation;
        pendingAnimation.mEndListeners.add(new Consumer() { // from class: c.a.b.d2.t
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsView.this.e((PendingAnimation.EndState) obj);
            }
        });
        return pendingAnimation;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
    
        if (r19.mIsRtl != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
    
        r6 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007d, code lost:
    
        r5 = r5 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
    
        r6 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0078, code lost:
    
        if (r19.mIsRtl != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.launcher3.anim.PendingAnimation createTaskDismissAnimation(final com.android.quickstep.views.TaskView r20, boolean r21, boolean r22, long r23) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.views.RecentsView.createTaskDismissAnimation(com.android.quickstep.views.TaskView, boolean, boolean, long):com.android.launcher3.anim.PendingAnimation");
    }

    public PendingAnimation createTaskLaunchAnimation(final TaskView taskView, long j, Interpolator interpolator) {
        if (getTaskViewCount() == 0) {
            return new PendingAnimation(j);
        }
        final int sysUiStatusNavFlags = taskView.getThumbnail().getSysUiStatusNavFlags();
        final boolean[] zArr = {false};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.b.d2.u
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RecentsView.this.g(sysUiStatusNavFlags, taskView, zArr, valueAnimator);
            }
        });
        AnimatorSet createAdjacentPageAnimForTaskLaunch = createAdjacentPageAnimForTaskLaunch(taskView);
        DepthController depthController = getDepthController();
        if (depthController != null) {
            createAdjacentPageAnimForTaskLaunch.play(ObjectAnimator.ofFloat(depthController, DepthController.DEPTH, LauncherState.BACKGROUND_APP.getDepth(this.mActivity)));
        }
        createAdjacentPageAnimForTaskLaunch.play(ofFloat);
        createAdjacentPageAnimForTaskLaunch.setInterpolator(interpolator);
        PendingAnimation pendingAnimation = new PendingAnimation(j);
        this.mPendingAnimation = pendingAnimation;
        pendingAnimation.add(createAdjacentPageAnimForTaskLaunch);
        this.mPendingAnimation.mEndListeners.add(new Consumer() { // from class: c.a.b.d2.n
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsView.this.i(taskView, (PendingAnimation.EndState) obj);
            }
        });
        return this.mPendingAnimation;
    }

    public /* synthetic */ void d(ArrayList arrayList, PendingAnimation.EndState endState) {
        applyLoadPlan(arrayList);
    }

    @Override // com.android.launcher3.PagedView
    public void determineScrollingStart(MotionEvent motionEvent, float f) {
        if (isModal()) {
            return;
        }
        super.determineScrollingStart(motionEvent, f);
    }

    public void dismissTask(TaskView taskView, boolean z, boolean z2) {
        runDismissAnimation(createTaskDismissAnimation(taskView, z, z2, 300L));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return snapToPageRelative(getPageCount(), this.mIsRtl ? 1 : -1, false);
            }
            if (keyCode == 22) {
                return snapToPageRelative(getPageCount(), this.mIsRtl ? -1 : 1, false);
            }
            if (keyCode == 61) {
                return snapToPageRelative(getTaskViewCount(), keyEvent.isShiftPressed() ? -1 : 1, keyEvent.isAltPressed());
            }
            if (keyCode == 67 || keyCode == 112) {
                dismissCurrentTask();
                return true;
            }
            if (keyCode == 158 && keyEvent.isAltPressed()) {
                dismissCurrentTask();
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        maybeDrawEmptyMessage(canvas);
        super.draw(canvas);
    }

    public /* synthetic */ void e(PendingAnimation.EndState endState) {
        if (endState.isSuccess) {
            ActivityManagerWrapper.getInstance().removeAllRecentTasks();
            removeTasksViewsAndClearAllButton();
            startHome();
        }
        this.mPendingAnimation = null;
    }

    public void finishRecentsAnimation(boolean z, final Runnable runnable) {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finish(z, new Runnable() { // from class: c.a.b.d2.r
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsView.this.j(runnable);
                }
            });
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public /* synthetic */ void g(int i, TaskView taskView, boolean[] zArr, ValueAnimator valueAnimator) {
        SystemUiController systemUiController = this.mActivity.getSystemUiController();
        if (valueAnimator.getAnimatedFraction() <= 0.85f) {
            i = 0;
        }
        systemUiController.updateUiState(3, i);
        onTaskLaunchAnimationUpdate(valueAnimator.getAnimatedFraction(), taskView);
        boolean z = valueAnimator.getAnimatedFraction() >= 0.5f;
        if (z != zArr[0]) {
            zArr[0] = z;
            performHapticFeedback(1, 1);
        }
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ListView.class.getName();
    }

    public ClearAllButton getClearAllButton() {
        return this.mClearAllButton;
    }

    public float getContentAlpha() {
        return this.mContentAlpha;
    }

    @Override // com.android.launcher3.PagedView
    public String getCurrentPageDescription() {
        return "";
    }

    public TaskView getCurrentPageTaskView() {
        return getTaskViewAtByAbsoluteIndex(getCurrentPage());
    }

    public DepthController getDepthController() {
        return null;
    }

    public Consumer getEventDispatcher(final float f) {
        final float degreesRotated = f == RecentsState.NO_OFFSET ? this.mOrientationHandler.getDegreesRotated() : -f;
        return degreesRotated == RecentsState.NO_OFFSET ? new Consumer() { // from class: c.a.b.d2.z
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsView.this.k((MotionEvent) obj);
            }
        } : new Consumer() { // from class: c.a.b.d2.p
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsView.this.l(f, degreesRotated, (MotionEvent) obj);
            }
        };
    }

    public TransformParams getLiveTileParams(boolean z) {
        return null;
    }

    public float getMaxScaleForFullScreen() {
        getTaskSize(this.mTempRect);
        return getPagedViewOrientedState().getFullScreenScaleAndPivot(this.mTempRect, this.mActivity.getDeviceProfile(), this.mTempPointF);
    }

    public void getModalTaskSize(Rect rect) {
        BaseActivityInterface baseActivityInterface = this.mSizeStrategy;
        StatefulActivity statefulActivity = this.mActivity;
        baseActivityInterface.calculateModalTaskSize(statefulActivity, statefulActivity.getDeviceProfile(), rect);
    }

    public TaskView getNextPageTaskView() {
        return getTaskViewAtByAbsoluteIndex(getNextPage());
    }

    public TaskView getNextTaskView() {
        return getTaskViewAtByAbsoluteIndex(getRunningTaskIndex() + 1);
    }

    public float getPageOffsetScale() {
        return Math.max(getWidth(), 1);
    }

    public PagedOrientationHandler getPagedOrientationHandler() {
        return this.mOrientationHandler;
    }

    public RecentsOrientedState getPagedViewOrientedState() {
        return this.mOrientationState;
    }

    public int getRunningTaskIndex() {
        return getTaskIndexForId(this.mRunningTaskId);
    }

    public TaskView getRunningTaskView() {
        return getTaskView(this.mRunningTaskId);
    }

    public int getScrollOffset() {
        return getScrollOffset(getRunningTaskIndex());
    }

    public OverScroller getScroller() {
        return this.mScroller;
    }

    public BaseActivityInterface getSizeStrategy() {
        return this.mSizeStrategy;
    }

    public int getTaskIndexForId(int i) {
        TaskView taskView = getTaskView(i);
        if (taskView == null) {
            return -1;
        }
        return indexOfChild(taskView);
    }

    public void getTaskSize(Rect rect) {
        BaseActivityInterface baseActivityInterface = this.mSizeStrategy;
        StatefulActivity statefulActivity = this.mActivity;
        baseActivityInterface.calculateTaskSize(statefulActivity, statefulActivity.getDeviceProfile(), rect, this.mOrientationHandler);
    }

    public TaskView getTaskView(int i) {
        for (int i2 = 0; i2 < getTaskViewCount(); i2++) {
            TaskView taskViewAt = getTaskViewAt(i2);
            if (taskViewAt.getTask() != null && taskViewAt.getTask().key != null && taskViewAt.getTask().key.id == i) {
                return taskViewAt;
            }
        }
        return null;
    }

    public TaskView getTaskViewAt(int i) {
        return getTaskViewAtByAbsoluteIndex(i + this.mTaskViewStartIndex);
    }

    public int getTaskViewCount() {
        int childCount = getChildCount() - this.mTaskViewStartIndex;
        return indexOfChild(this.mClearAllButton) != -1 ? childCount - 1 : childCount;
    }

    public TaskView getTaskViewNearestToCenterOfScreen() {
        return getTaskViewAtByAbsoluteIndex(getPageNearestToCenterOfScreen());
    }

    public int getTaskViewStartIndex() {
        return this.mTaskViewStartIndex;
    }

    public /* synthetic */ void h(TaskView taskView, Boolean bool) {
        onTaskLaunchAnimationEnd(bool.booleanValue());
        if (bool.booleanValue()) {
            return;
        }
        taskView.notifyTaskLaunchFailed(TAG);
    }

    public boolean hasRecentsExtraCard() {
        return false;
    }

    public /* synthetic */ void i(final TaskView taskView, PendingAnimation.EndState endState) {
        if (endState.isSuccess) {
            taskView.launchTask(false, new Consumer() { // from class: c.a.b.d2.w
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RecentsView.this.h(taskView, (Boolean) obj);
                }
            }, getHandler());
            Task task = taskView.getTask();
            if (task != null) {
                this.mActivity.getUserEventDispatcher().logTaskLaunchOrDismiss(endState.logAction, 2, indexOfChild(taskView), TaskUtils.getLaunchComponentKeyForTask(task.key));
                this.mActivity.getStatsLogManager().logger().withItemInfo(taskView.getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_LAUNCH_SWIPE_DOWN);
            }
        } else {
            onTaskLaunchAnimationEnd(false);
        }
        this.mPendingAnimation = null;
    }

    public void init(OverviewActionsView overviewActionsView) {
        this.mActionsView = overviewActionsView;
        overviewActionsView.updateHiddenFlags(8, getTaskViewCount() == 0);
    }

    public boolean isClearAllHidden() {
        return this.mClearAllButton.getAlpha() != 1.0f;
    }

    @Override // com.android.launcher3.PagedView
    public boolean isPageOrderFlipped() {
        return true;
    }

    public boolean isRtl() {
        return this.mIsRtl;
    }

    public boolean isTaskIconScaledDown(TaskView taskView) {
        return this.mRunningTaskIconScaledDown && getRunningTaskView() == taskView;
    }

    public boolean isTaskViewVisible(TaskView taskView) {
        return Math.abs(indexOfChild(taskView) - getNextPage()) <= 1;
    }

    public /* synthetic */ void j(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
            setCurrentTask(-1);
        }
    }

    public /* synthetic */ void k(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
    }

    public /* synthetic */ void l(float f, float f2, MotionEvent motionEvent) {
        if (f != RecentsState.NO_OFFSET && this.mOrientationState.isMultipleOrientationSupportedByDevice() && !this.mOrientationState.getOrientationHandler().isLayoutNaturalToLauncher()) {
            this.mOrientationState.flipVertical(motionEvent);
            super.onTouchEvent(motionEvent);
            this.mOrientationState.flipVertical(motionEvent);
        } else {
            float f3 = -f2;
            this.mOrientationState.transformEvent(f3, motionEvent, true);
            super.onTouchEvent(motionEvent);
            this.mOrientationState.transformEvent(f3, motionEvent, false);
        }
    }

    public void loadVisibleTaskData() {
        if (!this.mOverviewStateEnabled || this.mTaskListChangeId == -1) {
            return;
        }
        int pageNearestToCenterOfScreen = getPageNearestToCenterOfScreen();
        int childCount = getChildCount();
        int max = Math.max(0, pageNearestToCenterOfScreen - 2);
        int min = Math.min(pageNearestToCenterOfScreen + 2, childCount - 1);
        for (int i = 0; i < getTaskViewCount(); i++) {
            TaskView taskViewAt = getTaskViewAt(i);
            Task task = taskViewAt.getTask();
            int indexOfChild = indexOfChild(taskViewAt);
            boolean z = max <= indexOfChild && indexOfChild <= min;
            if (!z) {
                if (this.mHasVisibleTaskData.get(task.key.id)) {
                    taskViewAt.onTaskListVisibilityChanged(false);
                }
                this.mHasVisibleTaskData.delete(task.key.id);
            } else if (task != this.mTmpRunningTask) {
                if (!this.mHasVisibleTaskData.get(task.key.id)) {
                    taskViewAt.onTaskListVisibilityChanged(true);
                }
                this.mHasVisibleTaskData.put(task.key.id, z);
            }
        }
    }

    public /* synthetic */ void m(boolean z) {
        RecentsOrientedState recentsOrientedState = this.mOrientationState;
        if (recentsOrientedState != null) {
            recentsOrientedState.setMultiWindowMode(z);
            setLayoutRotation(this.mOrientationState.getTouchRotation(), this.mOrientationState.getDisplayRotation());
            rotateAllChildTasks();
        }
        if (z || !this.mOverviewStateEnabled) {
            return;
        }
        reloadIfNeeded();
    }

    public void maybeDrawEmptyMessage(Canvas canvas) {
        if (!this.mShowEmptyMessage || this.mEmptyTextLayout == null) {
            return;
        }
        this.mTempRect.set(getPaddingLeft() + this.mInsets.left, getPaddingTop() + this.mInsets.top, getPaddingRight() + this.mInsets.right, getPaddingBottom() + this.mInsets.bottom);
        canvas.save();
        int scrollX = getScrollX();
        Rect rect = this.mTempRect;
        canvas.translate(((rect.left - rect.right) / 2) + scrollX, (rect.top - rect.bottom) / 2);
        this.mEmptyIcon.draw(canvas);
        canvas.translate(this.mEmptyMessagePadding, this.mEmptyIcon.getBounds().bottom + this.mEmptyMessagePadding);
        this.mEmptyTextLayout.draw(canvas);
        canvas.restore();
    }

    @Override // com.android.launcher3.PagedView
    public void notifyPageSwitchListener(int i) {
        super.notifyPageSwitchListener(i);
        loadVisibleTaskData();
        updateEnabledOverlays();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateTaskStackListenerState();
        this.mModel.getThumbnailCache().getHighResLoadingState().addCallback(this);
        this.mActivity.addMultiWindowModeChangedListener(this.mMultiWindowModeChangedListener);
        ActivityManagerWrapper.getInstance().registerTaskStackListener(this.mTaskStackListener);
        this.mSyncTransactionApplier = new SurfaceTransactionApplier(this);
        ((RecentsModel) RecentsModel.INSTANCE.b(getContext())).addThumbnailChangeListener(this);
        this.mIdp.mChangeListeners.add(this);
        this.mIPinnedStackAnimationListener.setActivity(this.mActivity);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(getContext())).setPinnedStackAnimationListener(this.mIPinnedStackAnimationListener);
        this.mOrientationState.initListeners();
        SplitScreenBounds.INSTANCE.addOnChangeListener(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mOrientationState.setActivityConfiguration(configuration)) {
            updateOrientationHandler();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateTaskStackListenerState();
        this.mModel.getThumbnailCache().getHighResLoadingState().removeCallback(this);
        this.mActivity.removeMultiWindowModeChangedListener(this.mMultiWindowModeChangedListener);
        ActivityManagerWrapper.getInstance().unregisterTaskStackListener(this.mTaskStackListener);
        this.mSyncTransactionApplier = null;
        ((RecentsModel) RecentsModel.INSTANCE.b(getContext())).removeThumbnailChangeListener(this);
        this.mIdp.mChangeListeners.remove(this);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(getContext())).setPinnedStackAnimationListener(null);
        SplitScreenBounds.INSTANCE.removeOnChangeListener(this);
        this.mIPinnedStackAnimationListener.setActivity(null);
        this.mOrientationState.destroyListeners();
    }

    public void onDigitalWellbeingToastShown() {
        if (this.mDwbToastShown) {
            return;
        }
        this.mDwbToastShown = true;
        this.mActivity.getUserEventDispatcher().logActionTip(0, 5);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z || getChildCount() <= 0) {
            return;
        }
        if (i != 1) {
            if (i == 2) {
                setCurrentPage(0);
                return;
            } else if (i != 17 && i != 66) {
                return;
            }
        }
        setCurrentPage(getChildCount() - 1);
    }

    public void onGestureAnimationEnd() {
        if (this.mOrientationState.setGestureActive(false)) {
            updateOrientationHandler();
        }
        setOnScrollChangeListener(null);
        setEnableFreeScroll(true);
        setEnableDrawingLiveTile(true);
        if (!FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            setRunningTaskViewShowScreenshot(true);
        }
        setRunningTaskHidden(false);
        animateUpRunningTaskIconScale();
        animateActionsViewIn();
    }

    public void onGestureAnimationStart(int i) {
        if (this.mOrientationState.setGestureActive(true)) {
            updateOrientationHandler();
        }
        showCurrentTask(i);
        setEnableFreeScroll(false);
        setEnableDrawingLiveTile(false);
        setRunningTaskHidden(true);
        setRunningTaskIconScaledDown(true);
        this.mActionsView.updateHiddenFlags(16, true);
    }

    @Override // com.android.quickstep.TaskThumbnailCache.HighResLoadingState.HighResLoadingStateChangedCallback
    public void onHighResLoadingStateChanged(boolean z) {
        TaskView taskView;
        for (int i = 0; i < this.mHasVisibleTaskData.size(); i++) {
            if (this.mHasVisibleTaskData.valueAt(i) && (taskView = getTaskView(this.mHasVisibleTaskData.keyAt(i))) != null) {
                taskView.onTaskListVisibilityChanged(true);
            }
        }
    }

    @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
    public void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile) {
        if ((i & 2) == 0) {
            return;
        }
        this.mModel.getIconCache().clear();
        unloadVisibleTaskData();
        loadVisibleTaskData();
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        int taskViewCount = getTaskViewCount();
        accessibilityEvent.setScrollable(taskViewCount > 0);
        if (accessibilityEvent.getEventType() == 4096) {
            int[] visibleChildrenRange = getVisibleChildrenRange();
            accessibilityEvent.setFromIndex(taskViewCount - visibleChildrenRange[1]);
            accessibilityEvent.setToIndex(taskViewCount - visibleChildrenRange[0]);
            accessibilityEvent.setItemCount(taskViewCount);
        }
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getTaskViewCount(), false, 0));
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateEmptyStateUi(z);
        getTaskSize(this.mTempRect);
        getPagedViewOrientedState().getFullScreenScaleAndPivot(this.mTempRect, this.mActivity.getDeviceProfile(), this.mTempPointF);
        setPivotX(this.mTempPointF.x);
        setPivotY(this.mTempPointF.y);
        setTaskModalness(this.mTaskModalness);
        updatePageOffsets();
        setImportantForAccessibility(isModal() ? 2 : 0);
    }

    @Override // com.android.launcher3.PagedView
    public boolean onOverscroll(int i) {
        if (i > 0 && !this.mIsRtl) {
            return false;
        }
        if (i >= 0 || !this.mIsRtl) {
            return super.onOverscroll(i);
        }
        return false;
    }

    @Override // com.android.launcher3.PagedView
    public void onPageBeginTransition() {
        super.onPageBeginTransition();
        this.mActionsView.updateDisabledFlags(1, true);
    }

    @Override // com.android.launcher3.PagedView
    public void onPageEndTransition() {
        super.onPageEndTransition();
        if (isClearAllHidden()) {
            this.mActionsView.updateDisabledFlags(1, false);
        }
        if (getNextPage() > 0) {
            setSwipeDownShouldLaunchApp(true);
        }
    }

    @Override // com.android.quickstep.util.SplitScreenBounds.OnChangeListener
    public void onSecondaryWindowBoundsChanged() {
        setInsets(this.mInsets);
        requestLayout();
    }

    public void onSwipeUpAnimationSuccess() {
        if (getRunningTaskView() != null) {
            animateUpRunningTaskIconScale((FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && this.mLiveTileOverlayAttached) ? LiveTileOverlay.INSTANCE.cancelIconAnimation() : RecentsState.NO_OFFSET);
        }
        setSwipeDownShouldLaunchApp(true);
    }

    @Override // com.android.quickstep.RecentsModel.TaskVisualsChangeListener
    public void onTaskIconChanged(String str, UserHandle userHandle) {
        Task.TaskKey taskKey;
        for (int i = 0; i < getTaskViewCount(); i++) {
            TaskView taskViewAt = getTaskViewAt(i);
            Task task = taskViewAt.getTask();
            if (task != null && (taskKey = task.key) != null && str.equals(taskKey.getPackageName()) && task.key.userId == userHandle.getIdentifier()) {
                task.icon = null;
                if (taskViewAt.getIconView().getDrawable() != null) {
                    taskViewAt.onTaskListVisibilityChanged(true);
                }
            }
        }
    }

    public void onTaskLaunchAnimationEnd(boolean z) {
        if (z) {
            resetTaskVisuals();
        }
    }

    public void onTaskLaunchAnimationUpdate(float f, TaskView taskView) {
    }

    public void onTaskLaunched(Task task) {
    }

    public void onTaskStackUpdated() {
        updateEmptyMessage();
    }

    @Override // com.android.quickstep.RecentsModel.TaskVisualsChangeListener
    public Task onTaskThumbnailChanged(int i, ThumbnailData thumbnailData) {
        TaskView taskView;
        if (!this.mHandleTaskStackChanges || (taskView = getTaskView(i)) == null) {
            return null;
        }
        Task task = taskView.getTask();
        taskView.getThumbnail().setThumbnail(task, thumbnailData);
        return task;
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            if (!isHandlingTouch() && !isModal()) {
                if (this.mShowEmptyMessage) {
                    this.mTouchDownToStartHome = true;
                } else {
                    updateDeadZoneRects();
                    boolean z = this.mClearAllButton.getAlpha() == 1.0f && this.mClearAllButtonDeadZoneRect.contains(x, y);
                    boolean z2 = (motionEvent.getEdgeFlags() & 256) != 0;
                    if (!z && !z2 && !this.mTaskViewDeadZoneRect.contains(getScrollX() + x, y)) {
                        this.mTouchDownToStartHome = true;
                    }
                }
            }
            this.mDownX = x;
            this.mDownY = y;
        } else if (action == 1) {
            if (this.mTouchDownToStartHome) {
                startHome();
            }
            this.mTouchDownToStartHome = false;
        } else if (action != 2) {
            if (action == 3) {
                this.mTouchDownToStartHome = false;
            }
        } else if (this.mTouchDownToStartHome && (isHandlingTouch() || Utilities.squaredHypot(this.mDownX - x, this.mDownY - y) > this.mSquaredTouchSlop)) {
            this.mTouchDownToStartHome = false;
        }
        return isHandlingTouch() || shouldStealTouchFromSiblingsBelow(motionEvent);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        view.setAlpha(this.mContentAlpha);
        view.setLayoutDirection(!this.mIsRtl ? 1 : 0);
        updateTaskStartIndex(view);
        this.mActionsView.updateHiddenFlags(8, false);
        updateEmptyMessage();
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof TaskView) {
            TaskView taskView = (TaskView) view;
            this.mHasVisibleTaskData.delete(taskView.getTask().key.id);
            ViewPool viewPool = this.mTaskViewPool;
            Objects.requireNonNull(viewPool);
            taskView.onRecycle();
            int i = viewPool.mCurrentSize;
            Object[] objArr = viewPool.mPool;
            if (i < objArr.length) {
                objArr[i] = taskView;
                viewPool.mCurrentSize = i + 1;
            }
            this.mActionsView.updateHiddenFlags(8, getTaskViewCount() == 0);
        }
        updateTaskStartIndex(view);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        updateTaskStackListenerState();
    }

    public void redrawLiveTile(boolean z) {
    }

    public void reloadIfNeeded() {
        if (this.mModel.isTaskListValid(this.mTaskListChangeId)) {
            return;
        }
        this.mTaskListChangeId = this.mModel.getTasks(new C0270b(this));
    }

    public void reset() {
        setCurrentTask(-1);
        this.mIgnoreResetTaskId = -1;
        this.mTaskListChangeId = -1;
        this.mRecentsAnimationController = null;
        this.mRecentsAnimationTargets = null;
        unloadVisibleTaskData();
        setCurrentPage(0);
        this.mDwbToastShown = false;
        this.mActivity.getSystemUiController().updateUiState(3, 0);
        LayoutUtils.setViewEnabled(this.mActionsView, true);
        if (this.mOrientationState.setGestureActive(false)) {
            updateOrientationHandler();
        }
    }

    public void resetModalVisuals() {
        TaskView currentPageTaskView = getCurrentPageTaskView();
        if (currentPageTaskView != null) {
            currentPageTaskView.getThumbnail().getTaskOverlay().resetModalVisuals();
        }
    }

    public void resetTaskVisuals() {
        for (int taskViewCount = getTaskViewCount() - 1; taskViewCount >= 0; taskViewCount--) {
            TaskView taskViewAt = getTaskViewAt(taskViewCount);
            if (this.mIgnoreResetTaskId != taskViewAt.getTask().key.id) {
                taskViewAt.resetViewTransforms();
                taskViewAt.setStableAlpha(this.mContentAlpha);
                taskViewAt.setFullscreenProgress(this.mFullscreenProgress);
                taskViewAt.setModalness(this.mTaskModalness);
            }
        }
        boolean z = this.mRunningTaskTileHidden;
        if (z) {
            setRunningTaskHidden(z);
        }
        if (this.mIgnoreResetTaskId != this.mRunningTaskId) {
            applyRunningTaskIconScale();
        }
        updateCurveProperties();
        loadVisibleTaskData();
        setTaskModalness(RecentsState.NO_OFFSET);
    }

    public void runDismissAnimation(final PendingAnimation pendingAnimation) {
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        createPlaybackController.dispatchOnStart();
        createPlaybackController.mEndAction = new Runnable() { // from class: c.a.b.d2.v
            @Override // java.lang.Runnable
            public final void run() {
                PendingAnimation.this.finish(true, 3);
            }
        };
        createPlaybackController.mAnimationPlayer.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        createPlaybackController.start();
    }

    public void setContentAlpha(float f) {
        if (f == this.mContentAlpha) {
            return;
        }
        float boundToRange = Utilities.boundToRange(f, RecentsState.NO_OFFSET, 1.0f);
        this.mContentAlpha = boundToRange;
        for (int taskViewCount = getTaskViewCount() - 1; taskViewCount >= 0; taskViewCount--) {
            TaskView taskViewAt = getTaskViewAt(taskViewCount);
            if (!this.mRunningTaskTileHidden || taskViewAt.getTask().key.id != this.mRunningTaskId) {
                taskViewAt.setStableAlpha(boundToRange);
            }
        }
        this.mClearAllButton.setContentAlpha(this.mContentAlpha);
        int round = Math.round(255.0f * boundToRange);
        this.mEmptyMessagePaint.setAlpha(round);
        this.mEmptyIcon.setAlpha(round);
        this.mActionsView.getContentAlpha().setValue(this.mContentAlpha);
        if (boundToRange > RecentsState.NO_OFFSET) {
            setVisibility(0);
        } else {
            if (this.mFreezeViewVisibility) {
                return;
            }
            setVisibility(8);
        }
    }

    public void setCurrentTask(int i) {
        int i2 = this.mRunningTaskId;
        if (i2 == i) {
            return;
        }
        if (i2 != -1) {
            setRunningTaskIconScaledDown(false);
            setRunningTaskViewShowScreenshot(true);
            setRunningTaskHidden(false);
        }
        this.mRunningTaskId = i;
    }

    public void setDisallowScrollToClearAll(boolean z) {
        if (this.mDisallowScrollToClearAll != z) {
            this.mDisallowScrollToClearAll = z;
            updateMinAndMaxScrollX();
        }
    }

    public void setEnableDrawingLiveTile(boolean z) {
        this.mEnableDrawingLiveTile = z;
    }

    public void setFreezeViewVisibility(boolean z) {
        if (this.mFreezeViewVisibility != z) {
            this.mFreezeViewVisibility = z;
            if (z) {
                return;
            }
            setVisibility(this.mContentAlpha > RecentsState.NO_OFFSET ? 0 : 8);
        }
    }

    public void setFullscreenProgress(float f) {
        this.mFullscreenProgress = f;
        int taskViewCount = getTaskViewCount();
        for (int i = 0; i < taskViewCount; i++) {
            getTaskViewAt(i).setFullscreenProgress(this.mFullscreenProgress);
        }
        this.mActionsView.getFullscreenAlpha().setValue(Utilities.mapToRange(f, RecentsState.NO_OFFSET, 0.1f, 1.0f, RecentsState.NO_OFFSET, Interpolators.LINEAR));
    }

    public void setIgnoreResetTask(int i) {
        this.mIgnoreResetTaskId = i;
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        this.mInsets.set(rect);
        resetPaddingFromTaskSize();
    }

    public void setLayoutRotation(int i, int i2) {
        if (this.mOrientationState.update(i, i2)) {
            updateOrientationHandler();
        }
    }

    public void setLiveTileOverlayAttached(boolean z) {
        this.mLiveTileOverlayAttached = z;
    }

    public void setModalStateEnabled(boolean z) {
    }

    public void setOnEmptyMessageUpdatedListener(OnEmptyMessageUpdatedListener onEmptyMessageUpdatedListener) {
        this.mOnEmptyMessageUpdatedListener = onEmptyMessageUpdatedListener;
    }

    public void setOverlayEnabled(boolean z) {
        if (this.mOverlayEnabled != z) {
            this.mOverlayEnabled = z;
            updateEnabledOverlays();
        }
    }

    public void setOverviewStateEnabled(boolean z) {
        this.mOverviewStateEnabled = z;
        updateTaskStackListenerState();
        this.mOrientationState.setRotationWatcherEnabled(z);
        if (z) {
            return;
        }
        this.mTmpRunningTask = null;
    }

    public void setRecentsAnimationTargets(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        this.mRecentsAnimationController = recentsAnimationController;
        this.mRecentsAnimationTargets = recentsAnimationTargets;
    }

    public AnimatorSet setRecentsChangedOrientation(boolean z) {
        getRunningTaskIndex();
        int currentPage = getCurrentPage();
        AnimatorSet animatorSet = new AnimatorSet();
        for (int i = 0; i < getTaskViewCount(); i++) {
            if (currentPage != i) {
                TaskView taskViewAt = getTaskViewAt(i);
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z ? RecentsState.NO_OFFSET : 1.0f;
                animatorSet.play(ObjectAnimator.ofFloat(taskViewAt, (Property<TaskView, Float>) property, fArr));
            }
        }
        return animatorSet;
    }

    public void setRunningTaskHidden(boolean z) {
        this.mRunningTaskTileHidden = z;
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView != null) {
            runningTaskView.setStableAlpha(z ? RecentsState.NO_OFFSET : this.mContentAlpha);
            if (z) {
                return;
            }
            W.sendCustomAccessibilityEvent(runningTaskView, 8, null);
        }
    }

    public void setRunningTaskIconScaledDown(boolean z) {
        if (this.mRunningTaskIconScaledDown != z) {
            this.mRunningTaskIconScaledDown = z;
            applyRunningTaskIconScale();
        }
    }

    public void setSwipeDownShouldLaunchApp(boolean z) {
        this.mSwipeDownShouldLaunchApp = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        OverviewActionsView overviewActionsView = this.mActionsView;
        if (overviewActionsView != null) {
            overviewActionsView.updateHiddenFlags(32, i != 0);
        }
    }

    public boolean shouldAddDummyTaskView(int i) {
        return getTaskView(i) == null;
    }

    public boolean shouldStealTouchFromSiblingsBelow(MotionEvent motionEvent) {
        return true;
    }

    public boolean shouldSwipeDownLaunchApp() {
        return this.mSwipeDownShouldLaunchApp;
    }

    public abstract boolean shouldUseMultiWindowTaskSizeStrategy();

    public void showCurrentTask(int i) {
        if (shouldAddDummyTaskView(i)) {
            boolean z = getChildCount() == 0;
            TaskView taskView = (TaskView) this.mTaskViewPool.getView();
            addView(taskView, this.mTaskViewStartIndex);
            if (z) {
                addView(this.mClearAllButton);
            }
            Task task = new Task(new Task.TaskKey(i, 0, new Intent(), new ComponentName(getContext(), getClass()), 0, 0L), null, null, "", "", 0, 0, false, true, false, false, new ActivityManager.TaskDescription(), 0, new ComponentName("", ""), false);
            this.mTmpRunningTask = task;
            taskView.bind(task, this.mOrientationState);
            measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            layout(getLeft(), getTop(), getRight(), getBottom());
        }
        boolean z2 = this.mRunningTaskTileHidden;
        setCurrentTask(i);
        setCurrentPage(getRunningTaskIndex());
        setRunningTaskViewShowScreenshot(false);
        setRunningTaskHidden(z2);
        this.mTaskListChangeId = this.mModel.getTasks(new C0270b(this));
    }

    public void showNextTask() {
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView == null) {
            if (getTaskViewCount() > 0) {
                getTaskViewAt(0).launchTask(true);
            }
        } else if (getNextTaskView() != null) {
            getNextTaskView().launchTask(true);
        } else {
            runningTaskView.launchTask(true);
        }
    }

    public abstract void startHome();

    public void switchToScreenshot(ThumbnailData thumbnailData, Runnable runnable) {
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView == null) {
            runnable.run();
            return;
        }
        runningTaskView.setShowScreenshot(true);
        if (thumbnailData != null) {
            runningTaskView.getThumbnail().setThumbnail(runningTaskView.getTask(), thumbnailData);
        } else {
            runningTaskView.getThumbnail().refresh();
        }
        ViewUtils.postDraw(runningTaskView, runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateCurveProperties() {
        if (getPageCount() != 0) {
            if (getPageAt(0).getMeasuredWidth() == 0) {
                return;
            }
            this.mOrientationHandler.getCurveProperties(this, this.mInsets, this.mScrollState);
            this.mScrollState.scrollFromEdge = this.mIsRtl ? r1.scroll : this.mMaxScroll - r1.scroll;
            int pageCount = getPageCount();
            for (int i = 0; i < pageCount; i++) {
                View pageAt = getPageAt(i);
                this.mScrollState.updateInterpolation(this.mOrientationHandler.getChildStartWithTranslation(pageAt), this.mPageSpacing);
                ((PageCallbacks) pageAt).onPageScroll(this.mScrollState);
            }
        }
    }

    public void updateEmptyMessage() {
        boolean z = true;
        boolean z2 = getTaskViewCount() == 0;
        if (this.mLastMeasureSize.x == getWidth() && this.mLastMeasureSize.y == getHeight()) {
            z = false;
        }
        if (z2 != this.mShowEmptyMessage || z) {
            setContentDescription(z2 ? this.mEmptyMessage : "");
            this.mShowEmptyMessage = z2;
            updateEmptyStateUi(z);
            invalidate();
            OnEmptyMessageUpdatedListener onEmptyMessageUpdatedListener = this.mOnEmptyMessageUpdatedListener;
            if (onEmptyMessageUpdatedListener != null) {
                onEmptyMessageUpdatedListener.onEmptyMessageUpdated(this.mShowEmptyMessage);
            }
        }
    }

    public void updateLiveTileIcon(Drawable drawable) {
        if (this.mLiveTileOverlayAttached) {
            LiveTileOverlay.INSTANCE.setIcon(drawable);
        }
    }

    public TaskView updateThumbnail(int i, ThumbnailData thumbnailData, boolean z) {
        TaskView taskView = getTaskView(i);
        if (taskView != null) {
            taskView.getThumbnail().setThumbnail(taskView.getTask(), thumbnailData, z);
        }
        return taskView;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || (this.mShowEmptyMessage && drawable == this.mEmptyIcon);
    }

    public void animateUpRunningTaskIconScale(float f) {
        this.mRunningTaskIconScaledDown = false;
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView != null) {
            runningTaskView.animateIconScaleAndDimIntoView();
            runningTaskView.setIconScaleAnimStartProgress(f);
        }
    }

    public int getScrollOffset(int i) {
        if (i == -1) {
            return 0;
        }
        return getScrollForPage(i) - this.mOrientationHandler.getPrimaryScroll(this);
    }

    public TaskView updateThumbnail(int i, ThumbnailData thumbnailData) {
        return updateThumbnail(i, thumbnailData, true);
    }
}
